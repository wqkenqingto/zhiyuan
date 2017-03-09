<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
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
        <!--  <a href="search3.jsp">货物追踪</a> -->
         <a href="search4.jsp">订单查询</a>
        </div>
       </li>
       <li><a href="product.jsp">产品与服务</a>
        <div class="chilNav">
         <a href="product.jsp">快运产品</a>
         <a href="orders.jsp">自助下单</a>
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
       <li><a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">新闻公告</a>
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
     
     <!-- Swiper -->
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img src="images/banner1.jpg" /></div>
            <div class="swiper-slide"><img src="images/banner2.jpg" /></div>
            <div class="swiper-slide"><img src="images/banner3.jpg" /></div>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
    </div>
     <div class="index-search">
       <div class="width1003">
        <h2 class="title">自助查询 <span>/ Self Inquiry</span></h2>
        <div class="index-search-list">
         <div class="isl-box">
          <h2>运单查询</h2>
          <form action="order/orderAction_getOrderInfo.action" method="get">
           <div class="islinput"><input type="text" placeholder="请输入运单号" name="order.wayNum" /></div>
           <div class="islsub"><input type="submit" value="查询" /></div>
          </form>
         </div>
        </div><!--index-search-list/-->
        <!-- <div class="index-search-list">
         <div class="isl-box">
          <h2>网点查询</h2>
          <form action="#" method="get">
           <div class="islinput"><input type="text" placeholder="请输入市区" /></div><br>

           <div class="islinput"><input type="text" placeholder="街道名称" /></div>
           <div class="islsub"><input type="submit" value="查询" /></div>
          </form>
         </div>
        </div>index-search-list/ -->
        <div class="index-search-list">
         <div class="isl-box">
          <h2>订单查询</h2>
          <form action="order/orderAction_getOrderInfo.action" method="get">
           <div class="islinput"><input type="text" placeholder="请输入订单号" name="order.onumber" /></div>
           <div class="islsub"><input type="submit" value="查询" /></div>
          </form>
         </div>
        </div><!--index-search-list/-->
        <div class="clearfix"></div>
       </div><!--index-search/-->
      </div><!--index-search/-->
    <!-- Swiper JS -->
     
     <div class="content">
      <div class="width1003">
       <h2 class="title">产品与服务 <span>/ Proudct & Service</span></h2>
       <div class="index-pro">
        <dl>
         <a href="product.jsp">
          <dt><img src="images/pcon1.png" width="100" height="100" /></dt>
          <dd>
           <h3>快运产品</h3>
           <p>运输快捷，经济实用</p>
          </dd>
         </a>
        </dl>
        <dl>
         <a href="orders.jsp">
          <dt><img src="images/pcon2.png" width="100" height="100" /></dt>
          <dd>
           <h3>自助下单</h3>
           <p>安全保价，放心托运</p>
          </dd>
         </a>
        </dl>
        <dl>
         <a href="product.jsp">
          <dt><img src="images/pcon3.png" width="100" height="100" /></dt>
          <dd>
           <h3>增值服务</h3>
           <p>运输快捷，经济实用</p>
          </dd>
         </a>
        </dl>
        <dl>
         <a href="product.jsp">
          <dt><img src="images/pcon4.png" width="100" height="100" /></dt>
          <dd>
           <h3>整车转运</h3>
           <p>专业打包，暖心服务</p>
          </dd>
         </a>
        </dl>
        <dl>
         <a href="product.jsp">
          <dt><img src="images/pcon5.png" width="100" height="100" /></dt>
          <dd>
           <h3>仓储物流</h3>
           <p>定时定点，足不出户</p>
          </dd>
         </a>
        </dl>
        <div class="clearfix"></div>
       </div><!--index-pro/-->
      </div><!--width1003/-->
     
      <div class="width1003">
       <h2 class="title">新闻快讯 <span>/ News</span></h2>
       <div class="index-new">
        <ul class="new fl">
         <li><a href="newinfo.jsp">习近平会见奥巴马:中美应坚持不冲突不对抗</a><span>2015-11-30</span></li>
         <li><a href="newinfo.jsp">传统出租公司加速进军专车市场 逆袭</a><span>2015-11-30</span></li>
         <li><a href="newinfo.jsp">中纪委秒杀8“虎”：从抓到通报最</a><span>2015-11-30</span></li>
         <li><a href="newinfo.jsp">村民阻运煤专线施工被关铁笼 官方：自</a><span>2015-11-30</span></li>
         <li><a href="newinfo.jsp">山东邹平工厂煤气泄致17人中毒 目前已</a><span>2015-11-30</span></li>
         <li><a href="newinfo.jsp">分期乐CEO肖文杰：做理性的创业者绝不</a><span>2015-11-30</span></li>
         <li><a href="newinfo.jsp">桑兰晒赴美面签申请自证清白 称未申请政治</a><span>2015-11-30</span></li>
        </ul>
        <div class="inde-new-img fr">
         <img src="images/n1.png" />
        </div>
        <div class="clearfix"></div>
       </div><!--index-new/-->
      </div><!--width1003/-->
      <div class="links">
       <div class="width1003">
        <h2 class="title">合作伙伴 <span>/ Partners</span></h2>
        <ul>
         <li><a href="javascript:;"><img src="images/link1.jpg" /></a></li>
         <li><a href="javascript:;"><img src="images/link2.jpg" /></a></li>
         <li><a href="javascript:;"><img src="images/link3.jpg" /></a></li>
         <li><a href="javascript:;"><img src="images/link4.jpg" /></a></li>
         <li><a href="javascript:;"><img src="images/link5.jpg" /></a></li>
         <li><a href="javascript:;"><img src="images/link6.jpg" /></a></li>
         <li><a href="javascript:;"><img src="images/link7.jpg" /></a></li>
         <li><a href="javascript:;"><img src="images/link8.jpg" /></a></li>
         <li><a href="javascript:;"><img src="images/link9.jpg" /></a></li>
         <li><a href="javascript:;"><img src="images/link1.jpg" /></a></li>
         <div class="clearfix"></div>
        </ul>
       </div><!--width1003/-->
      </div><!--links/-->
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
        <li class="ft-title"><a href="about.jsp">走进志远</a></li>
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
         咨询热线：021—39927055、4001001717<br />
         总部地址：北京市海淀区金燕龙大厦304号<br />
         官方网站：www.wqkenqing.ren
        </div>
        
       </div><!--footcontact/-->
       <div class="clearfix"></div>
      </div><!--width1003/-->
     </footer>
     <div class="copy">
		Copyright © 2015 wqkenqing   京ICP备16021314号-1    北京市海淀区金燕龙大厦304号 技术支持：秋意网
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
		 $(".nav li:eq(0) a:first").addClass("navCur");
		 })
	</script>
    
  </body>
</html>