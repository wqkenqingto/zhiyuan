<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
  <head>
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
       </div>
       <div class="phones">
        <div><a href="javascript:;" onclick="AddFavorite(window.location,document.title)">加入收藏</a>&nbsp;
        <a href="javascript:;" onclick="SetHome(this,window.location)">设为首页</a></div>
         <p>服务热线：<strong>13001038696</strong></p>
       </div>
       <div class="clears"></div>
      </div>
     </div>
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
     </div>
     
     <div class="content">
      <div class="width1003">
       <div class="content-left">
        <h2 class="left-title">走进志远</h2>
        <ul class="leftNav">
         <li class="leftNavCur"><a href="about.jsp">志远简介</a></li>
         <li><a href="about.jsp">志远历程</a></li>
         <li><a href="about.jsp">志远文化</a></li>
         <li><a href="about.jsp">志远品牌</a></li>
         <li><a href="contact.jsp">联系我们</a></li>
         <li><a href="http://localhost:8080/admin/login.jsp">志远快运系统登陆</a></li>
        </ul>
        <div class="lefticon">
         <a href="tousu.jsp"><img src="images/icon1.jpg" /><br />联系</a>
         <a href="tousu.jsp"><img src="images/icon2.jpg" /><br />投诉</a>
         <a href="javascript:;"><img src="images/icon3.jpg" /><br />下载</a>
         <a href="javascript:;"><img src="images/icon4.jpg" /><br />招聘</a>
        </div>
       </div><!--content-left/-->
       <div class="content-right">
        <h2 class="right-title">志远简介</h2>
        <div class="Article">
         <img src="images/aboutimg.jpg" /><br /><br>

               北京志远速递科技有限公司经过多年的发展，志远速递科技有限公司已成为一家专业的互联网应用技术及网络传播服务提供商，致力为用户提供成熟的互联网应用技术与专业的网络传播服务。<br /><br />

      北京志远速递科技有限公司凭借着对互联网行业的独到见解和丰富经验，在项目策划、项目管理、设计制作、技术开发和网络传播等多方面寻求平衡；在项目过程中，志远速递通过周密的策划、深入的调查、理性的分析、精妙的创意、专业的实施，并同客户的实际情况和具体需求进行良好结合，为不同类型的客户提供最佳的互联网应用定制解决方案，帮助客户在新的全球化互联网环境中保持优势。
<br /><br />
      志远速递秉承先进的互联网应用技术和领先的网络传播理念，建立了科学的管理机制和强有力的服务体系；专业资深的互联网应用技术服务团队将以最优化的资源配置与最佳的网络传播方式为源动力，为志远速递庞大而优秀的客户群体打造网络新形象，正是志远速递的独到之处。
<br /><br />
志远速递 以网站建设、移动互联产品、整合营销服务为核心业务 专注于创意设计和传播应用 探索并实现商业价值最大化 为所有谋求长远发展的企业机构贡献全力 ;志远速递注重专业探索，摒弃虚浮夸张 在更深远的认知中 将不断修正服务导向，完善创作品格 以探求精品塑造与理念升华 勇做推动行业发展的中坚力量;志远速递拥有多年的行业服务经验 成功服务过数百家知名集团企业、品牌客户 凭借对设计的热爱执着，营销趋势的敏锐洞察和深刻理解 与众多客户在蓬勃的市场经济中互促共生;志远速递珍视与客户的每次合作 坚持一切工作都以"创意、传播"这一极富生命力的情节展开 并始终信奉"全力以赴，互促共生"的公司价值观 总是付出更多参与其中 
        </div><!--Article/-->
       </div><!--content-right/-->
       <div class="clearfix"></div>
      </div><!--width1003/-->
     </div><!--content/-->
     
     <!--footer  -->
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
       <!--  <li><a href="search3.jsp">货物追踪</a></li> -->
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
        <li><a href="http://localhost:8080/zy/news/newsAction_loadAllNews.action">新闻公告</a></li>
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
		Copyright © 2015 wqkenqing.    京ICP备00000000号    北京市海淀区金燕龙大厦304号 技术支持：志远速递
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
		 $(".nav li:eq(6) a:first").addClass("navCur");
		 })
	</script>
    
  </body>
</html>