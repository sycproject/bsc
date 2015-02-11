package com.bsc.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bsc.entity.User;
import com.bsc.service.UserService;

public class SimpleTest {

	@Test
	public void test1(){
		@SuppressWarnings("resource")
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring-app.xml");  
		UserService userService = (UserService) applicationContext.getBean("userService");
		User user = new User();
		user.setId(1);
		user.setName("zhangsan");
		user.setAddress("北京");
		user.setAge(23);
		user.setPass("123123");
		userService.addUser(user);
	}
}
