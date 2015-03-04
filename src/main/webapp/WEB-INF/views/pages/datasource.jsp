<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/taglib.jsp"%>


<title>首页 - 总览</title>

<!-- ajax layout which only needs content area -->
<div class="page-header">
	<h1>
		首页
		<small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			数据源 &amp; 状态
		</small>
	</h1>
</div><!-- /.page-header -->

<div class="row">
	<div class="col-xs-12">
		<!-- PAGE CONTENT BEGINS -->
		<iframe name="contentFrame" style="width: 100%;height: 2500px;border: 0px;overflow:scroll" src="${ctx}/druid/index.html">
		</iframe>
		<!-- <div id="retShow"></div> -->
		<!-- PAGE CONTENT ENDS -->
	</div><!-- /.col -->
</div><!-- /.row -->

<!-- page specific plugin scripts -->

<!--[if lte IE 8]>
  <script src="${ctx}/ui/assets/js/excanvas.min.js"></script>
<![endif]-->
<script type="text/javascript">
	var scripts = [null,"${ctx}/static/js/highcharts/highcharts.js","${ctx}/static/js/highcharts/modules/exporting.js","${ctx}/static/js/highcharts/themes/gray.js", null];
	ace.load_ajax_scripts(scripts, function() {
	  //inline scripts related to this page
		 jQuery(function($) {
			/* $("#retShow").load('${ctx}/druid/index.html');
			$.get("${ctx}/druid/", function(data){ 
				$("#retShow").html(data);
			},"html"); */
		});	
	});
</script>
