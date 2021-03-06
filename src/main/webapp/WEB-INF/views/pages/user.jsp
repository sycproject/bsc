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
			<i class="menu-icon fa fa-file-o bigger-120"></i>&nbsp;&nbsp; 用户列表
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
						<th class="center">用户姓名</th>
						<th class="center">用户年龄</th>
						<th class="center">用户地址</th>
						<th class="center">用户性别</th>
						<th class="center">操作</th>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
		</div>
		
		
		<!-- 添加页面 -->
		<div id="formArea" style="display: none;">
			<form class="form-horizontal" id="create_report_form">
				<input type="hidden" name="id" id="userId" value="" />				
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="userName"> 用户名称 </label>

					<div class="col-sm-9">
						<input type="text" id="userName"  name="name" class="col-xs-10 col-sm-5" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="userPass"> 用户密码</label>

					<div class="col-sm-9">
						<input type="password" id="userPass"  name="pass" class="col-xs-10 col-sm-5" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="userAddress"> 用户住址</label>

					<div class="col-sm-9">
						<input type="text" id="userAddress"  name="address" class="col-xs-10 col-sm-5" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="userAge"> 用户年龄</label>

					<div class="col-sm-9">
						<input type="text" id="userAge"  name="age" class="col-xs-10 col-sm-5" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="userGender"> 用户性别 </label>

					<div class="col-sm-9">
						<input type="text" id="userGender"  name="gender" class="col-xs-10 col-sm-5" />
					</div>
				</div>
              </form>
		</div>
		
		<!-- 详情页面 -->
		<div id="detailArea" style="display: none;">
			<div class="profile-user-info profile-user-info-striped">
				<div class="profile-info-row">
					<div class="profile-info-name"> 用户姓名 </div>

					<div class="profile-info-value">
						<span class="editable" id="detail_userName"></span>
					</div>
				</div>
				
				<div class="profile-info-row">
					<div class="profile-info-name"> 用户住址 </div>

					<div class="profile-info-value">
						<span class="editable" id="detail_userAddress"></span>
					</div>
				</div>
				
				<div class="profile-info-row">
					<div class="profile-info-name"> 用户年龄</div>

					<div class="profile-info-value">
						<span class="editable" id="detail_userAge"></span>
					</div>
				</div>
				
				<div class="profile-info-row">
					<div class="profile-info-name"> 用户性别</div>

					<div class="profile-info-value">
						<span class="editable" id="detail_userGender"></span>
					</div>
				</div>
			</div>
		</div>
		
	</div>
</div>


