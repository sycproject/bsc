package com.bsc.test;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.bsc.entity.User;
import com.bsc.service.UserService;

/**
 * 需要用到spring-test和junit4.10版本
 * @author yuanchao
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-app.xml"})
public class TestMyBatis {
	
	@Autowired
	UserService userService;
	
	@Test
	public void testUserAdd() throws Exception{
		User user = new User();
		user.setId(4);
		user.setName("王五");
		user.setAddress("北京");
		user.setAge(23);
		user.setPass("123123");
		user.setGender("男");
		userService.addUser(user);
	}
	
	
	@Test
	public void testUserUpdate() throws Exception{
		User user = new User();
		user.setId(3);
		user.setPass("666666");
		user.setAddress("北京");
		user.setName("赵红");
		user.setGender("女");
		userService.updateUser(user);
	}
	
	@Test
	public void testUserDetail() throws Exception{
		User user = userService.findUserById(3);
		System.out.println(user.toString());
	}
	
	@Test
	public void testDeleteUser() throws Exception{
		User user = new User();
		user.setId(4);
		userService.deleteUser(user);
	}

}
