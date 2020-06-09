package service;

import entity.User;

public interface UserService {
	public void addUser(User user);
	public void logout();
	public User login(String email,String password);	
}
