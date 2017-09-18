package com.infotop.subtemplate.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value="/subtemplate")
public class SubtemplateController 
{

	@RequestMapping(value="/subtemplate1")
	public String list(Model model)
	{
		return "subtemplates/imgnav";
	}
	
	@RequestMapping(value="/subtemplate2")
	public String img(Model model)
	{

		return "subtemplates/subtemplate";
	}
	
}
