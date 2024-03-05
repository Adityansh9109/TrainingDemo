package training.demo.dao;

import training.demo.entities.User;

public interface UserDao {
	int registerUser(User user);
	User isUserRegistered(String username, String password);
}
