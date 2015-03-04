<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/taglib.jsp"%>

 <!-- 页面标题 -->
 <title>日志管理</title>
 
 <link rel="stylesheet" href="" />
 
 <div class="page-header">
    <!-- optional page header -->
    <h1>
		系统管理
		<small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			日志管理
		</small>
	</h1>
 </div>

<div class="row">
	<div class="col-xs-12">
		<div class="table-header">
			<i class="menu-icon fa fa-file-o bigger-120"></i>&nbsp;&nbsp; 日志列表
			<a class="blue pull-right" href="javascript:onAdd()" class="tooltip-info" data-rel="tooltip" title="添加">
				<span style="margin-right: 12px" class="blue">
					<i class="ui-icon ace-icon fa fa-plus-circle white bigger-120"></i>
					<span style="color: white;margin-left: 2px">添加</span>
				</span>
			</a>
		</div>

		<div id="table1">
			<!-- 字典列表 -->
			<table id="myTable"
				class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th class="center"></th>
						<th class="center sorting_disabled">
							<label class="position-relative">
								<input type="checkbox" class="ace" id="checkbox_keys" />
								<span class="lbl"></span>
							</label>
						</th>
						<th class="center">登录用户</th>
						<th class="center">IP地址</th>
						<th class="center">访问路径</th>
						<th class="center">方法描述</th>
						<th class="center"><i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>耗时</th>
						<th class="center">操作</th>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
		</div>
			
	</div>
</div>


<script type="text/javascript">
  var scripts = ["${ctx}/ui/assets/js/jquery.dataTables.min.js", "${ctx}/ui/assets/js/jquery.dataTables.bootstrap.js","${ctx}/ui/assets/js/bootbox.min.js"];
  var contextPath = '${ctx}';
  var oTable;
  var keys;
  ace.load_ajax_scripts(scripts, function() {
   //put inline scripts related to this page here
   	  
	  oTable =  $('#myTable').dataTable( {
	    	"bProcessing": true,
	    	"bServerSide": true,
	    	"sServerMethod": "POST",
	    	"aLengthMenu": [[5, 10,15, 20], [5, 10,15, 20]],  
	    	"iDisplayLength":5,
	    	"bAutoWidth":false,
	    	"jQueryUI": false,
	    	"sAjaxSource": contextPath + "/sys/log/list",
	    	"oLanguage": {
	    		  "sSearch": "搜索:",
	    		  "sLengthMenu": "每页显示 _MENU_ 条记录",
	    		  "sZeroRecords": "抱歉， 没有找到",
	    		  "sInfo": "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
	    		  "sInfoEmpty": "没有数据",
	    		  "sInfoFiltered": "(从 _MAX_ 条数据中检索)",
	    		  "oPaginate": {
	    		  "sFirst": "首页",
	    		  "sPrevious": "前一页",
	    		  "sNext": "后一页",
	    		  "sLast": "尾页"
	    		  },
	    		  "sZeroRecords": "没有检索到数据",
	    		  "sProcessing": "<img src='"+contextPath+"/ui/assets/img/reloading.gif' />"
	    	},
	       "aoColumns": [
				{ "data": "methodname","sName": "methodName","bVisible": false,"bSortable": false},
				{ "data": "contextpath","sName": "contextPath","sClass": "center","bSortable": false},
	            { "data": "loginname","sName": "loginName","sClass": "center" },
	            { "data": "ipaddress", "sName": "ipAddress","sClass": "center"},
	           	{ "data":"requestpath","sName": "requestPath","bSortable": false,"sClass": "center"},
	           	{ "data":"requestmethod","sName": "requestMethod","bSortable": false,"sClass": "center"},
	           	{ "data":"costtime","sName": "costTime","bSortable": false,"sClass": "center"},
	           	{ "data": "ids","sName": "ids","sClass": "center","bSortable": false }
	        ],
	       /*  "columnDefs": [ {
                "targets": 0,
                "data": "ids",
                "render": function ( data, type, full, meta ) {
               
                  return '<label class="position-relative"><input type="checkbox" value="'+data+'" class="ace"  /><span class="lbl"></span></label>';
                   
                }
              }], */
	        "createdRow": function ( row, data, index ) {

				var checkboxLink = '<label class="position-relative"><input type="checkbox" value="'+data.ids+'" class="ace"  /><span class="lbl"></span></label>';
	        	$('td',row).eq(0).addClass("hidden-480 center sorting_disabled").html(checkboxLink);
	        	var renderLink = '<span class="label label-sm label-success">'+data.costtime+'</span>';
	        	$('td',row).eq(5).addClass("hidden-480 center").html(renderLink);
	        	var operlink = '<a href="javascript:onDetail('+data.ids+')" class="tooltip-info" data-rel="tooltip" title="View"><span class="blue"><i class="ace-icon fa fa-search-plus bigger-120"></i>&nbsp;详情</span></a>&nbsp;&nbsp'
            	+'<a href="javascript:onDelete('+data.ids+')" class="tooltip-error" data-rel="tooltip" title="Delete"><span class="red"><i class="ace-icon fa fa-trash-o bigger-120"></i>&nbsp;删除</span></a>';
	        	$('td',row).eq(6).addClass("hidden-480 center").html(operlink);
	        }
	    } );  
   
		jQuery(function($) {
			$("#checkbox_keys").click(function(){
				alert("点击了");
	 			if($(this).prop('checked') == true){
	 				$("input[type=checkbox][id!=checkbox_keys]").each(function(){
	 					$(this).prop("checked",true);
	 					keys = keys + $(this).val()+",";
	 				});
	 				console.info(keys);
	 			}else if($(this).prop('checked') == false){
	 				$("input[type=checkbox][id!=checkbox_keys]").prop("checked",false);
	 				keys = "";
	 			}
	 		});
		});	
   	
	});
 </script>