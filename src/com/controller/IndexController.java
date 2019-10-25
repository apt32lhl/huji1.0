package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.User;
import com.service.UserService;

@Controller
@RequestMapping("/right/index")
public class IndexController {
	@Autowired
	private UserService userService;
	@RequestMapping("/register")
	public String register(Model model){
		model.addAttribute("user", new User());
		return "/right/register";
	}
	@RequestMapping("/login")
	public String login(@ModelAttribute User user,Model model,HttpSession session){
		user = new User();
		model.addAttribute("user", user);
		if(userService.login(user)){
			session.setAttribute("user", user);
			return "success";
		}
		model.addAttribute("errorMessage", "用户名或密码错误");
		return "welcome";
	}
}
