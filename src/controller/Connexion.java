package controller;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.User;
import service.UserService;
@Controller
public class Connexion {
	@Autowired
	UserService userService;
	
	@RequestMapping(value="/connexion")
	public String login(Model model,HttpSession session,String email, String password)
	{
		
		
		User user=userService.login(email, password);	
		 if (user != null) {
             session.setAttribute("user", user);
             session.setAttribute("id",user.getIdUser());
         }
		 else {
             String message = "Invalid email/password";
             model.addAttribute("message", message);
         }
		
		return "index";
		
	}
	
	@RequestMapping(value="/logout")
	public String logout(Model model,HttpSession session)
	{

        if (session != null) {
            session.invalidate();  
    }
		return "../login";
	}
	
	@RequestMapping(value="/register")
	public String register(Model model,User user)
	{
		userService.addUser(user);
		return "../login";
	}
}
