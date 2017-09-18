package com.infotop.system.account.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/private")
public class PrivateController {
	@RequestMapping(method = RequestMethod.GET,value="/{siteName}/{pageName}")
	public String page(@PathVariable String siteName,@PathVariable String pageName,Model model){
		
		System.out.println(siteName);
		System.out.println(pageName);
		
		return "redirect:/main/list";
	}
}
