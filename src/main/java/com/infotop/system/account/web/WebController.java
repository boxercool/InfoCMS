package com.infotop.system.account.web;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import javax.swing.JOptionPane;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.infotop.blog.service.BlogFormService;
import com.infotop.blogcommand.entity.Command;
import com.infotop.blogcommand.service.CommandService;
import com.infotop.childsite.entity.Childsite;
import com.infotop.childsite.service.childService;
import com.infotop.fileupload.entity.Image;
import com.infotop.fileupload.repository.ImageDao;
import com.infotop.footer.entity.Footer;
import com.infotop.footer.service.FooterService;
import com.infotop.header.entity.Header;
import com.infotop.header.service.HeaderService;
import com.infotop.menu.entity.Menu;
import com.infotop.menu.service.MenuService;
import com.infotop.site.entity.site;
import com.infotop.site.service.Siteservice;
import com.infotop.system.portal_admin.service.PortfolioService;
import com.infotop.template.repository.TemplateDao;

@Controller
@RequestMapping(value = "/web")
public class WebController {

	@Autowired
	private Siteservice siteService;
	
	@Autowired
	private BlogFormService blogFormService;
	
	@Autowired
	private childService childService;
	@Autowired
	private MenuService menuService;
	@Autowired
	private PortfolioService portfolioService;
	
	@Autowired
	private TemplateDao templateDao;
	
  @Autowired
	private ImageDao imageDao;

 @Autowired
 private CommandService commandService;
 @Autowired
	private HeaderService headerService;
 @Autowired
 private FooterService footerService;
 
	/*@RequestMapping(value="/{sitename}")
	public String home(Model model){
		site site = siteService.get(id);
		model.addAttribute("sitePages", childService.getAllPages(site.getId().intValue(), 0));
		
		return "sample";
	}*/
	
	@RequestMapping(method = RequestMethod.GET,value="/{siteName}/{pageName}")
		
	public  String page(@PathVariable String siteName,@PathVariable String pageName,Model model){
		
		site siteStatus =siteService.findByName(siteName);
		
		if(siteStatus!=null){
			Childsite childsite =childService.findByPagename(pageName,siteStatus.getId().intValue(),0);
			if(childsite!=null){			
				model.addAttribute("sitePages", childService.getAllPages(siteStatus.getId().intValue(), 0));
				model.addAttribute("type", "web");
				model.addAttribute("site", siteStatus);
				model.addAttribute("page", childService.findByPagename(pageName,siteStatus.getId().intValue(),0));
					return "sample";
			}
				
		}
		return "error/404"; 
	}
	
	@RequestMapping(value = "/Portfolio/{siteid}/{pageid}")
	public String portfolioRedirect(@PathVariable Long siteid,@PathVariable int pageid, Model model) 
	{
		try{
			int templateId = childService.get( new Long(pageid)).getTemplateid();
			int websiteid=siteid.intValue() ;//childService.get( (long) siteid.intValue()).getWebsiteid();
	//		Long pagenameid=menuService.getMenu(new Long(siteid)).getPagenameid();
			System.out.println("pageid"+ pageid);
	//		System.out.println("pagenameid"+ pagenameid);
			System.out.println("siteid"+ siteid);
		
			
		//	int commandid=likeDlikeService.get( new Long(pageid)).getComman did();
			String templateName = templateDao.findOne(templateId).getName();
			List<Image> images = imageDao.listByTemplate(templateId, pageid, siteid.intValue());
			model.addAttribute("images", images);
		//	System.out.println("fdfadssfadfadfadfdfad:"+images);
		//	System.out.println(templateName);
			model.addAttribute("blogf", blogFormService.getBlogForm(templateId, pageid, siteid.intValue()));
			//System.out.println( blogFormService.getBlogForm(templateId, pageid, siteid.intValue() ));
            List<Command> comm1=commandService.listByCommand(templateId, pageid, siteid.intValue());
          System.out.println("page is commaned----------------------------"+comm1.size());
    // Long id = null;
/*Long  pagenmeid=menuService.getMenu(new Long(pageid)).getPagenameid();
System.out.println(pagenmeid);*/
		
		//System.out.println(pagenmeid);
       model.addAttribute("portfolio",portfolioService.getPortfolio(templateId, pageid, siteid.intValue()));
		return "/templatevalue/"+templateName;
	}
	catch(Exception e){
		return "/error/404";
	}
	
}     	
            	
