package com.bsc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sys/index")
public class IndexController {

	@RequestMapping("/toUrl")
	public String index(String page){
		System.out.println("跳转到首页");
		if(StringUtils.isEmpty(page)){
			return "index";
		}else{
			return "pages/"+page;
		}
	}
	
}
