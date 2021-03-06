package com.bsc.task;

import java.math.BigDecimal;
import java.util.Date;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.bsc.entity.Resources;
import com.bsc.service.ResourcesService;
import com.bsc.utils.DateUtil;
import com.bsc.utils.ResourceUtil;



@Component("collectResource") 
public class CollectResourceTaskJob {
	
	public CollectResourceTaskJob(){
		System.out.println("task.....................................");
	}
	
	@Resource(name="resourcesService")
	private ResourcesService resourcesService;
	
	@Scheduled(cron = "0 0/2 * * * ?")
	public void collectResource(){
		System.out.println(DateUtil.date2String(new Date(), DateUtil.PATTERN_STANDARD)+"=============>定时搜集系统资源使用情况=====================");
		String osName = ResourceUtil.getOsName(); // 获取操作系统类型名称
		String ip = ResourceUtil.getOsLocalHostIp(); // 获取本机IP
		String hostName = ResourceUtil.getOsLocalHostName(); // 获取本机名称
		int cpuNumber = ResourceUtil.getOsCpuNumber(); // 获取CPU数量
		double cpuRatio = ResourceUtil.getOscpuRatio(); // cpu使用率
		long phyMemory = ResourceUtil.getOsPhysicalMemory(); // 物理内存，总的可使用的
		long phyFreeMemory = ResourceUtil.getOsPhysicalFreeMemory(); // 物理内存，剩余
		
		long jvmTotalMemory = ResourceUtil.getJvmTotalMemory(); // JVM内存，内存总量
		long jvmFreeMemory = ResourceUtil.getJvmFreeMemory(); // JVM内存，空闲内存量
		long jvmMaxMemory = ResourceUtil.getJvmMaxMemory(); // JVM内存，最大内存量
		long gcCount = ResourceUtil.getJvmGcCount(); // 获取JVM GC次数
		
		Resources resources = new Resources();
		resources.setIds(UUID.randomUUID().toString().replaceAll("-", ""));
		resources.setOsname(osName);
		resources.setIps(ip);
		resources.setHostname(hostName);
		resources.setCpunumber((long)cpuNumber);
		resources.setCpuratio(new BigDecimal(cpuRatio));
		resources.setPhymemory(phyMemory);
		resources.setPhyfreememory(phyFreeMemory);
		resources.setJvmtotalmemory(jvmTotalMemory);
		resources.setJvmfreememory(jvmFreeMemory);
		resources.setJvmmaxmemory(jvmMaxMemory);
		resources.setGccount(gcCount);
		resources.setCreatedate(new Date());
		resourcesService.addResources(resources);
	}
}
