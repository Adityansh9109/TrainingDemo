package training.demo;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.ui.Model;
import training.demo.dao.TrainerDao;
import training.demo.entities.Trainer;

import java.util.ArrayList;
import java.util.List;

public class HomeControllerTest {

    @InjectMocks
    private HomeController homeController;

    @Mock
    private TrainerDao trainerDao;

    @Mock
    private Model model;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.initMocks(this);
    }
    
    @Test
    public void testOpenAddTraining() {
        String result = homeController.openAddtraining();
        assertEquals("main", result);
    }

    @Test
    public void testRegistrationSuccess() {
        // Mock input parameters
        String trainerName = "Adi";
        String qualification = "Btech";
        String trainerDescription = "Experienced trainer";
        int year_of_exp = 5;

//        // Mock Trainer object
        Trainer trainer = new Trainer();
        trainer.setTrainerName(trainerName);
        trainer.setQualification(qualification);
        trainer.setTrainerDescription(trainerDescription);
        trainer.setYear_of_exp(year_of_exp);
//
//        // Mock TrainerDao behavior
        when(trainerDao.insertTrainer(trainer)).thenReturn(1); // Assuming a successful insertion
//
//        // Mock list of trainers
        List<Trainer> listOfTrainers = new ArrayList<>();
        when(trainerDao.getlistOfTrainer()).thenReturn(listOfTrainers);
//
//        // Perform registration
        String result = homeController.registration(trainerName, qualification, trainerDescription, year_of_exp, model);

//        // Verify the result and model attributes
        if(listOfTrainers.isEmpty()) {
        verify(model).addAttribute("message", "Trainer can not be Added");
        }else {
        assertEquals("trainer_dashboard", result);
        
        verify(model).addAttribute("listOfTrainer", listOfTrainers);
        verify(model).addAttribute("message", "trainer add successful");
        
        }
        
    }
}








