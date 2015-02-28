package com.bsc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSONObject;
import com.bsc.common.AjaxUtils;
import com.bsc.common.DataTableRequest;
import com.bsc.common.DataTableResponse;
import com.bsc.common.JsonUtils;
import com.bsc.entity.User;
import com.bsc.service.UserService;

@Controller
@RequestMapping("/sys/user")
public class UserController {

	@Resource(name="userService")
	private UserService userService;
	
	@RequestMapping(value="/list",method= RequestMethod.POST)
	public void list(DataTableRequest dataTableRequest,HttpServletResponse response){
		
		String[] aColumns = dataTableRequest.getSColumns().split(",");
		
		Map<String,Object> searchCondition = new HashMap<String,Object>();
		searchCondition.put("sSearch", dataTableRequest.getSSearch());
		searchCondition.put("orderCol", aColumns[dataTableRequest.getISortCol_0()]);
		searchCondition.put("aColumns", aColumns);
		searchCondition.put("orderReg", dataTableRequest.getSSortDir_0());
		searchCondition.put("startIndex", dataTableRequest.getIDisplayStart());
		searchCondition.put("pageSize", dataTableRequest.getIDisplayLength());
		List<User> results  = userService.getListByPage(searchCondition);
		int totalCount = userService.getTotalCount(searchCondition);
		String json = JsonUtils.toJsonObject(new DataTableResponse(totalCount, totalCount, dataTableRequest.getSEcho(), results));
		AjaxUtils.wirte(response, json);
	}
	
	@RequestMapping(value="/doAdd",method= RequestMethod.POST)
	public void doAdd(User user,HttpServletResponse response){
		JSONObject object = new JSONObject();
		if(user != null){
			userService.addUser(user);
			object.put("msg", "ok");
		}else{
			object.put("msg", "error");
		}
		String json = object.toJSONString();
		AjaxUtils.wirte(response, json);
	}
	
	@RequestMapping(value="/preEdit",method= RequestMethod.POST)
	public void preEdit(Integer id,HttpServletResponse response){
		JSONObject object = new JSONObject();
		if(id != null){
			User user = userService.findUserById(id);
			object.put("msg", "ok");
			object.put("user", user);
		}else{
			object.put("msg", "error");
		}
		String json = object.toJSONString();
		AjaxUtils.wirte(response, json);
	}
	
	@RequestMapping(value="/doEdit",method= RequestMethod.POST)
	public void doEdit(User user,HttpServletResponse response){
		JSONObject object = new JSONObject();
		if(user != null){
			userService.updateUser(user);
			object.put("msg", "ok");
		}else{
			object.put("msg", "error");
		}
		String json = object.toJSONString();
		AjaxUtils.wirte(response, json);
	}
	
	@RequestMapping(value="/doDelete",method= RequestMethod.POST)
	public void doDelete(User user,HttpServletResponse response){
		JSONObject object = new JSONObject();
		if(user != null){
			userService.deleteUser(user);
			object.put("msg", "ok");
		}else{
			object.put("msg", "error");
		}
		String json = object.toJSONString();
		AjaxUtils.wirte(response, json);
	}
	
	@RequestMapping(value="/doDetail",method= RequestMethod.POST)
	public void doDetail(Integer id,HttpServletResponse response){
		JSONObject object = new JSONObject();
		if(id != null){
			User user = userService.findUserById(id);
			object.put("msg", "ok");
			object.put("user", user);
		}else{
			object.put("msg", "error");
		}
		String json = object.toJSONString();
		AjaxUtils.wirte(response, json);
	}
}
