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
		
		<!-- <div class="widget-box transparent">
			<div class="widget-header widget-header-flat">
				<h4 class="widget-title lighter">
					<i class="ace-icon fa fa-bar-chart-o"></i>
					<span id="chart-title">设备使用情况</span>
				</h4>
				<div class="widget-toolbar">
					<a href="#" onclick="requestData();" data-action="reload">
						<i class="ace-icon fa fa-refresh"></i>
					</a>
					<a href="#" data-action="collapse">
						<i class="ace-icon fa fa-chevron-up"></i>
					</a>
				</div>
			</div>
			<div class="widget-body">
				<div class="widget-main padding-4">
					<div id="container"></div>
				</div>
			</div>
		</div> -->
		
		<div class="row">
			<div class="col-xs-12 col-sm-12 widget-container-col">
				<div class="widget-box">
					<div class="widget-header widget-header-flat">
						<h4 class="widget-title lighter">
							<i class="ace-icon fa fa-bar-chart-o"></i>
							<span id="chart-title">系统负载情况</span>
						</h4>
		
						<div class="widget-toolbar">
							<a href="#" data-action="fullscreen" class="orange2">
								<i class="ace-icon fa fa-expand"></i>
							</a>
							<a href="#" data-action="reload">
								<i class="ace-icon fa fa-refresh"></i>
							</a>
							<a href="#" data-action="collapse">
								<i class="ace-icon fa fa-chevron-up"></i>
							</a>
		
							<a href="#" data-action="close">
								<i class="ace-icon fa fa-times"></i>
							</a>
						</div>
					</div>
		
					<div class="widget-body">
						<div class="widget-main padding-4">
							<div id="container_cpu" style="width: 98%"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-12 widget-container-col">
				<div class="widget-box">
					<div class="widget-header widget-header-flat">
						<h4 class="widget-title lighter">
							<i class="ace-icon fa fa-bar-chart-o"></i>
							<span id="chart-title">系统负载情况</span>
						</h4>
		
						<div class="widget-toolbar">
							<a href="#" data-action="fullscreen" class="orange2">
								<i class="ace-icon fa fa-expand"></i>
							</a>
							<a href="#" data-action="reload">
								<i class="ace-icon fa fa-refresh"></i>
							</a>
							<a href="#" data-action="collapse">
								<i class="ace-icon fa fa-chevron-up"></i>
							</a>
		
							<a href="#" data-action="close">
								<i class="ace-icon fa fa-times"></i>
							</a>
						</div>
					</div>
		
					<div class="widget-body">
						<div class="widget-main padding-4">
							<div id="container_phymemory" style="width: 98%"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-12 widget-container-col">
				<div class="widget-box">
					<div class="widget-header widget-header-flat">
						<h4 class="widget-title lighter">
							<i class="ace-icon fa fa-bar-chart-o"></i>
							<span id="chart-title">系统负载情况</span>
						</h4>
		
						<div class="widget-toolbar">
							<a href="#" data-action="fullscreen" class="orange2">
								<i class="ace-icon fa fa-expand"></i>
							</a>
							<a href="#" data-action="reload">
								<i class="ace-icon fa fa-refresh"></i>
							</a>
							<a href="#" data-action="collapse">
								<i class="ace-icon fa fa-chevron-up"></i>
							</a>
		
							<a href="#" data-action="close">
								<i class="ace-icon fa fa-times"></i>
							</a>
						</div>
					</div>
		
					<div class="widget-body">
						<div class="widget-main padding-4">
							<div id="container_jvmmemory" style="width: 98%"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- PAGE CONTENT ENDS -->
	</div><!-- /.col -->
</div><!-- /.row -->

<!-- page specific plugin scripts -->

<!--[if lte IE 8]>
  <script src="${ctx}/ui/assets/js/excanvas.min.js"></script>
