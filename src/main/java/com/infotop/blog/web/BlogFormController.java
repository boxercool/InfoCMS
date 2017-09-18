package com.infotop.blog.web;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.common.FileUtils;
import com.infotop.blog.entity.BlogForm;
import com.infotop.blog.service.BlogFormService;
import com.infotop.fileupload.entity.Image;

@Controller
@RequestMapping("/blogforum")
public class BlogFormController {
	
 private static final Logger log = LoggerFactory.getLogger(BlogFormController.class);
	
 @Autowired
    private BlogFormService  blogFormService;
   
    
    private static String path ="";

    @RequestMapping(value="/forum/{templateid}/{pageid}/{websiteid}")
    public String index(HttpServletRequest request,@PathVariable int templateid,@PathVariable int pageid,@PathVariable int websiteid,Model model) {
    /*	fileUploadDirectory =  request.getRealPath("/")+"static/BlogImages";
    	
    	File file=new File(fileUploadDirectory);
    	if(!file.exists()){
    		if(file.mkdirs()){
    			System.out.println("file is create:"+file.mkdirs());
    		}
    		else
    		{
    			System.out.println("Failed to create");
    		}
    	}
    	*/
   /*     log.debug("ImageController home");
        model.addAttribute("templateid", templateid);
        model.addAttribute("pageid", pageid);
        model.addAttribute("websiteid", websiteid);*/
 	   
		String   path = request.getSession().getServletContext().getRealPath("/")
					+ "static/BlogImages/";
    	System.out.println("Welcome blog");
    	System.getProperty("user.dir");
    	System.out.println("Welcome blog:+"+System.getProperty("user.dir"));
    	System.out.println("Original Path of the program:"+path);
		BlogForm blogForm=new BlogForm();
		blogForm=blogFormService.getBlogForm(templateid, pageid, websiteid);
	
		if(blogForm==null)
		model.addAttribute("blogForm",new BlogForm() );
		
		else
		model.addAttribute("blogForm",blogForm );	
		model.addAttribute("blogforumobj",new BlogForm() );
		model.addAttribute("templateid", templateid);
		model.addAttribute("pageid", pageid);
		model.addAttribute("websiteid", websiteid);
		
        return "portal_admin/blogform";
    }
/*  @RequestMapping(value = "/forumimgesave", method = RequestMethod.POST)
    public String forumsave(HttpServletRequest request,Model model){
	  
   System.out.println("jkfslhgjfhgjfjhsfgjsfgh");
    	return "portal_admin/success";
}
*/
   @RequestMapping(value = "/forumimgesave", method = RequestMethod.POST)
    public String create(HttpServletRequest request,Model model,
    		@ModelAttribute("blogforumobj") BlogForm blogForm,
    		@RequestParam("file1") MultipartFile file1,RedirectAttributes redirectAttributes)throws IOException{
	
	   
System.out.println("welcome to shc infotop 435240562=9-63605794");
   try{
		   
	
		   String filePath="";
		  
		   String fileName="";
		   
		   path = request.getSession().getServletContext().getRealPath("/")
					+ "static/BlogImages/";
		   
		  
		   	System.out.println("Original Path of the program:"+path);
		   if(file1.getSize()> 0 ){
			   fileName=file1.getOriginalFilename(); 
			   int flag;
			   flag=FileUtils.uploadFile(file1, path, fileName);
				if (flag == 1) {
					redirectAttributes.addFlashAttribute("error",
							"error in the fileï¼?");
					return "redirect:/blogforum";
				}
	filePath="static/BlogImages/"+fileName;

	  blogForm.setBlogimage(filePath);
	//  blogForm.setContentType(file1.getContentType());
	//  blogForm.setSize(file1.getSize());
			   
			  System.out.println("File Path System:"+filePath);
		/*	  
		  if(StringUtils.isBlank(blogForm.getBlogimage())){
			  blogForm.setBlogimage(fileName);
				}
*/
			 
		   }
		   blogFormService.save(blogForm);
	
	   }
	 
	   
	   catch(Exception e){
		   e.printStackTrace();
		   
	   }
	

	   
	   
	return "portal_admin/success1";   
   } 
  @RequestMapping(value = "/imageview1/{id}", method = RequestMethod.GET)
   public void imagemethod(HttpServletResponse response, @PathVariable Long id) {

	   
	   BlogForm blogForm=blogFormService.get(id);
	 File imagefile=new File(path+"/"+blogForm.getBlogimage());
/*response.setContentType(blogForm.getContentType());
response.setContentLength(blogForm.getSize().intValue());*/
try {
    InputStream is = new FileInputStream(imagefile);
    IOUtils.copy(is, response.getOutputStream());
} catch(IOException e) {
    log.error("Could not show picture "+id, e);
}

   }
  @RequestMapping(value = "/imageview/{id}", method = RequestMethod.GET)
  public String imagemethod1(HttpServletResponse response,HttpServletRequest request, @PathVariable Long id,Model model) {
//BlogForm blogform1=blogFormService.get(id);
	model.addAttribute("blogForm",blogFormService.get(id));
	//  path = request.getSession().getServletContext().getRealPath("/")
		//		+ "static/BlogImages/";
	  model.addAttribute("imagefile", request.getSession().getServletContext().getRealPath("/")
				+ "static/BlogImages/");
	//System.out.println("pring value"+blogform1);
	//	File imagefile=new File(path);
		//	model.addAttribute(imagefile);
		
		
	/*   BlogForm blogForm=blogFormService.get(id);
	 File imagefile=new File(path+"/"+blogForm.getBlogimage());
response.setContentType(blogForm.getContentType());
response.setContentLength(blogForm.getSize().intValue());
try {
   InputStream is = new FileInputStream(imagefile);
   IOUtils.copy(is, response.getOutputStream());
} catch(IOException e) {
   log.error("Could not show picture "+id, e);
}*/
		return "templatevalue/blog"; 

  }
   }
	   
	   
	   
