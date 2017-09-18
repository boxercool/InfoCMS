package com.infotop.system.portal_admin.web;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping(value="/Content")
public class portalController 
{
	/*@Autowired
	private portletService portletservice;
	
	@RequestMapping(value="/Content1")
	public String das(@ModelAttribute("portlet") portlet attachment,Model model)
	{
		portletservice.save(attachment);
		// model.addAttribute("portal_admin",portletservice.getAll());
		return "portal_admin/success";
	}
	*/
	/*@RequestMapping(value="/view/{id}",method = RequestMethod.GET)
	public String view(@PathVariable Long id,Model model) 
	  {	
		 model.addAttribute("portal_admin",portletservice.getAll());
		 for(portlet portlet:portletservice.getAll()){
			 System.out.println(portlet.getWebsiteid());
		 }
		 
	     return "portal_admin/Content";
       }*/
}