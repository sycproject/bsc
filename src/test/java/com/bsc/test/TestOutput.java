package com.bsc.test;

import java.util.Date;

import com.bsc.utils.DateUtil;

public class TestOutput {

	public static void main(String[] args) {
		System.out.println(System.getProperty("os.name"));
		
		Date endDate = DateUtil.endDateByHour(new Date());
		Date startDate = DateUtil.startDateByHour(endDate, -24);
		
		System.out.println(new Date().toString());
		System.out.println(endDate.toString());
		System.out.println(startDate.toString());
	}
}
