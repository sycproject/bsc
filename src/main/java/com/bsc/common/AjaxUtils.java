package com.bsc.common;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletResponse;


public class AjaxUtils {

	public static void wirte(HttpServletResponse response,Object obj){
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter pw = null;
		try {
			pw = response.getWriter();
			pw.write(obj.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			pw.flush();
			pw.close();
		}
	}
}
