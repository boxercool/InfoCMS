package com.infotop.model.web;

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
import com.infotop.model.entity.ModelTable;
import com.infotop.model.service.ModelTableService;

@Controller
@RequestMapping(value="/modelController")
public class ModelTableController {
	

	@Autowired
	private ModelTableService modelTableService;
	@Autowired
	private ChannelService channelService;
	
	@RequestMapping(value="/list")
	public String list(@RequestParam(value = "sortType", defaultValue = "auto") String sortType,
			@RequestParam(value = "page", defaultValue = "1") int pageNumber, Model model, 
			ServletRequest request, HttpServletResponse reponse) {
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(request, "search_");
		Page<ModelTable> modelTableInfo = modelTableService.getAllModelTableInfo(searchParams,pageNumber, 2, sortType);
		model.addAttribute("modelf",modelTableInfo);
		model.addAttribute("searchParams", Servlets.encodeParameterStringWithPrefix(searchParams, "search_"));
		model.addAttribute("sortType", sortType);
		model.addAttribute("pagination", 2);
		model.addAttribute("action", "list");
		
		
		//model.addAttribute("chennal",chennalService.getAll());
		return "model/ModelList";
	}
	
	@RequestMapping(value="/create",method=RequestMethod.GET)
	public String create(Model model){
		model.addAttribute("modelf",new ModelTable());
	model.addAttribute("channel",channelService.getAll());
	model.addAttribute("action", "create");
		return "model/AddModel";
	}
	
	@RequestMapping(value="/create",method=RequestMethod.POST)
	public String create(@ModelAttribute("modelTable")ModelTable modelTable,Model model){
	modelTable.setCreatedate(getDateTime());
		modelTableService.save(modelTable);
	//	chennalService.save(chennalForm);
		return "redirect:/Model1/list";
	}

	@RequestMapping(value = "/view/{modelid}",method=RequestMethod.GET)
	public String view(@PathVariable Long modelid,Model model){
		model.addAttribute("modelf",modelTableService.get(modelid));
		return"model/viewModel";
	}
	@RequestMapping(value = "/edit/{modelid}",method=RequestMethod.GET)
	public String edit(@PathVariable Long modelid,Model model){
		model.addAttribute("modelf",modelTableService.get(modelid));
		model.addAttribute("channel",channelService.getAll());
		model.addAttribute("action", "edit");
		return "model/AddModel";
	}
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	 public String edit(@ModelAttribute("modelTable")ModelTable modelTable,Model model){
		modelTable.setCreatedate(getDateTime());
	
		modelTableService.save(modelTable);
		
		return "redirect:/Model1/list";
		 
	 }
	@RequestMapping(value="/delete/{modelid}",method=RequestMethod.GET)
	public String delete(@PathVariable Long modelid,Model model){
		modelTableService.delete(modelid);
	return "redirect:/Model1/list";
	}

	public String getDateTime(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date=new Date();
		return sdf.format(date);
	}
	
	@RequestMapping(value="/template/{modelid}",method=RequestMethod.GET)
	public String template(@PathVariable Long modelid,Model model){
		System.out.println(model);
		System.out.println(modelid);
		model.addAttribute("modelf",modelTableService.get(modelid));
		System.out.println(model);
		System.out.println(modelid);
		
		return"model/viewModel";
	}
	

}
