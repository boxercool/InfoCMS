package com.infotop.system.account.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.infotop.blog.entity.BlogForm;
import com.infotop.blog.service.BlogFormService;
import com.infotop.childsite.entity.Childsite;
import com.infotop.childsite.service.childService;
import com.infotop.site.service.Siteservice;
import com.infotop.system.portal_admin.entity.Portfolio;
import com.infotop.system.portal_admin.service.PortfolioService;
import com.infotop.template.service.TemplateService;

@Controller
@RequestMapping(value = "/portaladmin")
public class PortalAdminController {
	
	@Autowired
	private childService childService;
	
	@Autowired
	private Siteservice siteService;
	
	@Autowired
	private TemplateService templateService;
	
	@Autowired
	private PortfolioService portfolioService;
	
	
	
	@RequestMapping(value="/home",method=RequestMethod.GET)
	public String include(Model model) 
	{
		return "/portal_admin/home";
	}
	@RequestMapping(value="/group",method=RequestMethod.GET)
	public String group(Model model) 
	{
		return "/portal_admin/group";
	}
	
	@RequestMapping(value="/template",method=RequestMethod.GET)
	public String template(Model model) 
	{
		
		model.addAttribute("templates", templateService.getAll());
		return "/portal_admin/template";
	}
	
	@RequestMapping(value="/Site1",method=RequestMethod.GET)
	public String Site(Model model) 
	{
		return "/portal_admin/Site1";
	}
	@RequestMapping(value="/frame",method=RequestMethod.GET)
	public String frame(Model model) 
	{
		return "/portal_admin/frame";
	}
	/*@RequestMapping(value = "/Content")
	public String content(Model model) 
	{
		model.addAttribute("sites", siteService.getall());
		return "/portal_admin/Content";
	}*/
	@RequestMapping(value = "/Content/{templateid}/{pageid}/{websiteid}",method=RequestMethod.GET)
	public String content(Model model,@PathVariable int templateid,@PathVariable int pageid,@PathVariable int websiteid) 
	{
		System.out.println("Welcome");
		Portfolio portfolio =new Portfolio();
		portfolio = portfolioService.getPortfolio(templateid, pageid, websiteid);
		if(portfolio==null)
		model.addAttribute("portfolio",new Portfolio() );
		
		else
		model.addAttribute("portfolio",portfolio );	
		
		model.addAttribute("templateid", templateid);
		model.addAttribute("pageid", pageid);
		model.addAttribute("websiteid", websiteid);
		
		return "/portal_admin/Content";
	}
	@RequestMapping(value = "/Content/Content1",method=RequestMethod.POST)
	public String content(Model model,@ModelAttribute ("portfolio") Portfolio portfolio) 
	{
		System.out.println("1");
		
		portfolioService.save(portfolio);
		return "/portal_admin/Content";
	}
	
	
	@RequestMapping(value = "/template/{templateid}/{pageid}/{websiteid}")
	public String frameport(@PathVariable int templateid,@PathVariable int pageid,@PathVariable int websiteid, Model model) 
	{
		model.addAttribute("template", templateService.get(templateid));
		model.addAttribute("templateid",templateid);
		model.addAttribute("page",childService.get(new Long(pageid)));
		model.addAttribute("websiteid",websiteid);
		return "/portal_admin/frameport";
	}
	
	@RequestMapping(value = "/Portfolio")
	public String portfolio(Model model) 
	{
		model.addAttribute("sitePages", childService.getall());
		return "/portal_admin/Portfolio";
	}
	

	@RequestMapping(value = "/ajaxpage/{websiteid}",method =RequestMethod.GET)
	public @ResponseBody List<Childsite> portfolio1(@PathVariable int websiteid, Model model) 
	{
		List<Childsite> childsites = childService.getAllPages(websiteid, 0);
		return childsites;
	}
	/*@RequestMapping(value = "/adminfull")
	public String Adminfull(Model model) 
	{
		
		return "Adminfull";
	}
	
	@RequestMapping(value = "/adminlocal")
	public String Adminlocal(Model model) 
	{
		
		return "Adminlocal";
	}
	
	@RequestMapping(value = "/role")
	public String Role(Model model) 
	{
		return "role";
	}
	
	@RequestMapping(value = "/accountInfo")
	public String accountInfo(Model model) 
	{
		return "accountInfo";
	}
	
	@RequestMapping(value = "/operatelog")
	public String operatelog(Model model) 
	{
		return "operatelog";
	}
	@RequestMapping(value = "/loginsuccess")
	public String logins(Model model) 
	{
		return "loginsuccess";
	}
	
	@RequestMapping(value = "/sitesetting")
	public String site(Model model) 
	{
		return "sitesetting";
	}
	
	@RequestMapping(value = "/port")
	public String portfoil(Model model) 
	{
		return "porttemp";
	}
	
	@RequestMapping(value = "/commerce")
	public String ecommerce(Model model) 
	{
		return "commerce";
	}*/
	
	/*template url*/
	@RequestMapping(value = "/templateURL",method =RequestMethod.GET)
	public String templateURL(Model model) 
	{
		model.addAttribute("templates",templateService.getAll());
		return "/portal_admin/templateURL";
	}
	/*template url*/
}
