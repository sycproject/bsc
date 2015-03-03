package com.bsc.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.alibaba.fastjson.JSON;
import com.bsc.common.CommonDao;
import com.bsc.entity.Resources;
import com.bsc.service.ResourcesService;
import com.bsc.utils.DateUtil;
import com.bsc.utils.ResourceUtil;


@Service("resourcesService")
public class ResourcesServiceImpl implements ResourcesService {

	@Resource(name="commonDao")
	private CommonDao commonDao;
	
	@Override
	public Resources getResourceById(String id) {
		// TODO Auto-generated method stub
		return commonDao.get("com.bsc.dao.ResourcesMapper.selectByPrimaryKey", id);
	}

	@Override
	public void addResources(Resources resources) {
		// TODO Auto-generated method stub
		commonDao.save("com.bsc.dao.ResourcesMapper.insert", resources);
	}

	@Override
	public void updateResources(Resources resources) {
		// TODO Auto-generated method stub
		commonDao.update("com.bsc.dao.ResourcesMapper.updateByPrimaryKey", resources);
	}

	@Override
	public void deleteResources(Resources resources) {
		// TODO Auto-generated method stub
		commonDao.delete("com.bsc.dao.ResourcesMapper.deleteByPrimaryKey", resources.getIds());
	}

	@Override
	public Map<String, Object> getResources() {
		// TODO Auto-generated method stub
		Date endDate = DateUtil.endDateByHour(new Date());
		Date startDate = DateUtil.startDateByHour(endDate, -24);
		
		String hostName = ResourceUtil.getOsLocalHostName(); // 获取本机名称
		
		Map<String,Object> params = new HashMap<String,Object>();
		params.put("hostname", hostName);
		params.put("startDate", DateUtil.getSqlTimestamp(startDate));
		params.put("endDate", DateUtil.getSqlTimestamp(endDate));
		
		List<Resources> list = commonDao.getList("com.bsc.dao.ResourcesMapper.getResourcesList", params);
		
		List<String> datesList = new LinkedList<String>();
		List<Integer> cpuList = new LinkedList<Integer>();
		List<Long> phymemoryList = new LinkedList<Long>();
		List<Long> jvmmemoryList = new LinkedList<Long>();
		List<Long> gccountList = new LinkedList<Long>();
		
		Long phymemory = 0l;
		Long jvmmaxmemory = 0l;
		
		for (Resources resources : list) {
			
			//物理内存使用量
			phymemory = resources.getPhymemory();
			phymemoryList.add(resources.getPhymemory().longValue() - resources.getPhyfreememory().longValue());
			
			//jvm使用量
			jvmmaxmemory = resources.getJvmmaxmemory();
			jvmmemoryList.add(resources.getJvmtotalmemory() - resources.getJvmfreememory());
			
			//cpu使用量
			int cpuratio = (int)(resources.getCpuratio().doubleValue() * 100);
			cpuList.add(Integer.valueOf(cpuratio));
			
			//时间轴
			datesList.add(DateUtil.format(resources.getCreatedate(), "HH:mm"));
			
			//
			gccountList.add(resources.getGccount());
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("dates", JSON.toJSON(datesList).toString());
		
		map.put("cpu", JSON.toJSON(cpuList).toString());
		
		map.put("phymemorymax", phymemory);
		map.put("phymemoryval", JSON.toJSON(phymemoryList).toString());

		map.put("jvmmemorymax", jvmmaxmemory);
		map.put("jvmmemoryval", JSON.toJSON(jvmmemoryList).toString());
		
		map.put("gccount", JSON.toJSON(gccountList).toString());
		return map;
	}

}
