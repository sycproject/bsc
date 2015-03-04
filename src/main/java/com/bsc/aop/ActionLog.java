package com.bsc.aop;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;

public class ActionLog {

	private static Logger log = Logger.getLogger(ActionLog.class);
	// 在类里面写方法，方法名诗可以任意的。此处我用标准的before和after来表示

	// 此处的JoinPoint类可以获取，action所有的相关配置信息和request等内置对象。

	public void before(JoinPoint joinpoint) {

		joinpoint.getArgs();// 此方法返回的是一个数组，数组中包括request以及ActionCofig等类对象

		System.out.println("Action拦截器：被拦截方法调用之前调用此方法，输出此语句");

	}

	public void after(JoinPoint joinpoint) {

		System.out.println("Action拦截器：被拦截方法调用之后调用此方法，输出此语句");

	}
	
	/**
	 * Spring AOP对action做日志管理只能针对处理的类和方法进行获取，对于request对象等却是获取不到
	 * 所以我们采用第三种方法
	 * @param joinPoint
	 * @return
	 */
	public Object around(ProceedingJoinPoint joinPoint){
		System.out.println("AOP切面开始。。。。。。。。。。。。。。。。。。。。。。");
		
		log.info("请求处理开始时间");
		long starttime = System.currentTimeMillis();		
		Object result = null;
		try {
			//String methodRemark = getMthodRemark(joinPoint);
			//System.out.println("methodRemark==================="+methodRemark);
			// 记录操作日志...谁..在什么时间..做了什么事情..
			result = joinPoint.proceed();
		} catch (Throwable e) {
			// 异常处理记录日志..log.error(e);
			log.error(e);
		}
	    //MethodSignature.class.cast(joinPoint.getSignature()).getMethod().getName();
		log.info("请求处理完毕时间");
	    long endtime = System.currentTimeMillis();
	    log.info("请求处理完毕，计算耗时");
	    long haoshi = endtime - starttime;
	    System.out.println("该方法耗时。。。。。。。。。。。。。"+haoshi);
	    
	    System.out.println("AOP切面结束。。。。。。。。。。。。。。。。。。。。。。");
	    return result;
	}
	
	public static String getMthodRemark(ProceedingJoinPoint joinPoint)  
            throws Exception {
        String targetName = joinPoint.getTarget().getClass().getName();//com.bsc.controller.IndexController  
        String methodName = joinPoint.getSignature().getName();  //index
        System.out.println("targetName============"+targetName);
        System.out.println("methodName============"+methodName);
        System.out.println(joinPoint.getArgs().toString());
        Object[] arguments = joinPoint.getArgs();
        if(arguments != null && arguments.length > 0){
        	for(int i=0;i<arguments.length;i++){
        		System.out.println("============================="+arguments[i].toString());
        	}
        }
       
  
        
		/*Class targetClass = Class.forName(targetName);  
        Method[] method = targetClass.getMethods();  
        String methode = "";  
        for (Method m : method) {  
            if (m.getName().equals(methodName)) {  
				Class[] tmpCs = m.getParameterTypes();  
                if (tmpCs.length == arguments.length) {  
                    MethodLog methodCache = m.getAnnotation(MethodLog.class);  
                    methode = methodCache.remark();  
                    break;  
                }  
            }  
        } */ 
        return "";  
    }  

}
