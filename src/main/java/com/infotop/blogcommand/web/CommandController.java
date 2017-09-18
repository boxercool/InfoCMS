package com.infotop.blogcommand.web;



import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.infotop.blogcommand.entity.Command;
import com.infotop.blogcommand.service.CommandService;
import com.infotop.commandlike.entity.LikeDlike;
import com.infotop.commandlike.service.LikeDlikeService;


@Controller
@RequestMapping(value="/usercommand")
public class CommandController {
	
	
	/*@RequestParam int  templateid,
	@RequestParam int  pageid,
	@RequestParam int  websiteid,
	@RequestParam String  usercommand,
	@RequestParam int  rating,*/
	
	@Autowired
	private CommandService commandService;

	@Autowired
	private LikeDlikeService likeDlikeService;
	

		@SuppressWarnings("unchecked")
		@RequestMapping(value="/commandValues", method = RequestMethod.POST)
	  public @ResponseBody JSONObject submittedFromData(@RequestBody  Command command, HttpServletRequest request,Model model) {	
		System.out.println("Its running..........."+command);
		
		command.setDate(getDateTime());
	      command.setClike(0);
	      command.setDlike(0);
			commandService.save(command);
			 JSONObject responseDetailsJson = new JSONObject();
			    JSONArray jsonArray = new JSONArray();
			    List<Command> command1 = new ArrayList<Command>();
			    command1=commandService.listByCommand(command.getTemplateid(),command.getPageid(), command.getWebsiteid());
				System.out.println(command1);
				
				 
				 //LikeDlike1= LikeDlikeService.listbyLikeDlike(command.getTemplateid(),command.getPageid(), command.getWebsiteid());
			
				
				
				
				
				
				
			    for (int i = 0; i <command1.size(); i++) 
			    {
			    	
			    	JSONObject command2 = new JSONObject();
			    	command2.put("id", command1.get(i).getId());
			    	command2.put("templateid",command1.get(i).getTemplateid());
			    	command2.put("pageid", command1.get(i).getPageid());
			    	command2.put("getWebsiteid", command1.get(i).getWebsiteid());
			    	 command2.put("commandmsg", command1.get(i).getCommandmsg());
			    	 command2.put("rating", command1.get(i).getRating());
			    	 command2.put("date",command1.get(i).getDate());
				      jsonArray.add(command2);
				
			    }
			    
			    JSONArray jsonArray1 = new JSONArray();
				 List<LikeDlike> LikeDlike1 = new ArrayList<LikeDlike>();
				 LikeDlike1= likeDlikeService.listbyLikeDlike(command.getTemplateid(),command.getPageid(), command.getWebsiteid());
				 
				 
				System.out.println(LikeDlike1);
				
				for (int i = 0; i <LikeDlike1.size(); i++){
				
					JSONObject like2 = new JSONObject();
					like2.put("commandid",LikeDlike1.get(i).commandid);
					like2.put("clike",LikeDlike1.get(i).clike);
					like2.put("dlike", LikeDlike1.get(i).dlike);
					jsonArray1.add(like2);
				}
			    
			    
			    
			/*List<Command> command1 = new ArrayList<Command>();
			 command1=commandService.listByCommand(command.getTemplateid(),command.getPageid(), command.getWebsiteid());
			//Command command=(Command) commandService.getAll();
			 System.out.println(command1.toString());
			return	command1;*/
			responseDetailsJson.put("command2", jsonArray);
			responseDetailsJson.put("like2", jsonArray1);
		    return responseDetailsJson;
					}	
		

		
		
		
	/*public  @ResponseBody Command commandValues(@RequestBody @ModelAttribute Command command,HttpServletRequest request) {
		 String sqldata = request.getParameter("command");
		 ModelAndView("command1",commandService.listByCommand(command.getTemplateid(),command.getPageid(), command.getWebsiteid()));
	
		 System.out.println("print the main form:" +sqldata );
		
      command.setDate(getDateTime());
      command.setClike(0);
      command.setDlike(0);
		commandService.save(command);
		
	
		return command;
	}*/
	/*
	 private List<Command> ModelAndView(String string, List<Command> listByCommand) {
			// TODO Auto-generated method stub
			return null;
		}
*/




	//@RequestParam(value="templateid")String  templateid,
	 @RequestMapping(value="commandsave",method=RequestMethod.POST)
		public @ResponseBody  String commandsave(@RequestParam (value = "templateid") Long templateid) throws Exception{
			
			//System.out.println("print the main form:" +templateid );
		// String sqldata = request.getParameter("templateid");
		 //String sqldata1 = request	.getParameter("data");
		 
		 System.out.println("print the main form ---- :" +templateid );
		 
		// System.out.println("print thesqldata1 main form ---- :" +templateid );
			Command command1 = new Command();
			System.out.println("print valueeee :" +  command1.getId().toString() );
			/*command1.setTemplateid(templateid);
			command1.setPageid(pageid);
			command1.setWebsiteid(websiteid);
			command1.setUsercommand(usercommand);
			command1.setRating(rating);*/
			
					

			//commandService.save(command1);
			//commandService.
			System.out.println("print value:"+command1);
			return "command1";
		}
	 
	 public String getDateTime(){
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:aa");
			Date date=new Date();
			return sdf.format(date);
		}

}
