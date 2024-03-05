package training.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import training.demo.entities.Training;

public class TrainingRowMapperImpl implements RowMapper<Training> {

	@Override
	public Training mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Training training = new Training();
		training.setTrainingId(rs.getInt("trainingId"));
		training.setCourseId(rs.getInt("courseId"));
		training.setTrainerId(rs.getInt("trainerId"));
		training.setStart_date(rs.getDate("start_date").toLocalDate());
		training.setEnd_date(rs.getDate("end_date").toLocalDate());
		training.setFees(rs.getDouble("fees"));
		training.setDiscount(rs.getDouble("discount"));
		training.setBatchSize(rs.getInt("batchSize"));
		training.setDiscountedPrice(rs.getDouble("discountedPrice"));
		
 
		return training;
	}

	
	
	

}