<![endif]-->
<script type="text/javascript">
	var scripts = [null,"${ctx}/static/js/highcharts/highcharts.js","${ctx}/static/js/highcharts/modules/exporting.js", null];
	var contextPath = "${ctx}";
	ace.load_ajax_scripts(scripts, function() {
	  //inline scripts related to this page
		 jQuery(function($) {
			 load_cpuUsage();
		});	
	});
	
	function load_cpuUsage(){
		$.ajax({
			type: "POST",
			cache: false,
			dataType:'json',
	        url: contextPath+'/sys/index/res',
	        success: function(data) {        	
	        	
	        	var dates = eval('(' + data.resourcesMap.dates + ')');
	        	var cpu = eval('(' + data.resourcesMap.cpu + ')');
	        	var gccount = eval('(' + data.resourcesMap.gccount + ')');
	        	var jvmmemorymax = eval('(' + data.resourcesMap.jvmmemorymax + ')');
	        	var jvmmemoryval = eval('(' + data.resourcesMap.jvmmemoryval + ')');
	        	var phymemorymax = eval('(' + data.resourcesMap.phymemorymax + ')');
	        	var phymemoryval = eval('(' + data.resourcesMap.phymemoryval + ')');
	        	//console.info(dates instanceof Array);
	        
	        	defineLine(dates,cpu);
	        	defineLine_phymemory(dates,jvmmemoryval,jvmmemorymax);
	        	defineLine_jvmmemory(dates,phymemoryval,phymemorymax);
	        	//defineChart(dates,cpu);
	           // setTimeout(requestData, 1000);   
	        
	        }
	    });
	    //var dataArray = [['设备1', 23.7],['设备2', 16.1], ['设备3', 14.2],['设备4', 14.0],['设备5', 12.5],['设备6', 12.1],['设备7', 11.8],['设备8', 11.7],['设备9', 11.1],['设备10', 11.1]];
	}
	
	
	function defineLine(xArray,yArray){
		$('#container_cpu').highcharts({
	        title: {
	            text: 'CPU负载',
	            x: -20 //center
	        },
	        xAxis: {
	        	type: 'category',
	        	dateTimeLabelFormats:{minute: '%H:%M'},
	        	allowDecimals:false,
	        	categories: xArray,
	        	 labels: {
		                rotation: 45,
		                style: {
		                    fontSize: '10px',
		                    color: '#6D869F',
		                    fontFamily: 'Verdana, sans-serif'
		                }
		            }
	        	
	        },
	        yAxis: {
	        	min: 0,
	        	max:100,
	            title: {
	                text: 'CPU使用情况 '
	            },
	            plotLines: [{
	                value: 0,
	                width: 1,
	                color: '#808080'
	            }]
	        },
	        tooltip: {
	            valueSuffix: '°C',
	            pointFormat: 'CPU使用量 : <b>{point.y:1f}</b>'
	        },
	        legend: {
	            layout: 'vertical',
	            align: 'right',
	            verticalAlign: 'middle',
	            borderWidth: 0
	        },
	        series: [{
	            name: 'CPU Usage',
	            data: yArray,
	            dataLabels: {
	                enabled: true,
	                rotation: -90,
	                color: '#FFFFFF',
	                align: 'right',
	                x: 5,
	                y: 10,
	                style: {
	                    fontSize: '13px',
	                    fontFamily: 'Verdana, sans-serif',
	                    textShadow: '0 0 3px black'
	                }
	            }
	        }]
	    });
	}
	function defineLine_phymemory(xArray,yArray,yMax){
		$('#container_phymemory').highcharts({
	        title: {
	            text: '物理内存',
	            x: -20 //center
	        },
	        xAxis: {
	        	type: 'category',
	        	dateTimeLabelFormats:{minute: '%H:%M'},
	        	allowDecimals:false,
	        	categories: xArray,
	        	 labels: {
		                rotation: 45,
		                style: {
		                    fontSize: '10px',
		                    color: '#6D869F',
		                    fontFamily: 'Verdana, sans-serif'
		                }
		            }
	        	
	        },
	        yAxis: {
	        	min: 0,
	        	max:yMax,
	            title: {
	                text: '内存使用情况 '
	            },
	            plotLines: [{
	                value: 0,
	                width: 1,
	                color: '#808080'
	            }]
	        },
	        tooltip: {
	            valueSuffix: '°C',
	            pointFormat: '物理内存使用量 : <b>{point.y:1f}</b>'
	        },
	        legend: {
	            layout: 'vertical',
	            align: 'right',
	            verticalAlign: 'middle',
	            borderWidth: 0
	        },
	        series: [{
	            name: 'CPU Usage',
	            data: yArray,
	            dataLabels: {
	                enabled: true,
	                rotation: -90,
	                color: '#FFFFFF',
	                align: 'right',
	                x: 5,
	                y: 10,
	                style: {
	                    fontSize: '13px',
	                    fontFamily: 'Verdana, sans-serif',
	                    textShadow: '0 0 3px black'
	                }
	            }
	        }]
	    });
	}
	function defineLine_jvmmemory(xArray,yArray,yMax){
		$('#container_jvmmemory').highcharts({
	        title: {
	            text: 'JVM内存',
	            x: -20 //center
	        },
	        xAxis: {
	        	type: 'category',
	        	dateTimeLabelFormats:{minute: '%H:%M'},
	        	allowDecimals:false,
	        	categories: xArray,
	        	 labels: {
		                rotation: 45,
		                style: {
		                    fontSize: '10px',
		                    color: '#6D869F',
		                    fontFamily: 'Verdana, sans-serif'
		                }
		            }
	        	
	        },
	        yAxis: {
	        	min: 0,
	        	max:yMax,
	            title: {
	                text: 'JVM内存使用情况 '
	            },
	            plotLines: [{
	                value: 0,
	                width: 1,
	                color: '#808080'
	            }]
	        },
	        tooltip: {
	            valueSuffix: '°C',
	            pointFormat: 'JVM内存使用量 : <b>{point.y:1f}</b>'
	        },
	        legend: {
	            layout: 'vertical',
	            align: 'right',
	            verticalAlign: 'middle',
	            borderWidth: 0
	        },
	        series: [{
	            name: 'JVM Usage',
	            data: yArray,
	            dataLabels: {
	                enabled: true,
	                rotation: -90,
	                color: '#FFFFFF',
	                align: 'right',
	                x: 5,
	                y: 10,
	                style: {
	                    fontSize: '13px',
	                    fontFamily: 'Verdana, sans-serif',
	                    textShadow: '0 0 3px black'
	                }
	            }
	        }]
	    });
	}
	
	function defineChart(xArray,yArray){
		$('#container').highcharts({
			chart: {
				type: 'column'
			},
			title: {
				text: '资源使用情况一览表'
			},
			/* subtitle: {
	            text: '时间: '+currentDate+'</a>'
	        }, */
			xAxis: {
	            type: 'category',
	            allowDecimals:false,
	            categories: xArray,
	            labels: {
	                rotation: -45,
	                style: {
	                    fontSize: '13px',
	                    color: '#6D869F',
	                    fontFamily: 'Verdana, sans-serif'
	                }
	            }
	        },
			yAxis: {
	            min: 0,
	            title: {
	                text: '使用情况 (次数)'
	            }
	        },
	        legend: {
	            enabled: false
	        },
	        tooltip: {
	        	pointFormat: '该设备使用次数 : <b>{point.y:1f} 次</b>'
	        },
			series: [{
	            name: 'Population',
	            data: yArray,
	            dataLabels: {
	                enabled: true,
	                rotation: -90,
	                color: '#FFFFFF',
	                align: 'right',
	                x: 5,
	                y: 10,
	                style: {
	                    fontSize: '13px',
	                    fontFamily: 'Verdana, sans-serif',
	                    textShadow: '0 0 3px black'
	                }
	            }
	        }]
		});
	}
</script>
