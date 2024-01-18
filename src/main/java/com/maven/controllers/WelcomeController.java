package com.maven.controllers;

import java.util.Locale;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

//Java Program to Illustrate WelcomeController Class 



//Importing required classes 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



 

//Annotation 
@Controller
//Class 
public class WelcomeController { 
	private static final Logger logger = LoggerFactory.getLogger(WelcomeController.class);


	// Method 1 
//	@RequestMapping(value = "/", method = RequestMethod.GET) 
//	public String welcome() 
//	{ 
//		return "welcome"; 
//	} 

	// Method 2 
//	@RequestMapping(value = "/admin", 
//					method = RequestMethod.GET) 
//	public String 
//	admin() 
//	{ 
//		return "admin"; 
//	} 
	
//}

//	@RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)
//	public ModelAndView defaultPage() {
//
//		ModelAndView model = new ModelAndView();
//		model.addObject("title", "Spring Security Password Encoder");
//		model.addObject("message", "This is default page!");
//		model.setViewName("hello");
//		return model;

//	}

//	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
//	public ModelAndView adminPage() {

//		ModelAndView model = new ModelAndView();
//		model.addObject("title", "Spring Security Password Encoder");
//		model.addObject("message", "This page is for ROLE_ADMIN only!");
//		model.setViewName("admin");

//		return model;

//	}

//	@RequestMapping(value = "/login", method = RequestMethod.GET)
//	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
//			@RequestParam(value = "logout", required = false) String logout) {

//		ModelAndView model = new ModelAndView();
//		if (error != null) {
//			model.addObject("error", "Invalid username and password!");
//		}

//		if (logout != null) {
//			model.addObject("msg", "You've been logged out successfully.");
//		}
//		model.setViewName("login");

//		return model;

//	}

//}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET) 
	public String login(Locale locale, Model model) {
		logger.info("Welcome login! The client locale is {}.", locale);

		return "login"; 
	} 
	
	@RequestMapping(value = "/",method = RequestMethod.GET) 
      public String welcome(Locale locale, Model model) {
		logger.info("Welcome page! The client locale is {}.", locale);

       
return "welcome"; 
} 
	@RequestMapping(value = "/homepage", method = RequestMethod.GET) 
      public String homepage(Locale locale, Model model){
		logger.info("Welcome homepage! The client locale is {}.", locale);

       
return "homepage"; 
} 

	// Method 2 
	@RequestMapping(value = "/admin", method = RequestMethod.GET) 
	public String admin(Locale locale, Model model) {
		logger.info("Welcome admin! The client locale is {}.", locale);

		return "admin"; 
	} 
	
	@RequestMapping(value = "/user", method = RequestMethod.GET) 
public String user(Locale locale, Model model)  {
logger.info("Welcome user! The client locale is {}.", locale);


return "user"; 
} 

}
