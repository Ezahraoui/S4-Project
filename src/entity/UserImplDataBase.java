package entity;

import java.sql.*;

import util.Db;

public class UserImplDataBase implements UserDAO{


@Override
	public void addUser(User user) {
	try{
		Connection conn = Db.getConnection();
		String sql = "INSERT INTO user (NOM, PRENOM, EMAIL, PASSWORD) values (?, ?, ?, ?)";
		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setString(1, user.getLastname());
        statement.setString(2, user.getFirstname());
        statement.setString(3, user.getEmail());
        statement.setString(4, user.getPassword());
        
		System.out.println(statement);
		statement.executeUpdate();
	} catch (SQLException e) {
        // process sql exception
        
    }
	}

@Override
	public void logout() {
		
		
	}


@Override
public User login(String email, String password) {
	User user = null;
	try {
		Connection conn = Db	.getConnection();
		String sql = "select * from user where EMAIL = ? and PASSWORD = ?";
		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setString(1, email);
		statement.setString(2, password);
		System.out.println(statement);
		ResultSet result = statement.executeQuery();
			
		
			
		if (result.next()) {
			    user = new User();
			    user.setIdUser(result.getLong(1));					    
			    user.setLastname(result.getString(2));
			    user.setFirstname(result.getString(3));
			    user.setEmail(result.getString(4));
			    user.setPassword(result.getString(5));	
		}	
		conn.close();	}
	catch(Exception e) {
		
	}
	return user;
	}


}
