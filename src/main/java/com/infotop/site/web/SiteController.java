package com.infotop.site.web;

import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springside.modules.web.Servlets;


import com.infotop.attachment.entity.Attachment;

import com.infotop.childsite.entity.Childsite;
import com.infotop.childsite.service.childService;

import com.infotop.site.entity.site;
import com.infotop.site.service.Siteservice;

@Controller
@RequestMapping(value="/site")
public class SiteController {
	
	@Autowired
	private Siteservice siteservice;
	@Autowired
	private childService childService;
	
	/*@RequestMapping(value = "/list")
	public String list(@RequestParam(value = "sortType", defaultValue = "auto") String sortType,
			@RequestParam(value = "page", defaultValue = "1") int pageNumber, Model model, 
			ServletRequest request, HttpServletResponse reponse) {
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(request, "search_");
		Page<Attachment> attachmentInfos = attachmentService.getAllAttachmentinfo(searchParams,pageNumber, 2, sortType);
		model.addAttribute("attachment",attachmentInfos );
		model.addAttribute("searchParams", Servlets.encodeParameterStringWithPrefix(searchParams, "search_"));
		model.addAttribute("sortType", sortType);
		model.addAttribute("pagination", 2);
		model.addAttribute("action", "list");
		return "attachment/list";
	}*/
	
	/*@RequestMapping(value="/list")
	public String list(Model model)
	{
		model.addAttribute("site", siteservice.getall());
		return"/site/sitelist";
	}*/
	
	
	@RequestMapping(value="/list")
	public String list(@RequestParam(value = "sortType", defaultValue="auto") String sortType,
			@RequestParam(value="page", defaultValue="1") int pageNumber, Model model,
			ServletRequest request, HttpServletResponse response) {
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(request, "search_");
		Page<site> siteInfos = siteservice.getAllsiteInfo(searchParams, pageNumber, 3, sortType);
		model.addAttribute("sitelist",siteInfos);
		model.addAttribute("searchParams", Servlets.encodeParameterStringWithPrefix(searchParams, "search_"));
		model.addAttribute("sortType", sortType);
		model.addAttribute("pagination", 3);
		model.addAttribute("action", "list");
		/*model.addAttribute("site", siteservice.getall());*/
		return "site/sitelist";
		
	}
	
	@RequestMapping(value = "/create",method=RequestMethod.GET)
	public String create(Model model){
		
		System.out.println("849271358172578265782465624785624783");
		model.addAttribute("site", new site());
		model.addAttribute("action", "create");
		return "site/addsite";
	}
	
	@RequestMapping(value = "/create",method=RequestMethod.POST)
	public String create1(@ModelAttribute("site") site site,Model model){
		System.out.println("fadfadfada849271358172578265782465624785624783");
		site siteObj =siteservice.save(site);
		// creating page for site
		Childsite childsite =new Childsite();
		childsite.setPagename("home");
		childsite.setwebsiteid(siteObj.getId().intValue());
		childsite.setType(0);
		childsite.setUrl("/web/"+siteObj.getSitetitle()+"/home");
		childsite.setTemplateid(0);
		childService.save(childsite);
		
		//assigning template for page
		
		return "redirect:/site/list";
	}
	
	@RequestMapping(value = "/delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable Long id,Model model){
		siteservice.delete(id);
		return "redirect:/site/list";
	}
	
	@RequestMapping(value = "/view/{id}",method=RequestMethod.GET)
	public String view(@PathVariable Long id,Model model){
		model.addAttribute("site", siteservice.get(id));
		return "/site/viewsite";
	}
	
	@RequestMapping(value = "/edit/{id}",method=RequestMethod.GET)
	public String edit(@PathVariable Long id,Model model){
		model.addAttribute("site", siteservice.get(id));
		return "/site/addsite";
	}
	
	@RequestMapping(value = "/website/{id}",method=RequestMethod.GET)
	public String Website(@PathVariable Long id,Model model){			
		return "welcome";
	}

}
