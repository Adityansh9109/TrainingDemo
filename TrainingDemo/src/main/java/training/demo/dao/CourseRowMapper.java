package training.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import training.demo.entities.Course;

public class CourseRowMapper implements RowMapper<Course> {

	@Override
	public Course mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Course course=new Course();
		course.setCourseId(rs.getInt("courseId"));
		course.setCourseName(rs.getString("courseName"));
		course.setDescription(rs.getString("description"));
		course.setCategory(rs.getString("category"));
		course.setIntendedAudience(rs.getString("intendedAudience"));
		course.setBenefits(rs.getString("benefits"));

		return course;
	}

}
