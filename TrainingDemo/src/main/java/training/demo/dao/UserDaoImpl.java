package training.demo.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;


import training.demo.entities.User;

public class UserDaoImpl implements UserDao{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public int registerUser(User user) {
		// TODO Auto-generated method stub
		String insertQuery = "INSERT INTO users "
				+ "(name, username, password) "
				+ "VALUES (?,?,?)";
		
		return jdbcTemplate.update(
				insertQuery, 
				user.getName(), 
				user.getUsername(), 
				user.getPassword());
	}

	@Override
	public User isUserRegistered(String username, String password) throws DataAccessException{
		// TODO Auto-generated method stub
		String checkQuery = "SELECT * FROM users WHERE username = ? AND password = ?";
		User user = null;
		
		if(username != null && !username.isEmpty() ) {
			if( password != null && !password.isEmpty()) {
				System.out.println("user : " + user);
				user = jdbcTemplate.queryForObject(checkQuery, new UserDaoRowMapperImpl(), username, password); 
			}
		}
		System.out.println("-------");
		System.out.println(user);
		return user;
	}

}
