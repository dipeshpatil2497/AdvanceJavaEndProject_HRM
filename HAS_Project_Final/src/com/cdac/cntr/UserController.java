package com.cdac.cntr;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.User;
import com.cdac.service.StudentService;
import com.cdac.service.UserService;
import com.cdac.valid.UserValidator;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService; 
	@Autowired
	private StudentService studentService;	
	@Autowired
	private UserValidator userValidator;
	@Autowired
	private MailSender mailSender;

	
	@RequestMapping(value = "/prep_reg_form.htm" , method = RequestMethod.GET)
	public String prepRegForm(ModelMap map , HttpSession session) {
		session.invalidate();
		map.put("user", new User());
		return "reg_form";
	}
	
	@RequestMapping(value = "/newIndex.htm" , method = RequestMethod.GET)
	public String newIndex(ModelMap map , HttpSession session) {
		session.invalidate();
		return "index";
	}
	
	@RequestMapping(value = "/reg.htm", method = RequestMethod.POST)
	public String register(User user , ModelMap map , HttpSession session) {
		

		
		Boolean b = userService.checkNewUserrr(user);
		String stud = "student";
		if(b) {
			session.setAttribute("userA", b );
			return "reg_form";
		}else{
			userService.addUser(user);
			return "index";
		}
	}
	


	@RequestMapping(value = "/prep_log_form.htm" , method = RequestMethod.GET)
	public String preplogForm(ModelMap map) {
		map.put("user", new User());
		return "login_form";
	}
	
	@RequestMapping(value = "/login.htm", method = RequestMethod.POST)
	public String login(User user ,BindingResult result ,ModelMap map, HttpSession session) {
		
		userValidator.validate(user, result);
		if(result.hasErrors()) {
			return "login_form";
		}
		
		String b = userService.findUser(user);
		String ad = "admin";
		String stud = "student";
		if(b.equals(ad)) {
			session.setAttribute("user", user );
			return "home_admin";
		}else if(b.equals(stud)){
			session.setAttribute("user", user );
			return "home_stud";
		}else {
			map.put("user", new User());
			return "login_form";
		}
		
	}
	
//	Student logout 
	@RequestMapping(value = "/logout_stud.htm" , method = RequestMethod.GET)
	public String logoutStud(ModelMap map , HttpSession session) {
		session.invalidate();
		return "index";
	}
	
//	Admin logout
	@RequestMapping(value = "/logout_admin.htm" , method = RequestMethod.GET)
	public String logoutAdmin(ModelMap map , HttpSession session) {
		session.invalidate();
		return "index";
	}
	
//	Routing to index page
	public static boolean routeProtected(HttpSession session) {
		Object obj = session.getAttribute("user");
		if(obj==null) {
			return false; 
		}
		return true;
	}
	
	@RequestMapping(value = "/req_forgot_password.htm",method = RequestMethod.POST)
	public String forgotPassword(@RequestParam String userEmailId,ModelMap map, HttpSession session) {		
		String pass = userService.forgotPassword(userEmailId);
		String forgotmsg = "you are not registered";
		if(pass!=null) {	
			
			SimpleMailMessage message = new SimpleMailMessage();  
	        message.setFrom("cdacmumbai3@gmail.com");  
	        message.setTo(userEmailId);  
	        message.setSubject("Hostel Accomodation System");  
	        message.setText("Your password : "+pass);  
	        //sending message   
	        mailSender.send(message);
			forgotmsg = "check the mail for password";
		}
		map.put("user", new User());
		session.setAttribute("forgotmsg", forgotmsg);
		return "login_form";
	}
	
	
	
}
