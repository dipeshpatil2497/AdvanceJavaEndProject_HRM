package com.cdac.valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.cdac.dto.User;
import com.cdac.service.UserService;

@Service
public class UserValidator implements Validator {

	@Autowired
	private UserService userService;
	
	@Override
	public boolean supports(Class<?> clazz) {
		return clazz.equals(User.class);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName","unmKey", "USERNAME REQUIRED");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userPass", "passKey","PASSWORD REQUIRED");
		
		User user = (User)target;
//		
//		if(user.getUserPass()!=null) {
//			if(user.getUserPass().length()<3) { 
//				errors.rejectValue("userPass", "passKey", "password should contain more 3 chars");
//			}
//		}
		
		String ad = "admin";
		String stud = "student";
		String b = userService.findUser(user);
		if(b.equals(ad)) {
			
			
		}else if(b.equals(stud)){
			
		}else {
			errors.rejectValue("userPass", "passKey", "ENTER VALID DATA");
		}
	}

}
