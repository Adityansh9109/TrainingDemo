package training.demo;

import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import training.demo.dao.CourseDao;
import training.demo.entities.Course;


@Controller
public class CourseController {

@Autowired
 CourseDao courseDao;

@GetMapping(value="/login")
public String login() {
	return "login";
}

 @PostMapping(value="/main")
 public String register() 
 {
	 return "main";
 }
 
 
 
 @GetMapping(value="/courseForm")
 public String ShowCourse(Model model) {
	 List<Course> courseList=courseDao.getListOfCourse();
	 model.addAttribute("listOfCourse",courseList);
	 return "List_course";
 }
 
 @PostMapping("/addcourse")
 public String addCourse(@ModelAttribute Course course) {

	 int result =courseDao.insertCourse(course);
	 
	 if(result==1) {
		 
		 return "redirect:/courseForm";
	 }else {
	 
	 return"addCourse"; 
	 }
 }
 
@GetMapping(value="/showAddCourseFormPage")
public String showAddCourseFormPage() {
	return "addCourse";
}

@GetMapping(value="/showUpdateCourseFormPage/{courseId}")
public ModelAndView showUpdateCourse(@PathVariable("courseId") int courseId) {
	Course courseToUpdate= courseDao.getCourse(courseId);
	System.out.println(courseToUpdate);
	
	ModelAndView mView=new ModelAndView("update_course","course",courseToUpdate);
	
	return mView;
}

@PostMapping(value="/updateCourse")
public String updateCourse(@ModelAttribute Course course) {
	System.out.println("recived book:"+course);
	int result =courseDao.updateCourse(course);
	if(result==1) {
		return "main";
//		return "List_course";
	}else {
		return "update_course";
	}
	
	
}
@RequestMapping("/delete_course/{courseId}")
public ModelAndView deleteCourse(@PathVariable("courseId")int courseId,Model model )
{
	Course course=courseDao.getCourse(courseId);
	int result =courseDao.deleteCoursse(courseId);
	model.addAttribute("courseToUpdate",course);
	List<Course> listOfCourse=courseDao.getListOfCourse();
	model.addAttribute("listOfCourse",listOfCourse);
	if(result>0) {
		
		model.addAttribute("message","course delete successfully");
		
	}if(result==-1){
		
		model.addAttribute("message","the course you are trying to delete is already  schedule you can not  delete course for here");
	}else {
		
		model.addAttribute("message","course deleted successfully");
	}
	return new ModelAndView("List_course");
}


@RequestMapping("/delete/{courseId}")
public String deleteCourseRequest(@PathVariable("courseId") int courseId,Model model)
{
	int result =courseDao.deleteCoursse(courseId);
	
	List<Course> listOfCourse=courseDao.getListOfCourse();
	model.addAttribute("listOfCourse",listOfCourse);
	System.out.println("Listof couese"+listOfCourse);
	
	if(result>0) {
		
		model.addAttribute("message","course delete successfully");
		
	}if(result==-1){
	
		model.addAttribute("message","course delete");
	}else {
		
		model.addAttribute("message","course can not be deleted");
	}
	return "List_course";
}





@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(HttpRequestMethodNotSupportedException.class)
    public ResponseEntity<String> handleHttpRequestMethodNotSupportedException(HttpRequestMethodNotSupportedException ex) {
        
        String errorMessage = "Request method not supported: " + ex.getMethod();
        return new ResponseEntity<>(errorMessage, HttpStatus.METHOD_NOT_ALLOWED);
    }
}




}
