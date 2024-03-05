package training.demo;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.ui.Model;

import training.demo.dao.CourseDao;
import training.demo.dao.TrainerDao;
import training.demo.dao.TrainingDao;
import training.demo.entities.Course;
import training.demo.entities.Trainer;
import training.demo.entities.Training;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class TrainingControllerTest {

    @InjectMocks
    private TrainingController trainingController;

    @Mock
    private TrainingDao trainingDao;

    @Mock
    private TrainerDao trainerDao;

    @Mock
    private CourseDao courseDao;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.initMocks(this);
    }

    @Test
    public void testOpenDashboard() {
        String result = trainingController.openDashboard();
        assertEquals("main", result);
    }

    @Test
    public void testOpenFormMethod() {
        Model model = mock(Model.class);
        List<Training> listOfTraining = new ArrayList<>();
        List<Trainer> listOfTrainer = new ArrayList<>();
        List<Course> listOfCourse = new ArrayList<>();

        when(trainingDao.getListOfTraining()).thenReturn(listOfTraining);
        when(trainerDao.getlistOfTrainer()).thenReturn(listOfTrainer);
        when(courseDao.getListOfCourse()).thenReturn(listOfCourse);

        String result = trainingController.openFormMethod(model);

        assertEquals("addTraining", result);
        verify(model).addAttribute("listOfCourse", listOfCourse);
        verify(model).addAttribute("listOfTrainer", listOfTrainer);
    }

    @Test
    public void testAddTraining() {
        Model model = mock(Model.class);

        int courseId = 1;
        int trainerId = 2;
        String start_date = "2023-09-01";
        String end_date = "2023-09-30";
        double fees = 1000.0;
        double discount = 100.0;
        int batchSize = 20;

        Training training = new Training();
        training.setCourseId(courseId);
        training.setTrainerId(trainerId);
        training.setStart_date(LocalDate.parse(start_date));
        training.setEnd_date(LocalDate.parse(end_date));
        training.setFees(fees);
        training.setDiscount(discount);
        training.setBatchSize(batchSize);

        List<Training> listOfTraining = new ArrayList<>();
        List<Trainer> listOfTrainer = new ArrayList<>();
        List<Course> listOfCourse = new ArrayList<>();

        when(trainingDao.insertTraining(training)).thenReturn(1);
        when(trainingDao.getListOfTraining()).thenReturn(listOfTraining);
        when(trainerDao.getTrainer(trainerId)).thenReturn(new Trainer());
        when(courseDao.getCourse(courseId)).thenReturn(new Course());

        String result = trainingController.addTraining(courseId, trainerId, start_date, end_date, fees, discount, batchSize, model);

        assertEquals("training_dashboard", result);
        verify(model).addAttribute("message", "trainer is busy");
    }

   
}
