package com.infotop.childsite.web;

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

import com.infotop.childsite.entity.Childsite;
import com.infotop.childsite.service.childService;

import com.infotop.site.service.Siteservice;


@Controller
@RequestMapping(value="/Childsite")
public class ChildsiteController {
	
	@Autowired
	private childService childService;
	@Autowired
	private Siteservice siteservice;
	
	
	
	/*@RequestMapping(value="/list")
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
		model.addAttribute("site", siteservice.getall());
		return "site/sitelist";
		
	}*/
	
	@RequestMapping(value="/list")
	public String list(@RequestParam(value = "sortType", defaultValue="auto") String sortType,
			@RequestParam(value="page", defaultValue="1") int pageNumber, Model model,
			ServletRequest request, HttpServletResponse response) {
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(request, "search_");
		Page<Childsite> ChildsiteInfos = childService.getAllChildsiteInfo(searchParams, pageNumber, 3, sortType);
		model.addAttribute("chldsitelist", ChildsiteInfos);
		model.addAttribute("searchParams", Servlets.encodeParameterStringWithPrefix(searchParams, "search_"));
		model.addAttribute("sortType", sortType);
		model.addAttribute("pagination", 3);
		model.addAttribute("action", "list");
		model.addAttribute("Childsite", childService.getall());
		return "childsite/chldsitelist";
	}
	
	/*@RequestMapping(value="/list")
	public String list(Model model)
	{
		model.addAttribute("Childsite", childService.getall());
	
		return"/childsite/chldsitelist";
	}*/
	
	@RequestMapping(value = "/create",method=RequestMethod.GET)
	public String create(Model model){
		model.addAttribute("Childsite", new Childsite());
		model.addAttribute("sites", siteservice.getall());
		
		System.out.println( siteservice.getall());
		return "/childsite/creatchld";
	}	
	
	@RequestMapping(value = "/create",method=RequestMethod.POST)
	public String create1(@ModelAttribute("Childsite") Childsite childsite,Model model){
		
		Long websiteid =new Long(childsite.getwebsiteid());
		String siteName = siteservice.get(websiteid).getSitetitle();
		
		childsite.setType(0);
		childsite.setUrl("/web/"+siteName+"/"+childsite.getPagename());
		childsite.setTemplateid(0);
		childService.save(childsite);
		/*return "redirect:/Childsite/create";*/
		return "redirect:/Childsite/list";
	}
	
	@RequestMapping(value = "/delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable Long id,Model model){
		childService.delete(id);
		return "redirect:/Childsite/list";
	}
	
	@RequestMapping(value = "/view/{id}",method=RequestMethod.GET)
	public String view(@PathVariable Long id,Model model){
		model.addAttribute("Childsite", childService.get(id));
		return "/childsite/viewcld";
	}
	
	@RequestMapping(value = "/edit/{id}",method=RequestMethod.GET)
	public String edit(@PathVariable Long id,Model model){
		model.addAttribute("Childsite", childService.get(id));
		model.addAttribute("sites", siteservice.getall());
		return "/childsite/creatchld";
	}
	

}
