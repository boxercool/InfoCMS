package com.infotop.system.account.web;

import java.security.NoSuchAlgorithmException;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.infotop.system.account.entity.User;
import com.infotop.system.account.service.AccountService;

@Controller
@RequestMapping(value="/register")
public class RegisterController {
	@Autowired
	private AccountService accountService;
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String register(Model model){
		
		return "account/register";
	}
	
	@RequestMapping(value="create",method = RequestMethod.POST)
	//@ResponseBody
	public String register(@Valid User user,
			RedirectAttributes redirectAttributes,Model model)
			throws NoSuchAlgorithmException {
		
		
		if(accountService.findUserByLoginName(user.getLoginName()) == null){
			accountService.registerUser(user);
			model.addAttribute("msg", "login name  exist");
			return "account/login";
		}
		else{
			model.addAttribute("msg", "login name already exist");
			return "account/register";
		}	

		//redirectAttributes.addFlashAttribute("username", user.getLoginName());
		
		/*msg.setSuccess(true);
		msg.setMessage("添加用户" + user.getLoginName() + "成功");
		msg.setData(user);*/
		
	}
}
