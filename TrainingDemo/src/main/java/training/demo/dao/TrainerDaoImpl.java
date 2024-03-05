package training.demo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;


import training.demo.entities.Trainer;

public class TrainerDaoImpl  implements TrainerDao{
	
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	public JdbcTemplate getTemplate() {
		return jdbcTemplate; 
	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate=jdbcTemplate;
	}

	@Override
	public int insertTrainer(Trainer trainer) {
		// TODO Auto-generated method stub
		String insertQuery="insert into trainer "
				+ "(trainerName,qualification,trainerDescription,year_of_exp\r\n"
				+ ") values"
				+ "(?,?,?,?)";
		return this.jdbcTemplate.update(insertQuery,trainer.getTrainerName(),
				trainer.getQualification(),trainer.getTrainerDescription(),
				trainer.getYear_of_exp());
	}

	@Override
	public int updateTrainer(Trainer trainer) {
		// TODO Auto-generated method stub
		String updateQuery="update trainer set "
				+ "trainerName=?,qualification=?,trainerDescription=?,"
				+ "year_of_exp=? Where trainerId=?;";
		
		 return this.jdbcTemplate.update(updateQuery,trainer.getTrainerName(),
				trainer.getQualification(),trainer.getTrainerDescription(),
				trainer.getYear_of_exp(),trainer.getTrainerId());
	}

	
	

	@Override
	public List<Trainer> getlistOfTrainer() {
		// TODO Auto-generated method stub
		String  fetchAllSTrainerQuery="SELECT * FROM trainer";
//		RowMapper
		return this.jdbcTemplate.query(fetchAllSTrainerQuery, new RowMapperImpl());
				
	}

	@Override
	public int deleteTrainer(int trainerId) {
		// TODO Auto-generated method stub
		String deleteQuery="DELETE FROM trainer  WHERE  trainerId=?";
		  int rowsAffected;
		    try {
		    	 rowsAffected = this.jdbcTemplate.update(deleteQuery, trainerId);
		        System.out.println("trainer deleted successfully. Rows affected: " + rowsAffected);
		        return rowsAffected;
		    } catch (DataAccessException e) {
		    		    	
		        // Handle the exception here
		        System.out.println("Error deleting trainer: Custom error message goes here." );
//		        e.printStackTrace(); // You can log the error for debugging
		        return -1; // Return an appropriate error code or value
		    }
	
	}
	
	


	@Override
	public Trainer getTrainer(int trainerId) {
		// TODO Auto-generated method stub
		
		
		String getSingleTrainer="SELECT * FROM trainer WHERE trainerId=?";
		return this.jdbcTemplate.queryForObject(getSingleTrainer,new RowMapperImpl(),trainerId);
		
	}


	
   
}
