package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.User;

@Controller
@RequestMapping("/index")
public class IndexController {
	@RequestMapping("/register")
	public String register(Model model){
		model.addAttribute("user", new User());
		return "/right/register";
	}
	@RequestMapping("/login")
	public String login(Model model){
		model.addAttribute("user", new User());
		return "/user/login";
	}
}
