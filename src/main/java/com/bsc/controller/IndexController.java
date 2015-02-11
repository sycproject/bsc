package com.bsc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sys")
public class IndexController {

	@RequestMapping("/index")
	public String index(){
		System.out.println("跳转到首页");
		return "index";
	}
}
