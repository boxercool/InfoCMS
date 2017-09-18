package com.infotop.header.web;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springside.modules.web.Servlets;

import com.common.FileUtils;
import com.infotop.footer.entity.Footer;
import com.infotop.header.entity.Header;
import com.infotop.header.service.HeaderService;
import com.infotop.site.service.Siteservice;


@Controller
@RequestMapping(value="/header")
public class HeaderController {
	
	@Autowired
	private HeaderService headerService;
	private static String path = "";
	private static String path1 = "";
	
	@Autowired
	private Siteservice siteService;
	private  Header f = new Header();
	
	@RequestMapping(value="/list")
	public String list(@RequestParam(value="sortType", defaultValue="auto") String sortType,
			@RequestParam(value="page", defaultValue="1") int pageNumber, Model model,
			ServletRequest request, HttpServletResponse response) {
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(request, "search_");
		Page<Header> headerInfos = headerService.getAllheaderInfo(searchParams, pageNumber, 3, sortType);
		model.addAttribute("homehdrlist", headerInfos);
		model.addAttribute("searchParams", Servlets.encodeParameterStringWithPrefix(searchParams, "search_"));
		model.addAttribute("sortType", sortType);
		model.addAttribute("pagination", 3);
		model.addAttribute("site",siteService.getall());
		model.addAttribute("action", "list");
		//model.addAttribute("homeheader", headerService.getall());
		return "homeheader/homehdrlist";
	}
	
	@RequestMapping(value="/frameheader",method=RequestMethod.GET)
	public String frameheader(Model model) 
	{ 
		return "/homeheader/frameheader";
	}
	
	@RequestMapping(value="/createheader",method=RequestMethod.GET)
	public String createheader(Model model) 
	{
		
	  //-------------------------muthu---------------------------
		model.addAttribute("headerObj",new Header());
		model.addAttribute("site",siteService.getall());
		model.addAttribute("action", "create");
		System.out.println(siteService.getall());
	//----------------------------------------------------
		model.addAttribute("header", headerService.getall());
		
		
		return "/homeheader/createheader";
		//return "redirect:homeheader/list";
	}
	

	@RequestMapping(value="/createheader",method=RequestMethod.POST)
	public String createheaderfuc(HttpServletRequest request, Model model, @ModelAttribute("header")Header header,
			@RequestParam("file1") MultipartFile file1,@RequestParam("file2") MultipartFile file2,RedirectAttributes redirectAttributes)throws IOException 
	{
		String fileSample1="";
		String fileSample2="";
		
		if(header.getId() != null)
		{
			fileSample1=request.getParameter("fileSample1").toString();
			fileSample2=request.getParameter("fileSample2").toString();
		}
		
		String filePath1="file1";
		String filePath2="file2";
		
		String fileName="";
		String fileName1="";
		try
		{
			if((fileSample1.length()<=0)||(file1.getSize()> 0 ))
			{
				  path = request.getSession().getServletContext().getRealPath("/")
							+ "static/Websitelogo/";
				  if(file1.getSize()> 0 )
				  {
					  System.out.println("Enter");
					   fileName=file1.getOriginalFilename(); 
					   int flag;
					   flag=FileUtils.uploadFile(file1, path, fileName);
						if (flag == 1) 
						{
							redirectAttributes.addFlashAttribute("error",
									"error in the file");
							return "redirect:/header";
					    }
			          filePath1=fileName;
			          header.setWebsitelogo(filePath1);
				 }
				
				  
			}
			else
			{
				System.out.println("Enter1");
				header.setWebsitelogo(fileSample1);
				
			}
			
			
		if((fileSample2.length()<=0)||(file2.getSize()> 0 ))
		{
			 path1 = request.getSession().getServletContext().getRealPath("/")
						+ "static/BackgroundImage/";
			 
			  if(file2.getSize()> 0 )
			  {
				   fileName1=file2.getOriginalFilename(); 
				   int flag1;
				   flag1=FileUtils.uploadFile2(file2, path1, fileName1);
					if (flag1 == 1) {
						redirectAttributes.addFlashAttribute("error",
								"error in the file");
						return "redirect:/header";
					}
		          filePath2=fileName1;
		          header.setBackgroundimage(filePath2); 
		      } 
			  
		} else
			  {
				  header.setBackgroundimage(fileSample2);
			  }
				
		}
		catch(Exception e)
		{
			  e.printStackTrace();		   
		}
		headerService.save(header);
		return "redirect:/header/list";
	}
	
	
	/*@RequestMapping(value="/createheader",method=RequestMethod.POST)
	public String createheaderfuc(HttpServletRequest request, Model model, @ModelAttribute("header")Header header,
			@RequestParam("file1") MultipartFile file1,@RequestParam("file2") MultipartFile file2,RedirectAttributes redirectAttributes)throws IOException {
	
		
		   try{
				   
			
				   String filePath="";
				  
				   String fileName="";
				   String filePath1="";
					  
				   String fileName1="";
				   
				   path = request.getSession().getServletContext().getRealPath("/")
							+ "static/Websitelogo/";
				   
				   
				   path1 = request.getSession().getServletContext().getRealPath("/")
							+ "static/BackgroundImage/";
				  
				   	System.out.println("Original Path of the program:"+path);
				   if(file1.getSize()> 0 ){
					   fileName=file1.getOriginalFilename(); 
					   int flag;
					   flag=FileUtils.uploadFile(file1, path, fileName);
						if (flag == 1) {
							redirectAttributes.addFlashAttribute("error",
									"error in the file");
							return "redirect:/header";
						}
			filePath=fileName;

			header.setWebsitelogo(filePath);
		
				   }
					  System.out.println("File Path System:"+filePath);
					   if(file2.getSize()> 0 ){
						   fileName1=file2.getOriginalFilename(); 
						   int flag1;
						   flag1=FileUtils.uploadFile2(file2, path1, fileName1);
							if (flag1 == 1) {
								redirectAttributes.addFlashAttribute("error",
										"error in the file");
								return "redirect:/header";
							}
				filePath1=fileName1;

				header.setBackgroundimage(filePath1);
		
					 
				   }
					   
					   
					   System.out.println("File Path System:"+header.getBackgroundimage() +";;;;;;"+header.getWebsitelogo());
				   headerService.save(header);
			
			   }
			 
			   
			   catch(Exception e){
				   e.printStackTrace();
				   
			   }
			
			return "redirect:/header/list";
			}
			   */
			   
	
	@RequestMapping(value="/homeheader",method=RequestMethod.GET)
	public String homeheader(Model model) 
	{
		return "/homeheader/homeheader";
	}
	
	
	
