package entity;

public interface UserDAO {

	public void addUser(User user);
	public void logout();
	public User login(String email,String password);	
}
