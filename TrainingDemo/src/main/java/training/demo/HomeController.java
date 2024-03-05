package training.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import training.demo.dao.TrainerDao;
import training.demo.dao.TrainerDaoException;
import training.demo.entities.Trainer;
@Controller
public class HomeController {
	@Autowired
	TrainerDao trainerDao;
	@GetMapping(value = {"/"})
	public String homepage() {
		System.out.println("Home Page or hello world");
		return "index";
	}
	

	@GetMapping(value="/home")
	public String home() {
	System.out.println("home Page");
	   return "home";
   }
	@GetMapping(value="/about")
	public String about() {
	System.out.println("about Page");
	   return "about";
   }
	@GetMapping(value="/contact")
	public String contact() {
	System.out.println("contact Page");
	   return "contact";
   }
	
	@GetMapping(value="/addtrainer")
	public String addTrainerMethod() {
		return "addTrainer";
	}
	@GetMapping(value="/trainer")
	public String trainer() {
		return "trainer";
	}
	@GetMapping(value="/training")
	public String training() {
		return "training";
	}
	
	@RequestMapping("/openDashboardTrainer")
	public String openAddtraining() {
		return "main";
	}
	
	
	
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String registration(
			@RequestParam("trainerName") String trainerName,
			@RequestParam("qualification") String qualification,
			@RequestParam("trainerDescription") String trainerDescription,
			@RequestParam("year_of_exp") int year_of_exp,
			Model model 
			
			) {
		Trainer trainer=new Trainer();
		trainer.setTrainerName(trainerName);
		trainer.setQualification(qualification);
		trainer.setTrainerDescription(trainerDescription);
		trainer.setYear_of_exp(year_of_exp);
		
		
		int result =trainerDao.insertTrainer(trainer);
		
		System.out.println("result="+result);
		if(result>0) {
			List<Trainer> listOfTrainer=trainerDao.getlistOfTrainer();
			model.addAttribute("listOfTrainer",listOfTrainer);
			model.addAttribute("message","Trainer Added successfully");
			
			return "trainer_dashboard";
			
		}
		model.addAttribute("message","Trainer can not be Added");
//		
		return "trainer_dashboard";
	}
	
	@RequestMapping(value="/showUpdatePage")
	public String update_trainer() {
		System.out.println("errorshow ");
		return "updatetrainer";
	}
	@RequestMapping("/updateTrainer/{trainerId}")
	public ModelAndView updateTraier(
	
			@PathVariable("trainerId") int trainerId, Model model) 
	{
		System.out.println("error coming");
		Trainer trainer =trainerDao.getTrainer(trainerId);
		model.addAttribute("trainerToupdate",trainer);
		return new ModelAndView("updatetrainer");
		
		
	}
		
//	
	
	@PostMapping("/update/{trainerId}")
	public ModelAndView updateTrainerRequest(
			@PathVariable("trainerId") int trainerId,
			
			@RequestParam("trainerName") String trainerName,
			@RequestParam("qualification") String qualification,
			@RequestParam("trainerDescription") String trainerDescription,
			@RequestParam("year_of_exp") int year_of_exp
			) {
		ModelAndView modelAndView=new ModelAndView();
		Trainer trainer=new Trainer();
		trainer.setTrainerId(trainerId);
		trainer.setTrainerName(trainerName);
		trainer.setQualification(qualification);
		trainer.setTrainerDescription(trainerDescription);
		trainer.setYear_of_exp(year_of_exp);
		System.out.println("error");
		
		int result=trainerDao.updateTrainer(trainer);
		
		
		if(result>0) {
			List<Trainer> listofTrainer=trainerDao.getlistOfTrainer();
			
			modelAndView.addObject("listOfTrainer",listofTrainer);
			modelAndView.addObject("message","Trainer Updated Successfully");
			modelAndView.setViewName("trainer_dashboard");
			
		}else {
            List<Trainer> listofTrainer=trainerDao.getlistOfTrainer();
			
			modelAndView.addObject("listOfTrainer",listofTrainer);
			modelAndView.addObject("messgae","Trainer could not be update");
			modelAndView.setViewName("trainer_dashboard");
		}
		return modelAndView;
		
	}
	
	
	@RequestMapping("/deletetrainer/{trainerId}")
	public ModelAndView deletetrainer(
			@PathVariable("trainerId") int trainerId,
			Model model) {
		Trainer trainer=trainerDao.getTrainer(trainerId);
		int result =trainerDao.deleteTrainer(trainerId);
		List<Trainer> listOfTrainer=trainerDao.getlistOfTrainer();
		model.addAttribute("trainerToupdate",trainer);
		if(result>0) {
			
			model.addAttribute("message","Trainer  can not deleted");
			
		}if(result==-1){
			
			model.addAttribute("message","the Trainer you are trying to delete is already occupied you can't delete trainer for here as of Now");
		}else {
			
			model.addAttribute("message","trainer deleted successfully");
		}
		model.addAttribute("listOfTrainer",listOfTrainer);
		return new ModelAndView("trainer_dashboard");		
	}
	




	@RequestMapping("/deletet/{trainerId}")
	public String deleteTrainer(
			@PathVariable("trainerId") int trainerId,
			Model model) {
		int result =trainerDao.deleteTrainer(trainerId);
		List<Trainer> listOfTrainer=trainerDao.getlistOfTrainer();
		model.addAttribute("listOfTrainer",listOfTrainer);
		
		if(result>0) {
			model.addAttribute("message ","Trainer deleted successfully");
		}else {
			model.addAttribute("messgae");
			
		}
		return "trainer_dashboard";
		
	}
	
	
}



