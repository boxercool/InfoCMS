package com.infotop.attribute.web;

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

import com.infotop.attribute.entity.Attribute;
import com.infotop.attribute.service.AttributeService;
import com.infotop.model.entity.ModelTable;
import com.infotop.model.service.ModelTableService;


@Controller
@RequestMapping(value="/type")
public class AttributeController {
	
	@Autowired
	private AttributeService attributeService;
	@Autowired
	private ModelTableService modelTableService;


	@RequestMapping(value="/list")
	public String list(@RequestParam(value = "sortType", defaultValue = "auto") String sortType,
			@RequestParam(value = "page", defaultValue = "1") int pageNumber, Model model, 
			ServletRequest request, HttpServletResponse reponse) {
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(request, "search_");
		Page<Attribute> attributeInfo = attributeService.getAllAttributeInfo(searchParams,pageNumber, 2, sortType);

		model.addAttribute("attribute",attributeInfo);
		model.addAttribute("searchParams", Servlets.encodeParameterStringWithPrefix(searchParams, "search_"));

		model.addAttribute("sortType", sortType);
		
		model.addAttribute("pagination", 2);
				model.addAttribute("action", "list");
		
		return "att/AttributeList";
	}

	@RequestMapping(value="/create",method=RequestMethod.GET)
	public String create(Model model){
		
		model.addAttribute("attribute",new Attribute());
		model.addAttribute("data",modelTableService.getAll());
		System.out.println(modelTableService.getAll());
		model.addAttribute("action", "create");
		return "/att/AddAttribute";
	}
	@RequestMapping(value="/create",method=RequestMethod.POST)
	public String create(@ModelAttribute("attribute1")Attribute attribute1,Model model){
		attribute1.setCreatedate(getDateTime());
	attributeService.save(attribute1);
	//	chennalService.save(chennalForm);
		return "redirect:/type/list";
	}

	@RequestMapping(value = "/view/{attributeid}",method=RequestMethod.GET)
	public String view(@PathVariable int attributeid,Model model){
		
		model.addAttribute("attribute",attributeService.get(attributeid));
		System.out.println("99423424852452525245");
		return"att/viewAttribute";
	}
	@RequestMapping(value = "/edit/{attributeid}",method=RequestMethod.GET)
	public String edit(@PathVariable int attributeid,Model model){
		model.addAttribute("attribute",attributeService.get(attributeid));
		model.addAttribute("data",modelTableService.getAll());
		model.addAttribute("action", "edit");
		return"att/AddAttribute";
	}
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	 public String edit(@ModelAttribute("modelTable")Attribute attribute,Model model){
		attribute.setCreatedate(getDateTime());
	
		attributeService.save(attribute);
		
		return "redirect:/type/list";
		 
	 }
	@RequestMapping(value="/delete/{attributeid}",method=RequestMethod.GET)
	public String delete(@PathVariable int attributeid,Model model){
		attributeService.delete(attributeid);
	return "redirect:/type/list";
	}

	public String getDateTime(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date=new Date();
		return sdf.format(date);
	}

}
