package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manager")
public class ManagerController {
	@RequestMapping("/login")
	public String login(){
		System.out.println("登录成功");
		return "";
	}
}
