package training.demo;

import static org.mockito.Mockito.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import training.demo.CourseController;
import training.demo.dao.CourseDao;
import training.demo.entities.Course;

public class CourseControllerTest {

    @InjectMocks
    private CourseController courseController;

    @Mock
    private CourseDao courseDao;

    @BeforeEach
    public void init() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testAddCourse() {
        Course mockCourse = new Course(); 
        when(courseDao.insertCourse(mockCourse)).thenReturn(1); 

        String viewName = courseController.addCourse(mockCourse);

    }

   
}
