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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="Author" contect="http://www.webqin.net">
    <title>志远速递</title>
    <link rel="shortcut icon" href="images/favicon.ico" />
    	
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    
    <link href="css/response.css" rel="stylesheet">
    <link href="css/silde.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
    $(document).ready(function(){ 
　　		$.post("http://localhost:8080/zy/news/newsAction_loadAllNews.action")
　
}); 
    
    
    </script>
  </head>
  <body>
    <div class="header">
      <div class="width1003">
       <h1 class="logo"><a href="index.jsp"><img src="images/logo.png" width="202" height="74" /></a></h1>
       <div class="topLink">
        <a href="contact.jsp" class="tl1">联系我们</a>
        <a href="tousu.jsp" class="tl2">投诉建议</a>
        <a href="download.jsp" class="tl3">下载中心</a>
        <a href="job.jsp" class="tl4">人才招聘</a>
       </div><!--topLink/-->
       <div class="phones">
        <div><a href="javascript:;" onclick="AddFavorite(window.location,document.title)">加入收藏</a>&nbsp;
        <a href="javascript:;" onclick="SetHome(this,window.location)">设为首页</a></div>
         <p>服务热线：<strong>13001038696</strong></p>
       </div><!--phones/-->
       <div class="clears"></div>
      </div><!--width1003/-->
     </div><!--header/-->
     <div class="nav-toggle">
      <div class="nav-open"><span class="glyphicon glyphicon-th-list"></span></div>
      <div class="nav-close"><span class="glyphicon glyphicon-remove"></span></div>
     </div>
     <div class="clearfix"></div>
     <div class="nav">
      <ul class="width1003">
       <li><a href="index.jsp">首页</a></li>
       <li><a href="service.jsp">服务大厅</a>
        <div class="chilNav">
         <a href="service.jsp">志远常识</a>
         <a href="service.jsp">新手入门</a>
         <a href="tousu.jsp">投诉建议</a>
         <a href="download.jsp">下载中心</a>
        </div>
       </li>
       <li><a href="search.jsp">自助查询</a>
        <div class="chilNav">
         <a href="search.jsp">运单查询</a>
         <a href="network.jsp">网点查询</a>
         <!-- <a href="search3.jsp">货物追踪</a> -->
         <a href="search4.jsp">订单查询</a>
        </div>
       </li>
       <li><a href="product.jsp">产品与服务</a>
        <div class="chilNav">
         <a href="product.jsp">快运产品</a>
         <a href="product.jsp">定制产品</a>
         <a href="product.jsp">增值服务</a>
         <a href="product.jsp">整车转运</a>
         <a href="product.jsp">仓储物流</a>
        </div>
       </li>
       <li><a href="join.jsp">加入志远</a>
        <div class="chilNav">
         <a href="join.jsp">加盟指南</a>
         <a href="join.jsp">在线加盟</a>
         <a href="join.jsp">人才服务</a>
         <a href="job.jsp">人才招聘</a>
         <a href="job.jsp">在线招聘</a>
        </div>
       </li>
       <li><a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">新闻公告</a></a>
        <div class="chilNav">
         <a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">志远新闻</a>
         <a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">志远公告</a>
         <a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">行业动态</a>
         <a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">企业视频</a>
         <a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">企业微博</a>
        </div>
       </li>
       <li><a href="about.jsp">走进志远</a>
        <div class="chilNav">
         <a href="about.jsp">志远简介</a>
         <a href="about.jsp">志远历程</a>
         <a href="about.jsp">志远文化</a>
         <a href="about.jsp">志远品牌</a>
         <a href="contact.jsp">联系我们</a>
         <a href="http://localhost:8080/admin/login.jsp">志远快运系统登陆</a>
        </div>
       </li>
       <div class="clears"></div>
      </ul>
     </div><!--nav/-->
     
     <div class="content">
      <div class="width1003">
       <div class="content-left">
        <h2 class="left-title"><a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">新闻公告</a></h2>
        <ul class="leftNav">
         <li class="leftNavCur"><a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">志远新闻</a></li>
         <li><a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">志远公告</a></li>
         <li><a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">行业动态</a></li>
         <li><a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">企业视频</a></li>
         <li><a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">企业微博</a></li>
        </ul>
        <div class="lefticon">
         <a href="tousu.jsp"><img src="images/icon1.jpg" /><br />联系</a>
         <a href="tousu.jsp"><img src="images/icon2.jpg" /><br />投诉</a>
         <a href="javascript:;"><img src="images/icon3.jpg" /><br />下载</a>
         <a href="javascript:;"><img src="images/icon4.jpg" /><br />招聘</a>
        </div>
       </div><!--content-left/-->
       <div class="content-right">
        <h2 class="right-title">志远新闻</h2>
        <ul class="new">
         <s:iterator value="#request.nlist" var="n">
         <li><a href="http://localhost:8080/zy/news/newsAction_loadoneNews.action?news.nid=${n.nid}">${n.title}</a> <span>${n.updtime}</span></li>
        	</s:iterator>
        </ul>
       </div><!--content-right/-->
       <div class="clearfix"></div>
      </div><!--width1003/-->
     </div><!--content/-->
     
     <footer>
      <div class="width1003">
       <ul>
        <li class="ft-title">服务大厅</li>
        <li><a href="service.jsp">志远常识</a></li>
        <li><a href="service.jsp">新手入门</a></li>
        <li><a href="tousu.jsp">投诉建议</a></li>
        <li><a href="download.jsp">下载中心</a></li>
       </ul>
       <ul>
        <li class="ft-title">自助查询</li>
        <li><a href="search.jsp">运单查询</a></li>
        <li><a href="network.jsp">网点查询</a></li>
        <!-- <li><a href="search3.jsp">货物追踪</a></li> -->
        <li><a href="search4.jsp">订单查询</a></li>
       </ul>
       <ul>
        <li class="ft-title">产品与服务</li>
        <li><a href="product.jsp">快运产品</a></li>
        <li><a href="product.jsp">定制产品</a></li>
        <li><a href="product.jsp">增值服务</a></li>
        <li><a href="product.jsp">整车转运</a></li>
        <li><a href="product.jsp">仓储物流</a></li>
       </ul>
       <ul>
        <li class="ft-title">加入志远</li>
        <li><a href="join.jsp">加盟指南</a></li>
        <li><a href="join.jsp">在线加盟</a></li>
        <li><a href="join.jsp">人才服务</a></li>
        <li><a href="job.jsp">人才招聘</a></li>
        <li><a href="job.jsp">在线招聘</a></li>
       </ul>
       <ul>
        <li class="ft-title"><a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">新闻公告</a></li>
        <li><a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">志远新闻</a></li>
        <li><a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">志远公告</a></li>
        <li><a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">行业动态</a></li>
        <li><a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">企业视频</a></li>
        <li><a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">企业微博</a></li>
       </ul>
       <ul>
        <li class="ft-title">走进志远</li>
        <li><a href="about.jsp">志远简介</a></li>
        <li><a href="about.jsp">志远历程</a></li>
        <li><a href="about.jsp">志远文化</a></li>
        <li><a href="about.jsp">志远品牌</a></li>
        <li><a href="contact.jsp">联系我们</a></li>
        <li><a href="http://localhost:8080/admin/login.jsp">志远快运系统登陆</a></li>
       </ul>
       <div class="footcontact">
        <h2 class="ft-title">联系我们</h2>
        <div class="fttext">
         咨询热线：13001038696<br />
         总部地址：北京市海淀区金燕龙大厦304号<br />
         官方网站：www.wqkenqing.ren
        </div>
        
       </div><!--footcontact/-->
       <div class="clearfix"></div>
      </div><!--width1003/-->
     </footer>
     <div class="copy">
		Copyright © 2015 wqkenqing    京ICP备16021314号-1    北京市海淀区金燕龙大厦304号 技术支持：秋意网
     </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/style.js"></script>
    <!--焦点轮换-->
	<script src="js/jquery.excoloSlider.js"></script>
    <script>
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationClickable: true
    });
    </script>
    <script type="text/javascript">
	 $(function(){
		 //导航定位
		 $(".nav li:eq(5) a:first").addClass("navCur");
		 })
	</script>
    
  </body>
</html>