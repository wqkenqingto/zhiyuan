<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'header.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/response.css" rel="stylesheet">
    <link href="css/silde.css" rel="stylesheet">
  </head>
<!--   <script type="text/javascript">
  		window.onload=function(){
  		var alist=	document.getElementsByTagName("a");
  		alert(alist.length);
  		 for(var i=0;i<7;i++){
  		 		alert("进入了循环");
  		 		var aa=alist[i];
  			var ac=	aa.getAttribute("href");
  			alert(ac);
  		 		alert(aa);
  		 /* aa="website/"+aa; */
  		/* alert(aa); */ 
  		/* al.setAttribute("href",aa); */ 
  		 }
  		alert(alist);
  		}
  
  
  </script> -->
 <div class="header">
      <div class="width1003">
       <h1 class="logo"><a href="website/index.jsp"><img src="images/logo.png" width="202" height="74" /></a></h1>
       <div class="topLink">
        <a href="contact.jsp" class="tl1">联系我们</a>
        <a href="service.jsp" class="tl2">投诉建议</a>
        <a href="download.jsp" class="tl3">下载中心</a>
        <a href="job.jsp" class="tl4">人才招聘</a>
       </div><!--topLink/-->
       <div class="phones">
        <div><a href="javascript:;" onclick="AddFavorite(window.location,document.title)">加入收藏</a>&nbsp;
        <a href="javascript:;" onclick="SetHome(this,window.location)">设为首页</a></div>
        <p>服务热线：<strong>4001001717</strong></p>
       </div><!--phones/-->
       <div class="clears"></div>
      </div><!--width1003/-->
     </div><!--header/-->
</html>
