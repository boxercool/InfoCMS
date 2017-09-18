package com.infotop.system.account.web;

import org.apache.shiro.SecurityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value = "/login")
public class LoginController {

	private static Logger logger = LoggerFactory
			.getLogger(LoginController.class);
	
	@RequestMapping(method = RequestMethod.GET)
	public String login() {
		
		System.out.println("in login");
		if (SecurityUtils.getSubject().getSession() != null) {
			SecurityUtils.getSubject().logout();
			System.out.println("in if");
		}
		else{
			System.out.println("in else");
		}
		logger.info("login page ");
		return "account/login";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String login(Model model) {
		
		model.addAttribute("msg", "wrong credentials");
		return "account/login";
	}
	
}
