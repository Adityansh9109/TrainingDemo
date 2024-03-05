package training.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import training.demo.dao.TrainerDao;
import training.demo.entities.Trainer;

@Controller
public class NavigationController {

	
	
	@Autowired
	TrainerDao trainerDao;
	@GetMapping( {"/viewTrainer","/openTrainerDashBoard"})
	public String openTrainerDashBoardPage(Model model) {
	
		List<Trainer> listOfTrainer=trainerDao.getlistOfTrainer();
		model.addAttribute("listOfTrainer",listOfTrainer);
		System.out.println("not ");
		return "trainer_dashboard";
	}
	

}
