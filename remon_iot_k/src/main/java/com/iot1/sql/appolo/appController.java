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
	@RequestMapping(value = "/login/kk", method = RequestMethod.GET)
	public String kk(){
		
		return "login/kk";
	}
	@RequestMapping(value = "/login/fb", method = RequestMethod.GET)
	public String fb(){
		
		return "login/fb";
	}
	@RequestMapping(value = "/login/nv", method = RequestMethod.GET)
	public String nv(){
		
		return "login/nv";
	}
	
}
