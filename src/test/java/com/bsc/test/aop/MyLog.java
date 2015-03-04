package com.bsc.test.aop;

public class MyLog {

	public void before(){
		System.out.println("拦截方法之前运行的方法");
	}
	
	public void after(){
		System.out.println("拦截方法之后运行的方法");
	}
}
