package com.infotop.pageconfiguration.web;

import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springside.modules.web.Servlets;

import com.infotop.attribute.entity.Attribute;
import com.infotop.childsite.entity.Childsite;
import com.infotop.childsite.service.childService;
import com.infotop.site.entity.site;
import com.infotop.site.service.Siteservice;
import com.infotop.template.service.TemplateService;
import com.infotop.templateurl.service.TemplateURLService;

@Controller
@RequestMapping(value="/pageConfiguration")
public class PageConfiguration {
	public static final int PAGE_SIZE = 3;
	@Autowired
	private Siteservice siteService;
	
	@Autowired
	private childService childService;
	
	@Autowired
	private TemplateService templateService;
	


	@Autowired
	private TemplateURLService templateURLService;
	
	
	

	/*@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(Model model)
	{

		model.addAttribute("sites", siteService.getall());
		return "/page_configuration/list";
	}*/
	
	
	@RequestMapping(value="/list")
	public String list(@RequestParam(value="sortType", defaultValue="auto") String sortType,
			@RequestParam(value="page", defaultValue="1") int pageNumber, Model model,
			ServletRequest request, HttpServletResponse response) 
	{	
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(request, "search_");
		Page<site> siteInfos = siteService.getAllsiteInfo(searchParams, pageNumber,PAGE_SIZE, sortType);
		model.addAttribute("site",siteInfos);
		model.addAttribute("searchParams",Servlets.encodeParameterStringWithPrefix(searchParams, "search_"));
		model.addAttribute("sortType", sortType);
		model.addAttribute("pagination",PAGE_SIZE);
	    model.addAttribute("sites",siteService.getall());
		model.addAttribute("action", "list");
		return "page_configuration/list";
	}
	
	
	
	@RequestMapping(value="/{id}")
	public String pages(@RequestParam(value="sortType", defaultValue="auto") String sortType,
			@RequestParam(value="page", defaultValue="1") int pageNumber, Model model,
			ServletRequest request, HttpServletResponse response,@PathVariable int id) 
	{	
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(request, "search_");
	/*	Page<Childsite> ChildsiteInfos = childService.getAllChildsiteInfo1(searchParams, pageNumber,2, sortType,id);
		model.addAttribute("Childsite",ChildsiteInfos);*/
		model.addAttribute("searchParams", Servlets.encodeParameterStringWithPrefix(searchParams, "search_"));
		model.addAttribute("sortType", sortType);
		model.addAttribute("pagination",2);
		model.addAttribute("pages",childService.getAllPages(id,0));
		model.addAttribute("action", "list");
		return "/page_configuration/pages";
	}
	
	@RequestMapping(value="/template/{id}",method=RequestMethod.GET)
	public String template(@PathVariable int id,Model model){
		model.addAttribute("templates",templateService.getAll());
		model.addAttribute("page", childService.get(new Long(id)));
		model.addAttribute("templateURLs",templateURLService.getAll());
		return "/page_configuration/templates";
	}
	
	@RequestMapping(value="/{pageid}/{templateid}",method=RequestMethod.GET)
	public String templateChange(@PathVariable long pageid,@PathVariable int templateid,Model model)
	{
		model.addAttribute("templates",templateService.getAll());
		model.addAttribute("page", childService.get(new Long(pageid)));
		Childsite childsite = childService.get(pageid);
		childsite.setTemplateid(templateid);
		childService.save(childsite);
		return "redirect:/pageConfiguration/template/"+pageid;
	}
	
}
