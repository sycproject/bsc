package com.bsc.aop;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.UUID;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.apache.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import com.bsc.common.CommonDao;
import com.bsc.entity.SysLog;
import com.bsc.entity.User;
import com.bsc.utils.WebUtils;


/**
 * 
 * 
 * @Aspect 实现spring aop 切面（Aspect）：
 *         一个关注点的模块化，这个关注点可能会横切多个对象。事务管理是J2EE应用中一个关于横切关注点的很好的例子。 在Spring
 *         AOP中，切面可以使用通用类（基于模式的风格） 或者在普通类中以 @Aspect 注解（@AspectJ风格）来实现。
 * 
 *         AOP代理（AOP Proxy）： AOP框架创建的对象，用来实现切面契约（aspect contract）（包括通知方法执行等功能）。
 *         在Spring中，AOP代理可以是JDK动态代理或者CGLIB代理。 注意：Spring
 *         2.0最新引入的基于模式（schema-based
 *         ）风格和@AspectJ注解风格的切面声明，对于使用这些风格的用户来说，代理的创建是透明的。
 * @author yuanchao
 * 
 */
@Component
@Aspect
public class SysLogAOP {

	private static Logger logger = Logger.getLogger(SysLogAOP.class);
	//@Autowired
	//private SyslogDao syslogDao;
	
	@Resource(name="commonDao")
	private CommonDao commonDao;

	public SysLogAOP() {
		System.out.println("Aop");
	}

	/**
	 * 在Spring AOP中，Pointcut的定义包括两个部分：Pointcut表示式(expression)和Pointcut签名(signature)。让我们先看看execution表示式的格式：
	 * 括号中各个pattern分别表示修饰符匹配（modifier-pattern?）、返回值匹配（ret-type-pattern）、
	 * 类路径匹配（declaring-type-pattern?）、方法名匹配（name-pattern）、参数匹配（(param-pattern)）、
	 * 异常类型匹配（throws-pattern?），其中后面跟着“?”的是可选项。
	 * @param point
	 * @throws Throwable
	 */

	@Pointcut("@annotation(com.bsc.aop.MethodLog)")
	public void methodCachePointcut() {

	}

	/*@Before("execution(* com.wssys.controller.*(..))")
	public void logAll(JoinPoint point) throws Throwable {
		System.out.println("打印========================");
	}

	@After("execution(* com.wssys.controller.*(..))")
	public void after() {
		System.out.println("after");
	}*/

	// 方法执行的前后调用
	// @Around("execution(* com.bsc.controller.*(..))||execution(* com.bsc.*.web.account.*.*(..))")
	// @Around("execution(* com.bsc.controller.*(..))")
	// @Around("execution(* org.springframework.web.servlet.mvc.annotation.AnnotationMethodHandlerAdapter.handle(..))")
	@Around("methodCachePointcut()")
	public Object around(ProceedingJoinPoint point) throws Throwable {
		
		System.out.println("AOP切面开始。。。。。。。。。。。。。。。。。。。。。。");
		
		SysLog sysLog = new SysLog();
		logger.info("============================AOP切面开始================================");
		logger.info("请求处理开始时间");
		
		long starttime = System.currentTimeMillis();
		
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		String ipAddress = WebUtils.getClientIpAddr(request);//获取客户端ip地址
		String contextPath = WebUtils.getContextPath(request);//获取web请求路径
		String requestPath = WebUtils.getRequestURIWithParam(request);//获取请求的路径和参数
		String requestMethod = request.getMethod();//请求所使用的post或者get请求
		String methodRemark = getMthodRemark(point);//获取请求方法描述
		String methodName = point.getSignature().getName();//获取请求的名称
		String packagePath = point.getThis().getClass().getName();//获取请求的类的完整包名
		if (packagePath.indexOf("$$EnhancerByCGLIB$$") > -1) { // 如果是CGLIB动态生成的类
			try {
				packagePath = packagePath.substring(0, packagePath.indexOf("$$"));
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
		
		User user = (User) request.getSession().getAttribute("user");
		String loginName;
		if (user != null) {
			loginName = user.getName();//获取用户的信息
		} else {
			loginName = "匿名用户";
		}
		
		
		
		Object result = null;
		try {
			
			// 记录操作日志...谁..在什么时间..做了什么事情..
			result = point.proceed();
		} catch (Throwable e) {
			// 异常处理记录日志..logger.error(e);
			logger.error(e);
		}
		logger.info("请求处理完毕时间");
	    long endtime = System.currentTimeMillis();
	    logger.info("请求处理完毕，计算耗时");
	    long costTime = endtime - starttime;
	    System.out.println("该方法耗时。。。。。。。。。。。。。"+costTime);
	    
	    sysLog.setIds(UUID.randomUUID().toString().replaceAll("-", ""));
	    sysLog.setContextpath(contextPath);
	    sysLog.setIpaddress(ipAddress);
	    sysLog.setLoginname(loginName);
	    sysLog.setRequestmethod(requestMethod);
	    sysLog.setRequestpath(requestPath);
	    sysLog.setMethodname(methodName);
	    sysLog.setMethodremark(methodRemark);
	    sysLog.setPackagepath(packagePath);
	    sysLog.setStarttime(new Date(starttime));
	    sysLog.setEndtime(new Date(endtime));
	    sysLog.setCosttime(costTime);
	    commonDao.save("com.bsc.dao.SysLogMapper.insert", sysLog);
	    
	    logger.info("============================AOP切面结束================================");
	    return result;
		
	}

	
	
	
	/**
	 * 方法运行出现异常时调用
	 * @AfterThrowing(pointcut = "execution(* com.wssys.controller.*(..))",
	 * throwing = "ex")
	 * @param ex
	 */
	public void afterThrowing(Exception ex) {
		logger.info("this execption cause："+this.getClass().getName()+"，method：afterThrowing，execption is："+ex);
	}

	// 获取方法的中文备注____用于记录用户的操作日志描述
	@SuppressWarnings("rawtypes")
	public static String getMthodRemark(ProceedingJoinPoint joinPoint)
			throws Exception {
		String targetName = joinPoint.getTarget().getClass().getName();
		String methodName = joinPoint.getSignature().getName();
		Object[] arguments = joinPoint.getArgs();

		
		Class targetClass = Class.forName(targetName);
		Method[] method = targetClass.getMethods();
		String methode = "";
		for (Method m : method) {
			if (m.getName().equals(methodName)) {
				Class[] tmpCs = m.getParameterTypes();
				if (tmpCs.length == arguments.length) {
					MethodLog methodCache = m.getAnnotation(MethodLog.class);
					if (methodCache != null) {
						methode = methodCache.remark();
					}
					break;
				}
			}
		}
		return methode;
	}


}


