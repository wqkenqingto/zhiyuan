<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <title>志运速递</title>
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
        <h2 class="left-title">服务大厅</h2>
        <ul class="leftNav">
         <li class="leftNavCur"><a href="service.jsp">物流常识</a></li>
         <li><a href="service.jsp">新手入门</a></li>
         <li><a href="tousu.jsp">投诉建议</a></li>
         <li><a href="download.jsp">下载中心</a></li>
        </ul>
        <div class="lefticon">
         <a href="tousu.jsp"><img src="images/icon1.jpg" /><br />联系</a>
         <a href="tousu.jsp"><img src="images/icon2.jpg" /><br />投诉</a>
         <a href="javascript:;"><img src="images/icon3.jpg" /><br />下载</a>
         <a href="javascript:;"><img src="images/icon4.jpg" /><br />招聘</a>
        </div>
       </div><!--content-left/-->
       <div class="content-right">
        <h2 class="right-title">物流常识</h2>
        <div class="Article">
         1、如何填写托运单？<br />
        解答：托运书主要是填写收货人与发货人的有效信息，以保证货物的安全接收，托运书填写步骤如下：<br />
        1)当您在志远营业网点发货时，我们的工作人员会主动给您托运单填写。<br />
        2)托运书的主要填写内容有发货人姓名、电话、地址和收货人的姓名、电话、地址等。<br />
        3)只要您把填好的托运书再交给我们的工作人员，我们的工作人员会告知您是否完成。<br />
        4)如果遇到问题，我们的工作人员会教您如何填写。<br />
        <br />
        2、如何正确包装？<br />
        常见包装安全隐患：<br />
        1)纸箱多次重复使用，以致运输过程中失去保护作用，导致货物损坏。<br />
        2)提示：避免使用不具保护力的纸箱，及时更换新的包装箱。<br />
        3)包装与货物的重量或体积不相匹配，在运输过程中易包装变形、破裂、内物松动或漏出散失。<br />
        提示：根据货物的重量或体积选择包装，包装货物时一定要密封、加固。<br />
        4)随意简单包装，而不根据货物类别特点选择包装，导致货物的破损、丢失、潮湿等。<br />
        5)提示：<br />
        液体胶状物运输时因摇晃易飞溅、渗漏，在包装时应密封好，再用胶带加固，在包装盒外多加一层包装，同时在包 装内添加填充物减少碰撞。<br />
        服装等软性货物和小五金等货物除用纸箱包装之外，必须在外加上有纤维袋包装，有防水功能最佳。
        小件货物零散包装，因体积太小，容易导致丢失，通常使用纤袋包装。<br />
        贵重品、精密产品、易碎品、流质品、机械零件、仪器、金属制品、高比重物品以及散落容易丢失的物品等，除用 普通纸箱包装外，必须添加木架包装，加固又防挤压，保障货物安全。<br />
        小件电子产品在包装时应添加防震填充物（泡沫等材料），减少碰撞。<br />
        未采用木架包装的较重货物必须用打包带加固。<br /><br />
        
        3、如何网上下单 ?<br />
        网上下单发货。使用该功能您再也不用手写托运单，系统支持托运单打印功能。当客户备有针式打印机和志远托运单可以自行打印，或使用我公司提供的填好内容的托运单，签字确认，即刻搞定。<br />
        操作： 填写该订单时，请客户认真阅读每一栏信息，并仔细填写， 标注的栏为必填栏。每一栏信息的准确与否都直接关系到您的货物的 快速送达。<br />
        4、哪些属于禁运品？有何规定？<br />
        回答：<br />
        交通运输管理部门禁止公路运输及公司禁止运输的货物。<br />
        所有门店不得以任何理由运输，违反者通报批评或行政处理，由此造成任何索赔，由发货网点全责承担。<br />
        （一）违规禁寄品：<br />
        易爆物品：如烟火制品（礼花、鞭炮、摔炮、拉炮等）发令纸、干冰、打火机、煤气炉、煤气罐、火柴、火药等；<br />
        气体、粉末状物品（有刺激异味伤害皮肤的化工粉末）、膏状物品（如锡膏等）、白色晶状物品。<br />
        液体(不论是否易燃)：如汽油、煤油、柴油、苯、酒精、油漆、涂料、油墨、去光液等化学液体；<br />
        易燃固体、自燃物品和遇湿易燃物品：如煤、松香、石蜡、活性碳、白磷、黄磷、油麻、金属钠、镁铝粉、锂电、蓄电池等；<br />
        氧化剂和有机过氧化物：如氧化氢、过氧化钠、次氯酸钙、氯酸钾、硝酸钾、不明化学成份物品等：<br />
        毒害品和感染性物品。指在流通过程中容易发生中毒和感染的物品，如杀虫剂、灭草剂、砷及其化合物、汞及其化合物、氰及其化合物、哥罗芳、苯铵、生漆、血液、尿液、体液、炭疽、危险性病菌等；<br />
        腐蚀品，能灼烧人体组织，并对金属等物品造成损坏的固体和液体，如硫酸、硝酸、 盐酸、氯磺酸、冰醋酸、烧碱、双氧 等。<br />
        最小单位包装的最大剂量单支不超过500ML的可承运品如下：<br />
        化妆品、护肤品、洗漱用品（如牙膏、洗面乳、 护手霜、沫浴露、洗发水等）<br />
        食品（不可承运的食用油、调味品、生鲜易变质食品）<br />
        药品（不可承运的碘酒、酒精、双氧水）<br />
        </div><!--Article/-->
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
        <li><a href="javascript:;">企业邮箱登陆</a></li>
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
		 $(".nav li:eq(1) a:first").addClass("navCur");
		 })
	</script>
    
  </body>
</html>