	@RequestMapping(value="/view/{id}", method=RequestMethod.GET)
	public String view(@PathVariable Long id, Model model) {
		model.addAttribute("headerView", headerService.get(id));
		model.addAttribute("site",siteService.getall());
		System.out.println("::"+ headerService.get(id));
		
		return "/homeheader/viewheader";
	}
	
	
	
	@RequestMapping(value = "/edit/{id}", method=RequestMethod.GET) 
	public String edit(@PathVariable Long id,HttpServletRequest request, Model model,@ModelAttribute("header")Header header,
			RedirectAttributes redirectAttributes)throws IOException {
		
		model.addAttribute("headerObj", headerService.get(id));
		model.addAttribute("headerView",headerService.get(id));
		model.addAttribute("site",siteService.getall());  
		return "/homeheader/createheader";
	}
	
	 @RequestMapping(value = "/edit/{id}",method=RequestMethod.POST)
	 public String editfun1(@PathVariable Long id,HttpServletRequest request, Model model, @ModelAttribute("header")Header header,
				@RequestParam("file1") MultipartFile file1,@RequestParam("file2") MultipartFile file2,RedirectAttributes redirectAttributes)throws IOException 
	 {
		 f=header;
		 model.addAttribute("f",headerService.get(id));
	     model.addAttribute("site",siteService.getall());
	     try{
			   
				
			   String filePath="";
			  
			   String fileName="";
			   String filePath1="";
				  
			   String fileName1="";
			   
			   path = request.getSession().getServletContext().getRealPath("/")
						+ "static/Websitelogo/";
			   
			   
			   path1 = request.getSession().getServletContext().getRealPath("/")
						+ "static/BackgroundImage/";
			  
			   	System.out.println("Original Path of the program:"+path);
			   if(file1.getSize()> 0 ){
				   fileName=file1.getOriginalFilename(); 
				   int flag;
				   flag=FileUtils.uploadFile(file1, path, fileName);
					if (flag == 1) {
						redirectAttributes.addFlashAttribute("error",
								"error in the file");
						return "redirect:/header";
					}
		filePath=fileName;

		f.setWebsitelogo(filePath);
	
			   }
				  System.out.println("File Path System:"+filePath);
				   if(file2.getSize()> 0 ){
					   fileName1=file2.getOriginalFilename(); 
					   int flag1;
					   flag1=FileUtils.uploadFile2(file2, path1, fileName1);
						if (flag1 == 1) {
							redirectAttributes.addFlashAttribute("error",
									"error in the file");
							return "redirect:/header";
						}
			filePath1=fileName1;

			f.setBackgroundimage(filePath1);
	
				 
			   }
				   
				   
				   System.out.println("File Path System:"+header.getBackgroundimage() +";;;;;;"+header.getWebsitelogo());
			   headerService.save(f);
		
		   }
		 
		   
		   catch(Exception e){
			   e.printStackTrace();
			   
		   }
	     
	     
		 return "homeheader/homehdrlist";
	 }
	
	@RequestMapping(value = "/delete/{id}", method=RequestMethod.GET)
	public String delete(@PathVariable Long id,Model model) 
	{
		headerService.delete(id);
		return "redirect:/header/list";
	}

	
	
	
	
}
