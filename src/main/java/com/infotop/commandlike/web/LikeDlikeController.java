package com.infotop.commandlike.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.infotop.commandlike.entity.LikeDlike;
import com.infotop.commandlike.service.LikeDlikeService;

@Controller
@RequestMapping(value="/MainLike")
public class LikeDlikeController {
	@Autowired
	private LikeDlikeService likeDlikeService;
	
	@SuppressWarnings({ "unchecked" })
	@RequestMapping(value="/create", method = RequestMethod.POST)
	public @ResponseBody JSONObject create( @RequestBody LikeDlike likeDlike ,HttpServletRequest request,Model model){
	
		System.out.println("Its running..........."+likeDlike); 
		
		 
		
		System.out.println(likeDlike.getClike()); 
		System.out.println(likeDlike.getDlike()); 
	
		
	   //  likeDlikeService.save(likeDlike);
		

		LikeDlike  likestr=likeDlikeService.getLikeDlike(likeDlike.getTemplateid(), likeDlike.getPageid(), likeDlike.getWebsiteid(), likeDlike.getCommandid());
		System.out.println(likestr);
		
		if(likestr == null){
			if(likeDlike.getClike() == 1)
			{
				likeDlike.setClike(1);
			}else{
				likeDlike.setDlike(1);
			}
						
			likeDlikeService.save(likeDlike);
		}else{
		
			if(likeDlike.clike != 0){
				
				likestr.setClike(likestr.clike+1);
				likeDlikeService.save(likestr);
			}else{
				
				likestr.setDlike(likestr.dlike+1);
				likeDlikeService.save(likestr);
			}
			
			
		}
		
		/*if(likeDlike.clike != 0){
			
			likestr.setClike(likestr.clike+1);
			System.out.println(likestr.clike);
		}
		else if(likeDlike.dlike != 0){
			
			likestr.setClike(likestr.dlike+1);
			System.out.println(likestr.dlike);
		}
		
		
		likeDlikeService.save(likestr);*/
	
         JSONObject likeDlikeJson = new JSONObject();
         JSONArray likeJson = new JSONArray();
		 List<LikeDlike> like1 = new ArrayList<LikeDlike>();
		   
		like1=likeDlikeService.listByLikeDlike(likeDlike.getTemplateid(),likeDlike.getPageid(), likeDlike.getWebsiteid(), likeDlike.getCommandid());
	
		 // System.out.println(like1);
	   
	
		   
		  for (int i = 0; i <like1.size(); i++)
		    {
		    	
		    	JSONObject like2 = new JSONObject();
		    	like2.put("id", like1.get(i).getId());
		    	like2.put("templateid",like1.get(i).getTemplateid());
		    	like2.put("pageid", like1.get(i).getPageid());
		    	like2.put("getWebsiteid", like1.get(i).getWebsiteid());
		    	like2.put("blogid", like1.get(i).getBlogid());
		    	like2.put("commandid", like1.get(i).getCommandid());
		    	like2.put("clike", like1.get(i).getClike());
		    	like2.put("dlike",like1.get(i).getDlike());
		    	likeJson.add(like2);
			
		    }
		
		  likeDlikeJson.put("like2", likeJson);
	 System.out.println(likeDlikeJson);
		
		   return likeDlikeJson;
		
	}

}
