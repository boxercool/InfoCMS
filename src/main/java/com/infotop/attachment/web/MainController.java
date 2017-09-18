package com.infotop.attachment.web;

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

import com.infotop.attachment.entity.Attachment;
import com.infotop.attachment.service.AttachmentService;


@Controller
@RequestMapping(value = "/main")
public class MainController /*extends BasicController*/ {

	@Autowired
	private AttachmentService attachmentService;
	
	
	 @RequestMapping(value = "/list")
		public String list(@RequestParam(value = "sortType", defaultValue = "auto") String sortType,
				@RequestParam(value = "page", defaultValue = "1") int pageNumber, Model model, 
				ServletRequest request, HttpServletResponse reponse) {
			Map<String, Object> searchParams = Servlets.getParametersStartingWith(request, "search_");
			Page<Attachment> attachmentInfos = attachmentService.getAllAttachmentinfo(searchParams,pageNumber, 2, sortType);
			model.addAttribute("attachment",attachmentInfos );
			model.addAttribute("searchParams", Servlets.encodeParameterStringWithPrefix(searchParams, "search_"));
			model.addAttribute("sortType", sortType);
			model.addAttribute("pagination", 2);
			model.addAttribute("action", "list");
			return "attachment/list";
		}
	
	
	@RequestMapping(value="/create",method = RequestMethod.GET)
	public String create(Model model) {
		 model.addAttribute("attachment", new Attachment());
		 model.addAttribute("action", "create");
	     return "attachment/add";
	
	}
	
	
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String create(@ModelAttribute("attachment") Attachment attachment,Model model ) {
		attachmentService.save(attachment);
		return "redirect:/main/list";
	}
	
	
	@RequestMapping(value="/view/{id}",method = RequestMethod.GET)
	public String view(@PathVariable Long id,Model model) {
			
		 model.addAttribute("attachment", attachmentService.get(id));
	     return "attachment/view";
	
	}
	
	
	@RequestMapping(value="/edit/{id}",method=RequestMethod.GET)
	 public String edit(@PathVariable Long id,Model model){
		model.addAttribute("attachment", attachmentService.get(id));
		model.addAttribute("action", "edit");
		return "attachment/add";
		 
	 }
	
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	 public String edit(@ModelAttribute("attachment") Attachment attachment,Model model){
		attachmentService.save(attachment);
		return "redirect:/main/list";
		 
	 }
	
	
	 @RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	    public String delete(@PathVariable Long id,Model model)  {
		 	attachmentService.delete(id);
	        return "redirect:/main/list";
	  }
	 

}
