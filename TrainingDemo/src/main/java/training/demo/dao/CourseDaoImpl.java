package training.demo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import training.demo.entities.Course;

public class CourseDaoImpl  implements CourseDao{
      
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	public JdbcTemplate getTemplate() {
		return jdbcTemplate; 
	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate=jdbcTemplate;
	}

	
	
	
	@Override
	public int insertCourse(Course course) {
		String insertQuery="insert into course"+"(courseName,description,category,intendedAudience\r\n"
	     +",benefits) values"+"(?,?,?,?,?)";
		return this.jdbcTemplate.update(insertQuery,course.getCourseName(),
				course.getDescription(),course.getCategory(),
				course.getIntendedAudience(),course.getBenefits());
	}

	@Override
	public int updateCourse(Course course) {
		// TODO Auto-generated method stub
		String updateQuery="update course set courseName=?,description=?,category=?,\r\n"
				+ "intendedAudience=?,benefits=? where courseId=?";
		
		return this.jdbcTemplate.update(updateQuery,
				course.getCourseName(),
				course.getDescription(),
				course.getCategory(),
				course.getIntendedAudience(),
				course.getBenefits(),
				course.getCourseId());
				
		
	}


	
	@Override
	public int deleteCoursse(int courseId) {
	    String deleteCourseQuery = "DELETE FROM course WHERE courseId=?";
	    int rowsAffected;
	    try {
	    	 rowsAffected = this.jdbcTemplate.update(deleteCourseQuery, courseId);
	        System.out.println("Course deleted successfully. Rows affected: " + rowsAffected);
	        return rowsAffected;
	    } catch (DataAccessException e) {
	        
	        System.out.println("Error deleting course: Custom error message goes here." );
//	    
	        return -1; 
	    }
	   
	}


	@Override
	public Course getCourse(int courseId) {
		
		String getSingleCourse="SELECT * FROM course WHERE courseId=?";
		
		return this.jdbcTemplate.queryForObject(getSingleCourse, new CourseRowMapper(),courseId);
		
	}

	@Override
	public List<Course> getListOfCourse() {
		// TODO Auto-generated method stub
		String FetchAllCourseQuery="SELECT * FROM course";
		return this.jdbcTemplate.query(FetchAllCourseQuery,  new CourseRowMapper());
	}

}
