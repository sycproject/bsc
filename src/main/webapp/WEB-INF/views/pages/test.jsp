<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/taglib.jsp"%>

 <!-- 页面标题 -->
 <title>测试-总览</title>
 
 <link rel="stylesheet" href="" />
 
 <div class="page-header">
    <!-- optional page header -->
    <h1>
		测试
		<small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			测试 &amp; 状态
		</small>
	</h1>
 </div>
 
 <div class="row">
   <div class="col-xs-12">
      <!-- new page content here -->
      <h2>测试页面</h2>
   </div>
 </div>
 
 
 <script type="text/javascript">
  var scripts = ["${ctx}/ui/assets/js/jquery-ui.custom.min.js", "${ctx}/ui/assets/js/jquery.ui.touch-punch.min.js"]
  ace.load_ajax_scripts(scripts, function() {
    //put inline scripts related to this page here
    alert('hello!');
  });
 </script>