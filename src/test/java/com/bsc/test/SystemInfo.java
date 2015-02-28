package com.bsc.test;

import java.net.InetAddress;
import java.util.Properties;
import java.util.Set;

/**
 * 
	public static String getProperty(String key) 
	键														相关值的描述
	
	=============================获取Jdk信息==================================
	java.version 											Java 运行时环境版本
	java.vendor 											Java 运行时环境供应商
	java.vendor.url 										Java 供应商的 URL
	java.home 												Java 安装目录
	java.vm.specification.version 							Java 虚拟机规范版本
	java.vm.specification.vendor 							Java 虚拟机规范供应商
	java.vm.specification.name 								Java 虚拟机规范名称
	java.vm.version 										Java 虚拟机实现版本
	java.vm.vendor 											Java 虚拟机实现供应商
	java.vm.name 											Java 虚拟机实现名称
	java.specification.version 								Java 运行时环境规范版本
	java.specification.vendor 								Java 运行时环境规范供应商
	java.specification.name 								Java 运行时环境规范名称
	java.class.version 										Java 类格式版本号
	java.class.path 										Java 类路径
	java.library.path 										加载库时搜索的路径列表
	java.io.tmpdir 											默认的临时文件路径
	java.compiler 											要使用的 JIT 编译器的名称
	java.ext.dirs 											一个或多个扩展目录的路径
	
	============================获取系统信息======================================
	os.name 												操作系统的名称
	os.arch 												操作系统的架构
	os.version 												操作系统的版本
	file.separator 											文件分隔符（在 UNIX 系统中是“/”）
	path.separator 											路径分隔符（在 UNIX 系统中是“:”）
	line.separator 											行分隔符（在 UNIX 系统中是“/n”）
	user.name 												用户的账户名称
	user.home 												用户的主目录
	user.dir 												用户的当前工作目录
															
	
	
	=========================获取Tomcat的版本=======================================
	<%= application.getServerInfo() %>
	
	
	=========================几个常用Request.ServerVariables的中文 =======================================
	本文件ip路径：<%="http://" & request.servervariables("server_name")&request.servervariables("script_name") %> 
	本机ip:<%=request.servervariables("remote_addr")%> 
	服务器名:<%=Request.ServerVariables("SERVER_NAME")%> 
	服务器IP:<%=Request.ServerVariables("LOCAL_ADDR")%> 
	服务器端口:<%=Request.ServerVariables("SERVER_PORT")%> 
	服务器时间:<%=now%> 
	IIS版本:<%=Request.ServerVariables("SERVER_SOFTWARE")%> 
	脚本超时时间:<%=Server.ScriptTimeout%> 
	本文件路径:<%=server.mappath(Request.ServerVariables("SCRIPT_NAME"))%> 
	服务器CPU数量:<%=Request.ServerVariables("NUMBER_OF_PROCESSORS")%> 
	服务器解译引擎:<%=ScriptEngine & "/"& ScriptEngineMajorVersion&"."&ScriptEngineMinorVersion&"."& ScriptEngineBuildVersion %> 
	服务器操作系统:<%=Request.ServerVariables("OS")%> 
	支持的文件类型：<%=Request.ServerVariables("HTTP_Accept")%> 
	访问的文件路径：<%=Request.ServerVariables("HTTP_url")%> 
	用户代理的信息：<%=Request.ServerVariables("HTTP_USER_AGENT")%> 
	获取url中的文件名和传过来的值:request.ServerVariables("script_name")+"?"+request.ServerVariableS("QUERY_STRING")
	
	
	=========================打印信息===========================================
	java.runtime.name					Java(TM) SE Runtime Environment
	sun.boot.library.path				C:\Program Files\Java\jdk1.7.0_67\jre\bin
	java.vm.version						24.65-b04
	java.vm.vendor						Oracle Corporation
	java.vendor.url						http://java.oracle.com/
	path.separator						;
	java.vm.name						Java HotSpot(TM) 64-Bit Server VM
	file.encoding.pkg					sun.io
	user.country						CN
	user.script					
	sun.java.launcher					SUN_STANDARD
	sun.os.patch.level					
	java.vm.specification.name			Java Virtual Machine Specification
	user.dir							E:\project\SpringMyBatis
	java.runtime.version				1.7.0_67-b01
	java.awt.graphicsenv				sun.awt.Win32GraphicsEnvironment
	java.endorsed.dirs					C:\Program Files\Java\jdk1.7.0_67\jre\lib\endorsed
	os.arch								amd64
	java.io.tmpdir						C:\Users\yuanchao\AppData\Local\Temp\
	line.separator					
	
	java.vm.specification.vendor		Oracle Corporation
	user.variant					
	os.name								Windows 8
	sun.jnu.encoding					GBK
	java.library.path					C:\Program Files\Java\jdk1.7.0_67\bin;C:\windows\Sun\Java\bin;C:\windows\system32;C:\windows;C:\Python27\;C:\Program Files\Broadcom\Broadcom 802.11 Network Adapter\Driver;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Program Files (x86)\Intel\iCLS Client\;C:\Program Files\Intel\iCLS Client\;C:\windows\system32;C:\windows;C:\windows\System32\Wbem;C:\windows\System32\WindowsPowerShell\v1.0\;C:\Program Files\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files (x86)\Intel\OpenCL SDK\2.0\bin\x86;C:\Program Files (x86)\Intel\OpenCL SDK\2.0\bin\x64;C:\Program Files (x86)\Intel\OpenCL SDK\2.0\bin\x86;C:\Program Files (x86)\Intel\OpenCL SDK\2.0\bin\x64;C:\Program Files\Lenovo\Bluetooth Software\;C:\Program Files\Lenovo\Bluetooth Software\syswow64;C:\ProgramData\Lenovo\ReadyApps;C:\Program Files (x86)\MySQL\MySQL Server 5.1\bin;C:\Program Files (x86)\VisualSVN Server\bin;C:\Program Files\TortoiseSVN\bin;C:\Program Files\nodejs\;.;C:\Program Files\Java\jdk1.7.0_67\bin;C:\Python27\Scripts;C:\Users\yuanchao\AppData\Roaming\npm;C:\Program Files\nodejs;E:\apache-maven-3.2.5\\bin;.
	java.specification.name				Java Platform API Specification
	java.class.version					51.0
	sun.management.compiler				HotSpot 64-Bit Tiered Compilers
	os.version							6.2
	user.home							C:\Users\yuanchao
	user.timezone					
	java.awt.printerjob					sun.awt.windows.WPrinterJob
	file.encoding						UTF-8
	java.specification.version			1.7
	java.class.path						E:\project\SpringMyBatis\target\test-classes;E:\project\SpringMyBatis\target\classes;E:\apache-tomcat-7.0.53-x64\lib\annotations-api.jar;E:\apache-tomcat-7.0.53-x64\lib\catalina-ant.jar;E:\apache-tomcat-7.0.53-x64\lib\catalina-ha.jar;E:\apache-tomcat-7.0.53-x64\lib\catalina-tribes.jar;E:\apache-tomcat-7.0.53-x64\lib\catalina.jar;E:\apache-tomcat-7.0.53-x64\lib\ecj-P20140317-1600.jar;E:\apache-tomcat-7.0.53-x64\lib\el-api.jar;E:\apache-tomcat-7.0.53-x64\lib\jasper-el.jar;E:\apache-tomcat-7.0.53-x64\lib\jasper.jar;E:\apache-tomcat-7.0.53-x64\lib\jsp-api.jar;E:\apache-tomcat-7.0.53-x64\lib\servlet-api.jar;E:\apache-tomcat-7.0.53-x64\lib\tomcat-api.jar;E:\apache-tomcat-7.0.53-x64\lib\tomcat-coyote.jar;E:\apache-tomcat-7.0.53-x64\lib\tomcat-dbcp.jar;E:\apache-tomcat-7.0.53-x64\lib\tomcat-i18n-es.jar;E:\apache-tomcat-7.0.53-x64\lib\tomcat-i18n-fr.jar;E:\apache-tomcat-7.0.53-x64\lib\tomcat-i18n-ja.jar;E:\apache-tomcat-7.0.53-x64\lib\tomcat-jdbc.jar;E:\apache-tomcat-7.0.53-x64\lib\tomcat-util.jar;E:\apache-tomcat-7.0.53-x64\lib\tomcat7-websocket.jar;E:\apache-tomcat-7.0.53-x64\lib\websocket-api.jar;F:\mvn\repository\org\springframework\spring-core\4.1.0.RELEASE\spring-core-4.1.0.RELEASE.jar;F:\mvn\repository\commons-logging\commons-logging\1.1.3\commons-logging-1.1.3.jar;F:\mvn\repository\org\springframework\spring-context\4.1.0.RELEASE\spring-context-4.1.0.RELEASE.jar;F:\mvn\repository\org\springframework\spring-jdbc\4.1.0.RELEASE\spring-jdbc-4.1.0.RELEASE.jar;F:\mvn\repository\org\springframework\spring-beans\4.1.0.RELEASE\spring-beans-4.1.0.RELEASE.jar;F:\mvn\repository\org\springframework\spring-webmvc\4.1.0.RELEASE\spring-webmvc-4.1.0.RELEASE.jar;F:\mvn\repository\org\springframework\spring-aop\4.1.0.RELEASE\spring-aop-4.1.0.RELEASE.jar;F:\mvn\repository\aopalliance\aopalliance\1.0\aopalliance-1.0.jar;F:\mvn\repository\org\springframework\spring-web\4.1.0.RELEASE\spring-web-4.1.0.RELEASE.jar;F:\mvn\repository\org\springframework\spring-tx\4.1.0.RELEASE\spring-tx-4.1.0.RELEASE.jar;F:\mvn\repository\org\springframework\spring-expression\4.1.0.RELEASE\spring-expression-4.1.0.RELEASE.jar;F:\mvn\repository\org\springframework\spring-test\4.1.0.RELEASE\spring-test-4.1.0.RELEASE.jar;F:\mvn\repository\org\aspectj\aspectjrt\1.8.1\aspectjrt-1.8.1.jar;F:\mvn\repository\org\aspectj\aspectjweaver\1.8.4\aspectjweaver-1.8.4.jar;F:\mvn\repository\org\slf4j\slf4j-api\1.6.1\slf4j-api-1.6.1.jar;F:\mvn\repository\org\slf4j\jcl-over-slf4j\1.6.1\jcl-over-slf4j-1.6.1.jar;F:\mvn\repository\org\slf4j\slf4j-log4j12\1.6.1\slf4j-log4j12-1.6.1.jar;F:\mvn\repository\log4j\log4j\1.2.16\log4j-1.2.16.jar;F:\mvn\repository\com\alibaba\druid\1.0.5\druid-1.0.5.jar;F:\mvn\repository\com\alibaba\fastjson\1.1.26\fastjson-1.1.26.jar;F:\mvn\repository\mysql\mysql-connector-java\5.1.34\mysql-connector-java-5.1.34.jar;F:\mvn\repository\org\mybatis\mybatis\3.2.8\mybatis-3.2.8.jar;F:\mvn\repository\org\mybatis\generator\mybatis-generator-core\1.3.2\mybatis-generator-core-1.3.2.jar;F:\mvn\repository\org\mybatis\mybatis-spring\1.2.2\mybatis-spring-1.2.2.jar;F:\mvn\repository\com\fasterxml\jackson\core\jackson-core\2.1.0\jackson-core-2.1.0.jar;F:\mvn\repository\com\fasterxml\jackson\core\jackson-databind\2.1.0\jackson-databind-2.1.0.jar;F:\mvn\repository\com\fasterxml\jackson\core\jackson-annotations\2.1.0\jackson-annotations-2.1.0.jar;F:\mvn\repository\commons-fileupload\commons-fileupload\1.2.2\commons-fileupload-1.2.2.jar;F:\mvn\repository\commons-io\commons-io\2.0.1\commons-io-2.0.1.jar;F:\mvn\repository\javax\servlet\jstl\1.1.2\jstl-1.1.2.jar;F:\mvn\repository\taglibs\standard\1.1.2\standard-1.1.2.jar;F:\mvn\repository\junit\junit\4.10\junit-4.10.jar;F:\mvn\repository\org\hamcrest\hamcrest-core\1.1\hamcrest-core-1.1.jar
	user.name							yuanchao
	java.vm.specification.version		1.7
	sun.java.command					com.bsc.test.SystemInfo
	java.home							C:\Program Files\Java\jdk1.7.0_67\jre
	sun.arch.data.model					64
	user.language						zh
	java.specification.vendor			Oracle Corporation
	awt.toolkit							sun.awt.windows.WToolkit
	java.vm.info						mixed mode
	java.version						1.7.0_67
	java.ext.dirs						C:\Program Files\Java\jdk1.7.0_67\jre\lib\ext;C:\windows\Sun\Java\lib\ext
	sun.boot.class.path					C:\Program Files\Java\jdk1.7.0_67\jre\lib\resources.jar;C:\Program Files\Java\jdk1.7.0_67\jre\lib\rt.jar;C:\Program Files\Java\jdk1.7.0_67\jre\lib\sunrsasign.jar;C:\Program Files\Java\jdk1.7.0_67\jre\lib\jsse.jar;C:\Program Files\Java\jdk1.7.0_67\jre\lib\jce.jar;C:\Program Files\Java\jdk1.7.0_67\jre\lib\charsets.jar;C:\Program Files\Java\jdk1.7.0_67\jre\lib\jfr.jar;C:\Program Files\Java\jdk1.7.0_67\jre\classes
	java.vendor							Oracle Corporation
	file.separator						\
	java.vendor.url.bug					http://bugreport.sun.com/bugreport/
	sun.io.unicode.encoding				UnicodeLittle
	sun.cpu.endian						little
	sun.desktop							windows
	sun.cpu.isalist						amd64
	
 *
 */
public class SystemInfo {

	public static void main(String[] args) throws Exception {
		InetAddress addr = InetAddress.getLocalHost();
		String hostname = addr.getHostName();
		String ip = addr.getHostAddress();
		System.out.println("hostname="+hostname+"ip="+ip);
		
		System.out.println("获取操作系统的安装位置"+System.getenv("windir"));
		getSystemInfo();
	}
	
	public static void  getSystemInfo(){
		Properties props = System.getProperties();//获得系统属性集
		Set<Object> keys = props.keySet();
		for(Object obj : keys){
			System.out.print(obj.toString()+"\t\t\t\t\t");
			System.out.println(System.getProperty(obj.toString()));
		}
		String osName = props.getProperty("os.name"); //操作系统名称    
		String osArch = props.getProperty("os.arch"); //操作系统构架    
		String osVersion = props.getProperty("os.version"); //操作系统版本 
		System.out.println("操作系统名称==="+osName+"操作系统架构===="+osArch+"，操作系统版本==="+osVersion);
	}
}
