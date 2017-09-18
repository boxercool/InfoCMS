package com.infotop.templateurl.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.infotop.templateurl.entity.TemplateURL;
import com.infotop.templateurl.service.TemplateURLService;

@Controller
@RequestMapping(value = "/templateurl")
public class templateurlController {
	

	@Autowired
	private TemplateURLService templateURLService;
	
	
	@RequestMapping(value="/create",method=RequestMethod.POST)
	public String create(@ModelAttribute TemplateURL templateURL,Model model){
		System.out.println(templateURL.getTemplateId());
		System.out.println(templateURL.getTemplateURL());
		
		//templateURLService.save(templateURL);
		return "portal_admin/success";
	}
}
