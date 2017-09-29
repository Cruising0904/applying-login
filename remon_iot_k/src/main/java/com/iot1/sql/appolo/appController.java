package com.iot1.sql.appolo;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class appController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "app/main";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(){
		
		return "app/login";
	}
	@RequestMapping(value = "/login2", method = RequestMethod.GET)
	public String login2(){
		
		return "app/login2";
	}
	@RequestMapping(value = "/naverlogin", method = RequestMethod.GET)
	public String naverlogin(){
		
		return "app/naverlogin";
	}
}
