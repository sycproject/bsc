package com.bsc.test.action;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.web.servlet.ModelAndView;

public class TestUserController extends JUnitActionBase {

	@Test
	public void testAdd() throws Exception{
		MockHttpServletRequest request = new MockHttpServletRequest();
		MockHttpServletResponse response = new MockHttpServletResponse();
		request.setServletPath("/sys/user/doAdd");
		request.addParameter("name", "张张");
		request.addParameter("pass", "123456");
		request.addParameter("address", "北京昌平");
		request.addParameter("age", "23");
		request.addParameter("gender", "男");
		request.setMethod("POST");
		// 执行URI对应的action
		final ModelAndView mav = this.excuteAction(request, response);
		// Assert logic
		Assert.assertEquals("/sys/user/doAdd", mav.getViewName());
		String msg=(String)request.getAttribute("msg");
		System.out.println(msg);
	}
}