<script type="text/javascript">
  var scripts = ["${ctx}/ui/assets/js/jquery.dataTables.min.js", "${ctx}/ui/assets/js/jquery.dataTables.bootstrap.js","${ctx}/ui/assets/js/bootbox.min.js"];
  var contextPath = '${ctx}';
  var oTable;
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
	            { "data": "name","sName": "name","sClass": "center" },
	            { "data": "age", "sName": "age","sClass": "center"},
	           	{ "data":"address","sName": "address","bSortable": false,"sClass": "center"},
	           	{ "data":"gender","sName": "gender","bSortable": false,"sClass": "center"},
	           	{ "data": "id","sName": "id","sClass": "center","bSortable": false }
	        ],
	        "createdRow": function ( row, data, index ) {
	        	var operlink = '<a href="javascript:onDetail('+data.id+')" class="tooltip-info" data-rel="tooltip" title="View"><span class="blue"><i class="ace-icon fa fa-search-plus bigger-120"></i>&nbsp;详情</span></a>&nbsp;&nbsp'
	        	+'<a href="javascript:onEdit('+data.id+')" class="tooltip-success" data-rel="tooltip" title="Edit"><span class="green"><i class="ace-icon fa fa-pencil-square-o bigger-120"></i>&nbsp;修改</span></a>&nbsp;&nbsp'
            	+'<a href="javascript:onDelete('+data.id+')" class="tooltip-error" data-rel="tooltip" title="Delete"><span class="red"><i class="ace-icon fa fa-trash-o bigger-120"></i>&nbsp;删除</span></a>';
	        	$('td',row).eq(4).addClass("hidden-480 center").html(operlink);
	        }
	    } ); 
  });
  
  function onAdd(){
	  bootbox.dialog({
		title: "<i class='ace-icon fa fa-save'></i>&nbsp;&nbsp;用户添加",
		message: $("#formArea").html(),
		buttons: 			
		{
			"success" :
			 {
				"label" : "<i class='ace-icon fa fa-check'></i>保存",
				"className" : "btn-sm btn-success",
				"callback": function() {
					var addUrl = contextPath + "/sys/user/doAdd";
					onSave(addUrl,"添加成功");
				}
			},
			"cancel" :
			{
				"label" : "退出",
				"className" : "btn-sm btn-danger",
				"callback": function() {
					//alert("退出");
				}
			}
		}
	}); 
  }
  
  function onEdit(id){
		$.ajax({
	        type: "post",
	        dataType: "json",
	        url: contextPath + "/sys/user/preEdit",
	        data: "id="+id,
	        success: function(data) {
	            if (data.msg == 'ok') {
	            	prepareDialogHtml(data,"用户修改");
	            }
	        }
	    });
	}
	
	function prepareDialogHtml(data,title){
		var userId = data.user.id;
		var userName = data.user.name;
		var userPass = data.user.pass;
		var userAddress = data.user.address;
		var userAge = data.user.age;
		var userGender = data.user.gender;
		
		bootbox.dialog({
			title: "<i class='ace-icon fa fa-save'></i>&nbsp;&nbsp;"+title,
			message: $("#formArea").html(),
			buttons: 			
			{
				"success" :
				 {
					"label" : "<i class='ace-icon fa fa-check'></i>保存",
					"className" : "btn-sm btn-success",
					"callback": function() {
						var editUrl = contextPath + "/sys/user/doEdit";
						onSave(editUrl,"修改成功");
					}
				},
				"cancel" :
				{
					"label" : "退出",
					"className" : "btn-sm btn-danger",
					"callback": function() {
						//alert("退出");
					}
				}
			}
		}); 
		$(".modal-body  #userId").val(userId);
		$(".modal-body  #userName").val(userName);
		$(".modal-body  #userPass").val(userPass);
		$(".modal-body  #userAddress").val(userAddress);
		$(".modal-body  #userAge").val(userAge);
		$(".modal-body  #userGender").val(userGender);
	}
	function onSave(operUrl,message){
		var user = {
				"id":$(".modal-body  #userId").val(),
				"name":$(".modal-body  #userName").val(),
				"pass":$(".modal-body  #userPass").val(),
				"address":$(".modal-body  #userAddress").val(),
				"age":$(".modal-body  #userAge").val(),
				"gender":$(".modal-body  #userGender").val()
	    };
		$.ajax({
	        type: "post",
	        dataType: "json",
	        url: operUrl,
	        data: user,
	        success: function(data) {
	            if (data.msg == 'ok') {
	            	bootbox.alert(message);
	                oTable.fnClearTable(0);
	                oTable.fnDraw();
	            }
	        }
	    }); 
	}
	
	
	function onDelete(id){
		
		bootbox.dialog({
			message: "您确定要删除该条数据吗",
			buttons: 			
			{
				"success" :
				 {
					"label" : "<i class='ace-icon fa fa-check'></i>确定",
					"className" : "btn-sm btn-success",
					"callback": function() {
						$.ajax({
			                type: "post",
			                dataType: "json",
			                url: contextPath + "/sys/user/doDelete",
			                data: "id="+id,
			                success: function(data) {
			                    if (data.msg == 'ok') {
			                    	bootbox.alert("删除成功");
			                        oTable.fnClearTable(0);
			                        oTable.fnDraw();
			                    }
			                }
			            }); 
					}
				},
				"cancel" :
				{
					"label" : "取消",
					"className" : "btn-sm btn-danger",
					"callback": function() {
						
					}
				}
			}
		}); 
	}
  
  function onDetail(id){
	  $.ajax({
        type: "post",
        dataType: "json",
        url: contextPath + "/sys/user/doDetail",
        data: "id="+id,
        success: function(data) {
            if (data.msg == 'ok') {
            	prepareDetailHtml(data);
            }
        }
    });
  }
  
  function prepareDetailHtml(data){
	var userName = data.user.name;
	var userAddress = data.user.address;
	var userAge = data.user.age;
	var userGender = data.user.gender;
	
	bootbox.dialog({
		title: "<i class='ace-icon fa fa-save'></i>&nbsp;&nbsp;字典详情",
		message: $("#detailArea").html(),
		buttons: 			
		{
			"success" :
			 {
				"label" : "<i class='ace-icon fa fa-check'></i>确定",
				"className" : "btn-sm btn-success",
				"callback": function() {
					
				}
			}
		}
	}); 
	$(".modal-body  #detail_userName").text(userName);
	$(".modal-body  #detail_userAddress").text(userAddress);
	$(".modal-body  #detail_userAge").text(userAge);
	$(".modal-body  #detail_userGender").text(userGender);
  };
 </script>