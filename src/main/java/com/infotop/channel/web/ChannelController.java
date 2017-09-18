package com.infotop.channel.web;

import java.text.SimpleDateFormat;
import java.util.Date;
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

import com.infotop.channel.entity.Channel;
import com.infotop.channel.service.ChannelService;


@Controller
@RequestMapping(value="/Channel")
public class ChannelController {
	
	@Autowired
	private ChannelService channelService;
	
	@RequestMapping(value="/list")
	public String list(@RequestParam(value = "sortType", defaultValue = "auto") String sortType,
			@RequestParam(value = "page", defaultValue = "1") int pageNumber, Model model, 
			ServletRequest request, HttpServletResponse reponse) {
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(request, "search_");
		Page<Channel> ChannelInfo = channelService.getAllChannelInfo(searchParams,pageNumber, 2, sortType);
		model.addAttribute("channel",ChannelInfo);
		model.addAttribute("searchParams", Servlets.encodeParameterStringWithPrefix(searchParams, "search_"));
		model.addAttribute("sortType", sortType);
		model.addAttribute("pagination", 2);
		model.addAttribute("action", "list");
		return "channel/ChannelList";
	}
	@RequestMapping(value="/create",method=RequestMethod.GET)
	public String create(Model model){
		model.addAttribute("channel",new Channel());
		model.addAttribute("action", "create");
		return "channel/AddChannel";
	}
	
	@RequestMapping(value="/create",method=RequestMethod.POST)
	public String create(@ModelAttribute("channel")Channel channel,Model model){
		channel.setCreatedate(getDateTime());
		channelService.save(channel);
		return "redirect:/Channel/list";
	}

	@RequestMapping(value = "/view/{channelid}",method=RequestMethod.GET)
	public String view(@PathVariable Long channelid,Model model){
		model.addAttribute("channel", channelService.get(channelid));
		return "channel/viewChannel";
	}
	@RequestMapping(value = "/edit/{channelid}",method=RequestMethod.GET)
	public String edit(@PathVariable Long channelid,Model model){
		model.addAttribute("channel", channelService.get(channelid));
	
		model.addAttribute("action", "edit");
		return "channel/AddChannel";
	}
	

	@RequestMapping(value="/edit",method=RequestMethod.POST)
	 public String edit(@ModelAttribute("channel")Channel channel,Model model){
		channel.setCreatedate(getDateTime());
	
		channelService.save(channel);
		
		return "redirect:/Channel/list";
		 
	 }
	
	@RequestMapping(value="/delete/{channelid}",method=RequestMethod.GET)
	public String delete(@PathVariable Long channelid,Model model){

		channelService.delete(channelid);
		
		return "redirect:/Channel/list";
	}


	

	
	public String getDateTime(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date=new Date();
		return sdf.format(date);
	}


}
