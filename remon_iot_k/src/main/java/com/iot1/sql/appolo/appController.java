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
	
	@RequestMapping(value = "/popup", method = RequestMethod.GET)
	public String pop(){
		
		return "login/popup";
	}
	@RequestMapping(value = "/a", method = RequestMethod.GET)
	public String query(){
		
		return "login/jquery";
	}
	@RequestMapping(value = "/login/gg", method = RequestMethod.GET)
	public String gg(){
		
		return "login/gg";
	}
	@RequestMapping(value = "/login/ggc", method = RequestMethod.GET)
	public String ggc(){
		
		return "login/ggc";
	}
	@RequestMapping(value = "/login/ggcc", method = RequestMethod.GET)
	public String ggcc(){
		
		return "login/ggcc";
	}
	@RequestMapping(value = "/login/fb", method = RequestMethod.GET)
	public String fb(){
		
		return "login/fb";
	}
}
