package com.bsc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.bsc.common.AjaxUtils;
import com.bsc.common.DataTableRequest;
import com.bsc.common.DataTableResponse;
import com.bsc.common.JsonUtils;
import com.bsc.entity.SysLog;
import com.bsc.service.SysLogService;

@Controller
@RequestMapping("/sys/log")
public class SysLogController {

	@Resource(name="sysLogService")
	private SysLogService sysLogService;
	
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
		List<SysLog> results  = sysLogService.getListByPage(searchCondition);
		int totalCount = sysLogService.getTotalCount(searchCondition);
		String json = JsonUtils.toJsonObject(new DataTableResponse(totalCount, totalCount, dataTableRequest.getSEcho(), results));
		AjaxUtils.wirte(response, json);
	}
}
