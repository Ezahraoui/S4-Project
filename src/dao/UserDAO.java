package dao;

import java.sql.*;

import entity.User;


public class UserDAO {
	public static Connection getConnection(){ 
		    Connection conn = null;
		    try{
		        Class.forName("com.mysql.jdbc.Driver");
		        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enews?useSSL=false", "root", "");
		    
		    }catch(Exception e){
		            System.out.println(e);
		    }
		        return conn;
		    }

	public User authentification(String email, String password) throws SQLException,
			   ClassNotFoundException {
				Connection conn = UserDAO.getConnection();
				String sql = "select * from user where EMAIL = ? and PASSWORD = ?";
				PreparedStatement statement = conn.prepareStatement(sql);
				statement.setString(1, email);
				statement.setString(2, password);
				System.out.println(statement);
				ResultSet result = statement.executeQuery();
					
				User user = null;
					
				if (result.next()) {
					    user = new User();
					    user.setIdUser(result.getLong(1));					    
					    user.setLastname(result.getString(2));
					    user.setFirstname(result.getString(3));
					    user.setEmail(result.getString(4));
					    user.setPassword(result.getString(5));	
				}	
				conn.close();	
			return user;
			}
	
	
	public boolean validate(User user) throws ClassNotFoundException {
		boolean status = false;
		try{
			Connection conn = UserDAO.getConnection();
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
            printSQLException(e);
        }
        return status;		
    }
	private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

}