      /*        	for(Childsite childsite3:listpage){
            	  MenusPage mp=new MenusPage();   
            	 
            	  System.out.println("------------"+msc.toString());
            	  for(Menu menus:msc){
            		  if(menus.getPagenameid()!=null){
            			  mp.setLevel(menus.getLevel());
            			  mp.setName(menus.getName());
            			  mp.setPagename(childsite3.getPagename());
            			  mp.setUrl(childsite3.getUrl());
            			  mp.setType(childsite3.getType());
		//  mp.setParentid(menus.getPagenameid());
            			  mp.setPagenameid(menus.getPagenameid());
            			  System.out.println(menus.getPagenameid());
            			  menusarray.add(mp);
            			  copymenu.so;
            		  }
            		  
            	  }
 
break;
  
 	
 	 //   System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
 
     for(Menu menus:msc)
     {
      
       	if((childsite3.getwebsiteid()==menus.getSiteid()) && menus.getParentid()!=0 )
       	{	
       		
       		siteid1=menus.getSiteid();
       		parentid1=menus.getParentid();
       	
    	
                 menus.setParentid(menus.getParentid());
                 menus.setName(menus.getName());
               
             	System.out.println("****************"+siteid1);
        		System.out.println("****************"+parentid1);
        		System.out.println("****************"+menus.getName());
        		System.out.println("****************"+childsite3.getUrl());
       			//System.out.println("****************"+siteid1);
       		//	menusarray.add(menus);

       	}
       
 
     }
        	
            	}*/
        
 	

            	
            	
            	/*for(Childsite childsite3:listpage){
            		System.out.println(childsite3);
            		if(childsite3!=null){
            			MenusPage mp=new MenusPage();
            			
            			Menu msc=(Menu) menuService.getMenusWithSiteid(siteid);
            			System.out.println("--------------------"+msc.toString());
            			if(msc!=null){
          		mp.setWebsiteid(msc.getSiteid().intValue());
          		mp.setLevel(msc.getLevel());
          		mp.setName(msc.getName());
          		mp.setParentid(msc.getParentid());
     
          		if((childsite3.getwebsiteid() == msc.getSiteid()) && msc.getSiteid()==msc.getParentid() ){
          		
          		if( (msc.getSiteid()) && (msc.getParentid())){
          				
          				mp.setGetdymenu(mp.getGetdymenu());
          				System.out.println((msc.getSiteid()) == (msc.getParentid()));
          			}
       				//mp.setGetdymenu(mp.getGetdymenu());
            			}
            			}
            			mp.setType(childsite3.getType());
            			mp.setUrl(childsite3.getUrl());
            			mp.setTemplateid(childsite3.getTemplateid());
            			mp.setPagename(childsite3.getPagename());
            			System.out.println("+++++++++++++++"+mp);
            			menusarray.add(mp);
            		}
            	}*/
            
     
         //   -------------------------Add two Service class ---------------------------
         //  model.addAttribute("comm", commandService.listByCommand(templateId, pageid, siteid.intValue()));
          /*  List<Portfolio1> kk = new ArrayList<>();
            
            
           if(comm1!=null){
        	   for (Command command : comm1) {

        		   System.out.println(command);
				if(command!=null){
					 Portfolio1 p = new Portfolio1();
					LikeDlike ld =likeDlikeService.getLikeDlike(templateId, pageid, websiteid, command.getId().intValue());
					System.out.println(ld);
					if(ld!=null){
						p.setClike(ld.getClike());
						p.setDlike(ld.getDlike());
						p.setCommandid(ld.getCommandid());
					}
					
					
					
					p.setCommandid(command.getId().intValue());
					p.setDate(command.getDate());
					p.setRating(command.getRating());
					p.setCommandmsg(command.getCommandmsg());
					System.out.println(p);
					kk.add(p);
				}
				
			}
        	   System.out.println(kk);
           }
            
            model.addAttribute("likdlik", kk);
           */
		/*	model.addAttribute("comm",commandService.getCommand(templateId, pageid, siteid.intValue()));*/
            //   -------------------------XXX---------------------------   
          
          
		
