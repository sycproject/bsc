<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/taglib.jsp"%>


<title>首页 - 总览</title>

<!-- ajax layout which only needs content area -->
<div class="page-header">
	<h1>
		首页
		<small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			总览 &amp; 状态
		</small>
	</h1>
</div><!-- /.page-header -->

<div class="row">
	<div class="col-xs-12">
		<!-- PAGE CONTENT BEGINS -->

		<!-- PAGE CONTENT ENDS -->
	</div><!-- /.col -->
</div><!-- /.row -->

<!-- page specific plugin scripts -->

<!--[if lte IE 8]>
  <script src="${ctx}/ui/assets/js/excanvas.min.js"></script>
<![endif]-->
<script type="text/javascript">
	var scripts = [null,"${ctx}/ui/assets/js/jquery-ui.custom.min.js","${ctx}/ui/assets/js/jquery.ui.touch-punch.min.js","${ctx}/ui/assets/js/jquery.easypiechart.min.js","${ctx}/ui/assets/js/jquery.sparkline.min.js","${ctx}/ui/assets/js/flot/jquery.flot.min.js","${ctx}/ui/assets/js/flot/jquery.flot.pie.min.js","${ctx}/ui/assets/js/flot/jquery.flot.resize.min.js", null]
	ace.load_ajax_scripts(scripts, function() {
	  //inline scripts related to this page
		 jQuery(function($) {
			$('.easy-pie-chart.percentage').each(function(){
				var $box = $(this).closest('.infobox');
				var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
				var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
				var size = parseInt($(this).data('size')) || 50;
				$(this).easyPieChart({
					barColor: barColor,
					trackColor: trackColor,
					scaleColor: false,
					lineCap: 'butt',
					lineWidth: parseInt(size/10),
					animate: /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase()) ? false : 1000,
					size: size
				});
			});	
		});	
	});
</script>
