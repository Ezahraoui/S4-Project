package service;

import entity.User;
import entity.UserDAO;

public class UserImplService implements UserService{
private UserDAO dao;
	@Override
	public void addUser(User user) {
		dao.addUser(user);
		
	}

	@Override
	public void logout() {
		
		dao.logout();
	}

	@Override
	public User login(String email, String password) {	
		return dao.login(email, password);
	}

	public void setDao(UserDAO dao) {
		this.dao = dao;
	}

}
