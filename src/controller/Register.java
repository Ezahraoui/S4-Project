package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import entity.User;



/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	response.setContentType("text/html;charset=UTF-8");
   	    PrintWriter out = response.getWriter();
    	String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
       
        //////////////////////////////
        /////User
        
        User user = new User();
        user.setLastname(nom);
        user.setFirstname(prenom);
        user.setEmail(email);
        user.setPassword(password);
        try {	
        UserDAO userDAO = new UserDAO();
  		 out.println("<html>");
  		 out.println("<head>");		
  		 out.println("<title>Registration Successful</title>");		
  		 out.println("</head>");
  		 out.println("<body>");
  		 out.println("<center>");
  		 if(!userDAO.validate(user)){
  			 out.println("<h1>Thanks for Registering with us :</h1>");
  			 out.println("To login with your Email and Password<a href=login.jsp>Click here</a>");
  		 }else{
  			 out.println("<h1>Registration Failed</h1>");
  			 out.println("To try again<a href=register.jsp>Click here</a>");
  		 }
  		 out.println("</center>");
  		 out.println("</body>");
  		 out.println("</html>");
	 } catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	 }       
        finally {		
   		 out.close();
   	 }
    }

}
