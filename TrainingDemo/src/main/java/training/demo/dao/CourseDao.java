package training.demo.dao;

import java.util.List;

import training.demo.entities.Course;

public interface CourseDao {
  int insertCourse(Course course);
  int updateCourse(Course course);
  int deleteCoursse(int courseId);
  Course getCourse(int courseId);
  List<Course> getListOfCourse();
  
  
}