	/*
	@RequestMapping(value = "/BlogForm/{siteid}/{pageid}")
	public String blogformRedirect(@PathVariable Long siteid,@PathVariable int pageid, Model model) 
	{
		try{
			int templateId =childService.get( new Long(pageid)).getTemplateid();
			String templateName = templateDao.findOne(templateId).getName();
		List<Image> images = imageDao.listByTemplate(templateId, pageid, siteid.intValue());
			model.addAttribute("images", images);
		model.addAttribute("blogf",blogFormService.getBlogForm(templateId, pageid, siteid.intValue()));
			model.addAttribute("portfolio",portfolioService.getPortfolio(templateId, pageid, siteid.intValue()));
		return "/templatevalue/"+templateName;
		}
		catch(Exception e){
			return "/error/404";
		}
		
	}*/
	@RequestMapping(value="/default/{siteid}/{pageid}")
	
	public String defaultPage(Model model,@PathVariable Long siteid,@PathVariable Long pageid){
		model.addAttribute("type", "web");
		model.addAttribute("siteid", siteid);
		System.out.println("9999999999999999999999");
		System.out.println(siteid);
		model.addAttribute("pageid", pageid);
		
		 Header head=headerService.geth(siteid.intValue());
          Footer foottitle=footerService.geth(siteid.intValue());
		 System.out.println(head);
         model.addAttribute("headerobj", head);
         model.addAttribute("pages", childService.getAllPages(siteid.intValue(), 0));
      
         model.addAttribute("menuAll", childService.getAllPages(siteid.intValue(), 0));
         model.addAttribute("footerbj", foottitle);
         
         // Menu Dynamic
        // Inte
         List<Childsite> childPages=childService.getAllPages(siteid.intValue(), 0) ;

         
         List<Menu> menuList = menuService.getMenusWithSiteid(siteid);   
         Long rootid =0l;
         for(Menu menuId:menuList){
        	 if(menuId.getParentid()==0){
        		 rootid=menuId.getId();
        		 break;
        	 }
         }
         
       //  List<Menu> menuList = menuService.getMenusWithSiteid(siteid);    
        List<MenusPage> mainarraymenu=new ArrayList<MenusPage>();
         List<MenusPage> menusarray=new ArrayList<MenusPage>();
         List<MenusPage> submenu=new ArrayList<MenusPage>();
         
         if(childPages!=null){
        	 for(Childsite childsite:childPages){
        	
        		 
        //	List<Integer> singlesiteid=menuService.getAllMenu(siteid);
        //	System.out.println("__print site id"+singlesiteid.toString());
        		List<Menu> menuLIST=menuService.getCheck((long)childsite.getwebsiteid(), childsite.getId()) ;
        		  MenusPage menuPage =new MenusPage();
					 menuPage.setPagename(childsite.getPagename());
					 menuPage.setSiteid(childsite.getwebsiteid());
					 /*menuPage.setLevel(menu.getLevel());*/
					
					 menuPage.setUrl(childsite.getUrl());
					 menuPage.setType(childsite.getType());
     	 for(Menu mm:menuLIST){
        	
        				
        		
        		if(mm!=null){
        			if(mm.getPagenameid()!=null && mm.getParentid()!=null){
        				 List<Menu> submenuvalue = menuService.getCheckParentId(mm.getSiteid(), mm.getId()) ; 
        				 List<Menu> submenuvalue1= new ArrayList<>();
        				 for (Menu menu : submenuvalue) {
        					 
							if(menu.getPagenameid() == mm.getPagenameid()){
							
								
							}else if(menu.getId() == menu.getParentid()){
								submenuvalue1.add(menu);
							}
							
        				 
                		// menuPage.setGetdymenu(submenuvalue1);
        				 menuPage.setGetdymenu( submenuvalue);
                		 System.out.println("sssssssssssssssssssss"+submenuvalue.toString());
        			}
        					menuPage.setParentid(mm.getParentid()); 
        			menuPage.setName(mm.getName());
                	menuPage.setLevel(mm.getLevel());
            		
        		}
        	
        	
        		
        
        		 }
        	 mainarraymenu.add(menuPage);
        	 
     		System.out.println(mainarraymenu.toString());
     		
        	 
        	/*	 for(Menu menu:menuList){
        			 if(menu.getPagenameid()!=null){
        				 if(menu.getPagenameid()==childsite.getId()){
        					 MenusPage menuPage =new MenusPage();
        					 menuPage.setPagename(childsite.getPagename());
        					 menuPage.setSiteid(childsite.getwebsiteid());
        					 menuPage.setLevel(menu.getLevel());
        					 menuPage.setName(menu.getName());
        					 menuPage.setUrl(childsite.getUrl());
        					 menuPage.setType(childsite.getType());
        					 menuPage.setParentid(menu.getParentid());
        					 System.out.println("id;;;;;;;;;;;;;;;;;;;"+menu.getId());
        					 System.out.println("prent id;;;;;;;;;;;;;;;;;;;"+menu.getParentid());
        					 menuPage.setPagenameid(menu.getPagenameid());
        				
        					// System.out.println("menu page >>>>>>>>>>>>>>......."+menuPage.toString());
        					menusarray.add(menuPage);
     if  (menu.getId()==menu.getParentid()){
                    	 
                    	 System.out.println("SUb meni ID..............."+menu.getId());
                    	 
                    	 
                    	
                    	 menuPage.setPagename(childsite.getPagename());
    					 menuPage.setSiteid(childsite.getwebsiteid());
    					 menuPage.setLevel(menu.getLevel());
    					 menuPage.setName(menu.getName());
    					 menuPage.setUrl(childsite.getUrl());
    					 menuPage.setType(childsite.getType());
    					 menuPage.setParentid(menu.getParentid());
    					 menuPage.setPagenameid(menu.getPagenameid());
    					 submenu.add(menuPage);
    				      menusarray.addAll(submenu);
    					 mainarraymenu.addAll(menusarray);
    					 System.out.println("________Menu Sub __________"+mainarraymenu.toString());
                     }
        					 
        					 break;
        					
        				 }
        				 
        				
        				 
        				 break;
        				 
        			 }*/
     		
     
        	 }
        	 }
      
         }
    	 System.out.println(menusarray);
    	 System.out.println("Main menu -----------"+mainarraymenu.toString());
 model.addAttribute("rootId",rootid);
         model.addAttribute("menushow2", mainarraymenu);
      	
		return "/portal_admin/default";
	}
	
	
	public String dynamicmenu(Model model,@PathVariable Long siteid,@PathVariable Long pageid){
		
		
	
				/*listBySiteId(pageName, siteid.intValue(), 0, url);*/
	
		return   "/templatevalue/";
		
	}
/*	@RequestMapping(method = RequestMethod.GET,value="/{siteName}/{pageName}")
	public @ResponseBody JSONObject page1(@PathVariable String siteName,@PathVariable String pageName,Model model){
		
		
		JSONObject pagemenu=new JSONObject();
		JSONArray menuc=new JSONArray();
		List<Childsite> listmenu=new ArrayList<Childsite>();
		site siteStatus =siteService.findByName(siteName);
	 
			Childsite childsite =childService.findByPagename(pageName,siteStatus.getId().intValue(),0);
	
		return pagemenu; 
	}*/
	
	/*List<Childsite> childpages1=new ArrayList<Childsite>();
	childpages1.add(childsite.getUrl());
	childpages1.add(childsite.getwebsiteid());
	childpages1.add(childsite.getPagename());
	childpages1.add(childsite.getType());
	childpages1.add(childsite.getTemplateid());
	for(int i=0; i<childpages1.size(); i++){
	childpages=(List<Childsite>) childService.listBySiteId(childsite.getPagename(), siteid.intValue());
for(int i=0; i<childpages.size(); i++){
	List<Menu> listmenu=menuService.getMenusWithSiteid(siteid);
	listmenu.
}
	return null;*/
	
}
