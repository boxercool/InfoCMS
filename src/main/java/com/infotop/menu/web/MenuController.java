package com.infotop.menu.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springside.modules.web.Servlets;

import com.infotop.childsite.entity.Childsite;
import com.infotop.childsite.service.childService;
import com.infotop.menu.entity.Menu;
import com.infotop.menu.service.MenuService;
import com.infotop.site.entity.site;
import com.infotop.site.service.Siteservice;

@Controller
@RequestMapping(value="/menu")
public class MenuController {
	
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private Siteservice siteService;
	
	@Autowired
	private childService childService;
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/treemenu/{siteId}",method=RequestMethod.GET)
	public String menutree(@PathVariable int siteId,Model model) 
	{
		model.addAttribute("siteId", siteId);
		System.out.println("websiteid"+siteId);
		
		JSONArray jsonArray1 = new JSONArray();
	    List<Childsite> pagename=new ArrayList<Childsite>();
	    pagename=childService.getAllPages(siteId, 0);
	    System.out.println("site data");
	    for (int i=0;i<pagename.size();i++){
	    	JSONObject like2 = new JSONObject();
	    	like2.put("id", pagename.get(i).getId());
	    	like2.put("pagename", pagename.get(i).getPagename());
	    	jsonArray1.add(like2);
	    }
	    
	    System.out.println(jsonArray1);
	    model.addAttribute("modules", jsonArray1);
	   
		return "/menu/treemenu";
	}
	
	
	
	@RequestMapping(value="/listsites")
	public String list(@RequestParam(value = "sortType", defaultValue="auto") String sortType,
			@RequestParam(value="page", defaultValue="1") int pageNumber, Model model,
			ServletRequest request, HttpServletResponse response)
	{
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(request, "search_");
		Page<site> siteInfos = siteService.getAllsiteInfo(searchParams, pageNumber, 3, sortType);
		
		model.addAttribute("sitelist",siteInfos);
		model.addAttribute("searchParams", Servlets.encodeParameterStringWithPrefix(searchParams, "search_"));
		model.addAttribute("sortType", sortType);
		model.addAttribute("pagination", 3);
		model.addAttribute("action", "list");
		
		return "menu/listsites";
		
	}   
  
	
	@RequestMapping(value="/treemenu1/{siteId}",method=RequestMethod.GET)
	public @ResponseBody JSONObject menutree1(@PathVariable Long siteId, Model model) 
	{
		JSONObject jsonObject = getJsonFromMyFormObject(menuService.getMenusWithSiteid(siteId));
		if(menuService.getMenusWithSiteid(siteId).size()<=0){
			System.out.println("in json");
			Menu menuNew =new Menu();
			menuNew.setName("Root");
			menuNew.setParentid(0l);
			menuNew.setSiteid(siteId);
			menuService.save(menuNew);
			JSONObject jsonObjectNew = getJsonFromMyFormObject(menuService.getMenusWithSiteid(siteId));
			return jsonObjectNew;
		}
		model.addAttribute("siteid", siteId);
		return  jsonObject;
	}
	
	
	@RequestMapping(value="/datamenu",method=RequestMethod.POST)
	public String menutree2(@ModelAttribute("menu")Menu menu, Model model) 
	{
		System.out.println(menu.getPagenameid());
		System.out.println(menu.getSiteid());
		System.out.println("hello to post");
		List<Menu> menuser= new ArrayList<Menu>();
		menuser=menuService.getCheck(menu.getSiteid(), menu.getPagenameid());
		System.out.println(menuser);
		if(menuser.isEmpty()){
			System.out.println("its empty"); 
			menuService.save(menu);
			System.out.println(menu);
			return "redirect:/menu/treemenu/"+menu.getSiteid();
			
		}else{
		System.out.println("its not empty");
		model.addAttribute("PageError","Page Name is already reserved");
		 return menutree(menu.getSiteid().intValue(),model);
		
		}
	}
	
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable Long id, Model model) 
	{
		
		//menuService.deleteMenusWithParentid(id);
		deleteMenu(id);
		return "redirect:/menu/treemenu";
	}
	 @SuppressWarnings("unchecked")
	public static JSONObject getJsonFromMyFormObject(List<Menu> menu)
	  {
	    JSONObject responseDetailsJson = new JSONObject();
	    JSONArray jsonArray = new JSONArray();
 
	    for (int i = 0; i < menu.size(); i++)
	    {
	      JSONObject menus = new JSONObject();
	      menus.put("id", menu.get(i).getId());
	      menus.put("parentid", menu.get(i).getParentid());
	      menus.put("text", menu.get(i).getName());

	      jsonArray.add(menus);
	    }
	    responseDetailsJson.put("menus", jsonArray);
	    return responseDetailsJson;
	  }
	 
	 public void deleteMenu(Long id){
		 List<Menu> menus = menuService.getMenusWithParentid(id);
		 menuService.delete(id);
		 System.out.println("init:"+ id);
		 for(Menu menu : menus){
			 System.out.println("menu:"+menu.getId());
			deleteMenu( menu.getId());
			 
		 }
		
	 }
}
