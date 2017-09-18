package com.infotop.template.web;
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

import com.infotop.footer.entity.Footer;
import com.infotop.template.entity.Template;
import com.infotop.template.service.TemplateService;

@Controller
@RequestMapping(value="/template")
public class TemplateController {
	
	@Autowired
	private TemplateService templateService;
	
	
	
	@RequestMapping(value="/list")
	public String list(@RequestParam(value="sortType", defaultValue="auto") String sortType,
			@RequestParam(value="page", defaultValue="1") int pageNumber, Model model,
			ServletRequest request, HttpServletResponse response) {
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(request, "search_");
		Page<Template> templateInfos = templateService.getAlltemplateInfo(searchParams, pageNumber, 3, sortType);
		model.addAttribute("list", templateInfos);
		model.addAttribute("searchParams", Servlets.encodeParameterStringWithPrefix(searchParams, "search_"));
		model.addAttribute("sortType", sortType);
		model.addAttribute("pagination", 3);
		model.addAttribute("action", "list");
		model.addAttribute("templates", templateService.getall());
		return "templates/list";
	}
	

	@RequestMapping(value="/create",method=RequestMethod.GET)
	public String create(Model model){
		model.addAttribute("template", new Template());
		return "/templates/add";
	}
	
	@RequestMapping(value="/create",method=RequestMethod.POST)
	public String create(@ModelAttribute Template template,Model model){
		templateService.save(template);
		return "redirect:/template/list";
	}
	
	@RequestMapping(value="/view/{id}",method= RequestMethod.GET)
	public String view(@PathVariable int id,Model model){
		model.addAttribute("template",templateService.get(id));
		return "templates/view";
	}
	
	@RequestMapping(value="/edit/{id}",method= RequestMethod.GET)
	public String edit(@PathVariable int id,Model model){
		model.addAttribute("template",templateService.get(id));
		return "templates/add";
	}
	
	@RequestMapping(value="/delete/{id}",method= RequestMethod.GET)
	public String delete(@PathVariable int id,Model model){
		templateService.delete(id);
		return "redirect:/template/list";
	}
}
