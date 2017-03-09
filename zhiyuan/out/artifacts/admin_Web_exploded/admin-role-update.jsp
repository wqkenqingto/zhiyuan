<%@page import="com.zhiyuan.pojo.Potent"%>
<%@page import="com.zhiyuan.pojo.Role"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<script type="text/javascript" src="lib/PIE_IE678.js"></script>
<![endif]-->
<link href="css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<script type="text/javascript">

		window.onload=function(){
		var pids= document.getElementsByName("pids");
		for(var i=0;i<pids.length;i++){
			var pid=	pids[i].value;
		 <% Role role=(Role)request.getAttribute("role"); 
		 
			Set<Potent>pset=role.getPset();
			Integer a=0;
			for(Potent potent:pset){
				a=potent.getPid();
				%> 
		 
		 <%--  --%>	
		 if(pid==<%=a%>){
		 
		 	pids[i].checked="checked";
		 }	 	 <% } %>	
		}	
		}


</script>
<title>新建网站角色</title>
</head>
<body>
<div class="pd-20">
	<form action="rbac/rbacAction_updateRole.action" method="post" class="form form-horizontal" id="form-user-character-add" value="#request.role">
			<input type="hidden" name="role.roid" value="${role.roid }"/>
		<div class="row cl">
			<label class="form-label col-2"><span class="c-red">*</span>角色名称：</label>
			<div class="formControls col-10">
				<input type="text" class="input-text" name="role.rname" value="${role.rname}" placeholder="" id="user-name"  datatype="*4-16" nullmsg="用户账户不能为空"/>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-2">备注：</label>
			<div class="formControls col-10">
				<input type="text" class="input-text"   placeholder="" id="" name="role.content" value=	"${role.content}"/>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-2">公司角色：</label>
			<div class="formControls col-10">
				<dl class="permission-list">
					<dt>
						<label>
							<input type="checkbox"   id="user-Character-0">
							业务岗</label>
					</dt>
					<dd>
						<dl class="cl permission-list2">
							<dt>
								<label class="">
									<input type="checkbox"    id="user-Character-0-0">
									业务管理</label>
							</dt>
							<dd>
								<label class="">
									
									<input type="checkbox" value="1" name="pids" id="user-Character-0-0-0">
									资讯管理</label>
								<label class="">
									<input type="checkbox" value="2"  name="pids" id="user-Character-0-0-1">
									产品管理</label>
								<label class="">
									<input type="checkbox" value="4" name="pids" id="user-Character-0-0-2">
									评论管理</label>
								<label class="">
									<input type="checkbox" value="5" name="pids" id="user-Character-0-0-3">
									财务管理</label>
								<!-- <label class="">
									<input type="checkbox" value="" name="user-Character-0-0-0" id="user-Character-0-0-4">
									审核</label>
								<label class="c-orange"><input type="checkbox" value="" name="user-Character-0-0-0" id="user-Character-0-0-5"> 只能操作自己发布的</label> -->
							</dd>
						</dl>
							<!-- <dl class="cl permission-list2">
								<dt>
									<label class="">
										<input type="checkbox" value="" name="user-Character-0-1" id="user-Character-0-1">
										文章管理</label>
								</dt>
								<dd>
									<label class="">
										<input type="checkbox" value="" name="user-Character-0-1-0" id="user-Character-0-1-0">
										添加</label>
									<label class="">
										<input type="checkbox" value="" name="user-Character-0-1-0" id="user-Character-0-1-1">
										修改</label>
									<label class="">
										<input type="checkbox" value="" name="user-Character-0-1-0" id="user-Character-0-1-2">
										删除</label>
									<label class="">
										<input type="checkbox" value="" name="user-Character-0-1-0" id="user-Character-0-1-3">
										查看</label>
									<label class="">
										<input type="checkbox" value="" name="user-Character-0-1-0" id="user-Character-0-1-4">
										审核</label>
									<label class="c-orange"><input type="checkbox" value="" name="user-Character-0-2-0" id="user-Character-0-2-5"> 只能操作自己发布的</label>
								</dd>
							</dl> -->
					</dd>
				</dl> 
				<dl class="permission-list">
					<dt>
						<label>
							<input type="checkbox"  id="user-Character-1">
							管理岗</label>
					</dt>
					<dd>
						<dl class="cl permission-list2">
							<dt>
								<label class="">
									<input type="checkbox"  id="user-Character-1-0">
									管理岗管理</label>
							</dt>
							<dd>
								<label class="">
									<input type="checkbox" value="7" name="pids" id="user-Character-1-0-0">
									管理员管理</label>
								<label class="">
									<input type="checkbox" value="9" name="pids" id="user-Character-1-0-1">
									系统管理</label>
								<label class="">
									<input type="checkbox" value="8" name="pids" id="user-Character-1-0-2">
									系统统计</label>
								<!-- <label class="">
									<input type="checkbox" value="" name="user-Character-1-0-0" id="user-Character-1-0-3">
									查看</label>
								<label class="">
									<input type="checkbox" value="" name="user-Character-1-0-0" id="user-Character-1-0-4">
									审核</label> -->
							</dd>
						</dl>
					</dd>
				</dl>
			</div>
		</div>
		<div class="row cl">
			<div class="col-10 col-offset-2">
				<button type="submit" class="btn btn-success radius" id="admin-role-save"  onclick="close()"><i class="icon-ok"></i> 确定</button>
			</div>
		</div>
	</form>
</div>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/1.9.3/layer.js"></script> 
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script> 
<script type="text/javascript" src="lib/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript" src="js/H-ui.js"></script> 
<script type="text/javascript" src="js/H-ui.admin.js"></script> 
<script>
$(function(){
	$(".permission-list dt input:checkbox").click(function(){
		$(this).closest("dl").find("dd input:checkbox").prop("checked",$(this).prop("checked"));
	});
	$(".permission-list2 dd input:checkbox").click(function(){
		var l =$(this).parent().parent().find("input:checked").length;
		var l2=$(this).parents(".permission-list").find(".permission-list2 dd").find("input:checked").length;
		if($(this).prop("checked")){
			$(this).closest("dl").find("dt input:checkbox").prop("checked",true);
			$(this).parents(".permission-list").find("dt").first().find("input:checkbox").prop("checked",true);
		}
		else{
			if(l==0){
				$(this).closest("dl").find("dt input:checkbox").prop("checked",false);
			}
			if(l2==0){
				$(this).parents(".permission-list").find("dt").first().find("input:checkbox").prop("checked",false);
			}
		}
		
	});
});
function close(){
	window.close();
	}
</script>
</body>
</html>