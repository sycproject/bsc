<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/taglib.jsp"%>

 <!-- 页面标题 -->
 <title>测试-总览</title>
 
 <link rel="stylesheet" href="" />
 
 <div class="page-header">
    <!-- optional page header -->
    <h1>
		用户管理
		<small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			用户列表
		</small>
	</h1>
 </div>

<div class="row">
	<div class="col-xs-12">
		<div class="table-header">
			<i class="menu-icon fa fa-file-o bigger-120"></i>&nbsp;&nbsp; 字典列表
		</div>

		<div id="table1">
			<!-- 字典列表 -->
			<table id="myTable"
				class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th class="center">序号</th>
						<th class="center">用户姓名</th>
						<th class="center">用户年龄</th>
						<th class="center">用户地址</th>
						<th class="center">用户性别</th>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
		</div>
		
	</div>
</div>


<script type="text/javascript">
  var scripts = ["${ctx}/ui/assets/js/jquery.dataTables.min.js", "${ctx}/ui/assets/js/jquery.dataTables.bootstrap.js"]
  ace.load_ajax_scripts(scripts, function() {
   //put inline scripts related to this page here
   	  var contextPath = '${ctx}';
   	  var oTable;
	  oTable =  $('#myTable').dataTable( {
	    	"bProcessing": true,
	    	"bServerSide": true,
	    	"sServerMethod": "POST",
	    	"aLengthMenu": [[5, 10,15, 20], [5, 10,15, 20]],  
	    	"iDisplayLength":5,
	    	"bAutoWidth":false,
	    	"jQueryUI": false,
	    	"sAjaxSource": contextPath + "/sys/user/list",
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
	            { "data": "id","sName": "id","bVisible": false },
	            { "data": "name","sName": "name","sClass": "center" },
	            { "data": "age", "sName": "age","sClass": "center"},
	           	{ "data":"address","sName": "addresss","bSortable": false,"sClass": "center"},
	           	{ "data":"gender","sName": "gender","bSortable": false,"sClass": "center"}
	        ]/* ,
	        "createdRow": function ( row, data, index ) {
	        	$('td',row).eq(0).html("<a href='javascript:openDictionaryItem(\""+data.dictId+"\")'>"+data.dictName+"</a>");
	        } */
	    } ); 
  });
 </script>