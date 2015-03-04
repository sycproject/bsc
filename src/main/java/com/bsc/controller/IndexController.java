package com.bsc.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSONObject;
import com.bsc.aop.MethodLog;
import com.bsc.common.AjaxUtils;
import com.bsc.service.ResourcesService;

@Controller
@RequestMapping("/sys/index")
public class IndexController {
	
	@Resource(name="resourcesService")
	private ResourcesService resourcesService;

	@RequestMapping("/toUrl")
	@MethodLog(remark = "跳转页面===============")  
	public String index(String page){
		System.out.println("跳转到首页");
		if(StringUtils.isEmpty(page)){
			return "index";
		}else{
			return "pages/"+page;
		}
	}
	
	@RequestMapping(value="/res",method= RequestMethod.POST)
	public void resource(HttpServletResponse response){
		JSONObject object = new JSONObject();
		Map<String, Object> resourceMap = resourcesService.getResources();
		object.put("resourcesMap", resourceMap);
		String json = object.toJSONString();
		AjaxUtils.wirte(response, json);
	}
	
}
