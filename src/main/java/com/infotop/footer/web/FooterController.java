package com.infotop.footer.web;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jetty.server.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springside.modules.web.Servlets;

import com.common.FileUtils;
import com.infotop.footer.entity.Footer;
import com.infotop.footer.service.FooterService;
import com.infotop.header.entity.Header;
import com.infotop.site.service.Siteservice;




@Controller
@RequestMapping(value="/footer")
public class FooterController {
	
	@Autowired
	private FooterService footerService;
	private static String path = "";
	private static String path1 = "";
	
	
	@Autowired
	private Siteservice siteService;
	private  Footer f = new Footer();
	
	
	
	@RequestMapping(value="/list")
	public String list(@RequestParam(value="sortType", defaultValue="auto") String sortType,
		@RequestParam(value="page", defaultValue="1") int pageNumber, Model model,
		ServletRequest request, HttpServletResponse response) 
	{
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(request, "search_");
		Page<Footer> footerInfos = footerService.getAllfooterInfo(searchParams, pageNumber, 3, sortType);
		model.addAttribute("homeftrlist", footerInfos);
		model.addAttribute("searchParams", Servlets.encodeParameterStringWithPrefix(searchParams, "search_"));
		model.addAttribute("sortType", sortType);
		model.addAttribute("pagination", 3);
		model.addAttribute("action", "list");
		model.addAttribute("site",siteService.getall());
		/*model.addAttribute("homefooter", footerService.getall());*/
		return "homefooter/homeftrlist";
	}
	
	@RequestMapping(value="/framefooter",method=RequestMethod.GET)
	public String framefooter(Model model) 
	{
		return "/homefooter/framefooter";
	} 
	
	@RequestMapping(value="/createfooter",method=RequestMethod.GET)
	public String createfooter(@ModelAttribute("footer")Footer footer,Model model) 
	{
		//footerService.save(footer);
		model.addAttribute("footer", new Footer());
		/*------------------muthu--------------------------------*/
		//model.addAttribute("data",siteService.getall());
		  model.addAttribute("site",siteService.getall());
		model.addAttribute("action", "create");
		/*model.addAttribute("footer",footerService.getall());*/
		/*-------------------------------------------------------*/
		
		return "/homefooter/createfooter";
	}
	
	
	
@RequestMapping(value="/createfooter",method=RequestMethod.POST)
public String createfooterfuc(HttpServletRequest request, Model model, @ModelAttribute("footer")Footer footer,
 @RequestParam("file") MultipartFile file,RedirectAttributes redirectAttributes)throws IOException
	{
		String fileSample="";
		System.out.println(footer.getId()); 
		if(footer.getId() != null)
		{
			fileSample=request.getParameter("fileSample").toString();
		}
		
		System.out.println(request.getParameter("file"));
		System.out.println("kiran kumuda");
		String filePath="file";
		String fileName="";
		try
		{
			if((fileSample.length()<=0)||(file.getSize()> 0 ))
			{
				System.out.println("if else problem code execute");
				path = request.getSession().getServletContext().getRealPath("/")+ "static/backimgfooter/";
				System.out.println("Original Path of  program the file where its stored in workspace:"+path);
				if(file.getSize()> 0 ){
					   fileName=file.getOriginalFilename(); 
					   int flag;
					   flag=FileUtils.uploadFile(file, path, fileName);
					   if (flag == 1) {
							redirectAttributes.addFlashAttribute("error","error in the file");
							return "redirect:/footer";
						}
					   filePath=fileName;
					   footer.setBackimgfooter(filePath);
				}
			}
			else
			{
				System.out.println("in else");
				footer.setBackimgfooter(fileSample);
			}
				System.out.println("File Path System:"+filePath);
					  
				
		}
		catch(Exception e)
		{
			  e.printStackTrace();
				   
		}
		footerService.save(footer);
		System.out.println(footer);
		return "redirect:/footer/list";
	}
			   
	
	@RequestMapping(value="/homefooter",method=RequestMethod.GET)
	public String homefooter(Model model) 
	{
		return "/homefooter/homefooter";
	}
	
	
	@RequestMapping(value="/view/{id}", method=RequestMethod.GET)
	public String view(@PathVariable Long id, Model model) 
	{
		model.addAttribute("footer", footerService.get(id));
		model.addAttribute("site",siteService.getall());
		System.out.println("::"+ footerService.get(id));
		return "/homefooter/viewfooter";
	}
	
	
	@RequestMapping(value = "/edit/{id}", method=RequestMethod.GET)
	public String edit(@PathVariable Long id, Model model) 
	{
		model.addAttribute("footer", footerService.get(id));
		model.addAttribute("site",siteService.getall());
		return "/homefooter/createfooter";
	}
	
   @RequestMapping(value = "/edit/{id}",method=RequestMethod.POST)
	public String editfun(@PathVariable Long id, Model model,HttpServletRequest request, @ModelAttribute("footer")Footer footer,
	@RequestParam("file") MultipartFile file,
	RedirectAttributes redirectAttributes)throws IOException
			
	{  
	   
	   
		f=footer;
		
		model.addAttribute("f", footerService.get(id));
	    
		/*model.addAttribute("footer", footerService.get(id));*/
		model.addAttribute("site",siteService.getall());
		  try{
			   
				
			   String filePath="";
			  
			   String fileName="";
			  
			   
			   path = request.getSession().getServletContext().getRealPath("/")
						+ "static/backimgfooter/";
			   
			   
			  
			  System.out.println("Original Path of  program the file where its stored in workspace:"+path);
			   if(file.getSize()> 0 ){
				   fileName=file.getOriginalFilename(); 
				   int flag;
				   flag=FileUtils.uploadFile(file, path, fileName);
					if (flag == 1) {
						redirectAttributes.addFlashAttribute("error","error in the file");	
						return "redirect:/footer";
					}
		filePath=fileName;

		f.setBackimgfooter(filePath);
	
		
			   }
				  System.out.println("File Path System:"+filePath);
				  
			
		   }
		 
		   
		 catch(Exception e){
			   e.printStackTrace();
			   
		   }
		  System.out.println("111111111");
	  footerService.save(f);
		
		return "/homefooter/homeftrlist";
	}
	
   
	
@RequestMapping(value = "/delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable Long id,Model model) 
	{
		footerService.delete(id);
		return "redirect:/footer/list";
	}
	

	}
