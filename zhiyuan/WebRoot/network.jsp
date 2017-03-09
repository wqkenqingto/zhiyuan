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
         <a href="javascript:;">企业邮箱登陆</a>
         <a href="javascript:;">志远快运系统登陆</a>
        </div>
       </li>
       <div class="clears"></div>
      </ul>
     </div><!--nav/-->
     
     <div class="content">
      <div class="width1003">
       <div class="content-left">
        <h2 class="left-title">自助查询</h2>
        <ul class="leftNav">
         <li class="leftNavCur"><a href="search.jsp">运单查询</a></li>
         <li><a href="network.jsp">网点查询</a></li>
<!--          <li><a href="search3.jsp">货物追踪</a></li>
 -->         <li><a href="search4.jsp">订单查询</a></li>
        </ul>
        <div class="lefticon">
         <a href="tousu.jsp"><img src="images/icon1.jpg" /><br />联系</a>
         <a href="tousu.jsp"><img src="images/icon2.jpg" /><br />投诉</a>
         <a href="javascript:;"><img src="images/icon3.jpg" /><br />下载</a>
         <a href="javascript:;"><img src="images/icon4.jpg" /><br />招聘</a>
        </div>
       </div><!--content-left/-->
       <div class="content-right">
        <h2 class="right-title">网点查询</h2>
        <div class="networkbox">
         <div class="network">
          <img src="images/network.gif" width="616" height="546" usemap="#map" />
          <map name="Map" id="Map">
			<area shape="poly" coords="340,405,327,404,322,409,335,420,333,436,336,438,337,443,339,443,354,442,359,436,371,431,379,433,386,427,398,421,396,417,396,407,395,405,389,405,394,391,392,386,385,387,371,377,365,378,364,384,352,383,350,389,356,395" href="netlist.jsp#">
			<area shape="poly" coords="372, 291, 356, 292, 356, 300, 354, 307, 349, 314, 346, 319, 350, 323, 346, 328, 353, 327, 360, 327, 377, 335, 389, 338, 389, 328, 394, 322, 387, 319, 403, 317, 403, 311, 394, 290, 398, 279, 394, 257, 397, 247, 397, 240, 400, 228, 390, 228, 383, 239, 374, 253, 365, 257, 357, 260, 374, 272, 379, 281" href="netlist.jsp#"  >
			<area shape="poly" coords="249, 327, 257, 331, 264, 344, 264, 359, 265, 374, 268, 389, 276, 389, 280, 395, 289, 399, 302, 426, 310, 421, 316, 417, 315, 408, 320, 398, 320, 395, 322, 387, 331, 391, 335, 396, 345, 396, 348, 394, 352, 396, 355, 395, 348, 389, 353, 383, 355, 386, 356, 371, 361, 365, 376, 362, 384, 355, 392, 356, 395, 353, 398, 349, 398, 344, 396, 338, 393, 337, 388, 338, 377, 336, 372, 331, 358, 329, 356, 324, 345, 329, 338, 328, 328, 322, 317, 311, 308, 308, 301, 308, 307, 318, 294, 320, 288, 327, 275, 322, 260, 318, 251, 322" href="netlist.jsp#"  >
			<area shape="poly" coords="344,441,334,447,355,454,356,459,348,464,355,468,363,471,363,476,367,482,378,487,385,486,389,482,400,486,405,483,412,476,418,468,422,465,422,458,426,452,430,443,429,438,429,434,424,434,422,436,418,431,419,419,415,419,395,422,382,435,368,429,352,441" href="netlist.jsp"  >
				                <area shape="poly" coords="469, 552, 454, 554, 445, 565, 448, 578, 460, 582, 474, 573, 472, 566, 477, 557, 475, 551, 472, 551, 468, 552" href="netlist.jsp#.jsp?prov=30016"  >
				                <area shape="poly" coords="412,478,405,484,405,494,412,503,416,501,413,497,414,490,421,484,430,481,434,470,452,467,454,462,460,466,484,456,499,442,493,433,485,427,481,432,475,429,461,433,467,422,454,423,453,418,445,423,441,431,432,427,429,435,429,448,423,458,423,466,416,471" href="netlist.jsp"  >
				                <area shape="rect" coords="433, 469, 461, 490" href="netlist.jsp#.jsp?prov=30003"  >
				                <area shape="rect" coords="461, 461, 483, 479" href="netlist.jsp#.jsp?prov=0"  >
				                <area shape="poly" coords="483, 404, 476, 417, 475, 432, 487, 428, 497, 442, 504, 434, 507, 427, 513, 424, 518, 413, 522, 394, 524, 390, 527, 388, 521, 385, 518, 384, 512, 385, 505, 378, 498, 378, 489, 381, 489, 386, 483, 397" href="netlist.jsp"  >
				                <area shape="rect" coords="527, 320, 575, 339" href="netlist.jsp#.jsp?prov=30033"  >
				                <area shape="poly" coords="105,126,84,128,91,131,90,154,84,158,83,167,68,170,62,176,51,178,42,180,27,182,29,175,18,180,3,189,6,198,14,206,14,221,8,224,16,234,20,239,22,246,34,255,44,256,55,252,60,261,77,268,96,265,106,271,124,268,139,261,154,262,160,268,176,269,177,265,182,264,182,261,186,253,178,246,177,240,184,234,213,228,213,215,213,208,232,194,245,189,242,168,243,179,238,161,227,153,218,145,201,147,198,141,194,135,199,126,192,107,186,98,180,100,170,82,162,81,158,88,149,91,149,105,139,111,123,103,113,122,113,131" href="netlist.jsp"  >
				                <area shape="poly" coords="65,260,58,270,51,280,46,281,43,286,47,295,43,301,32,297,36,310,37,318,38,319,51,329,59,341,62,338,85,356,92,365,105,377,112,382,122,385,140,386,142,394,159,382,172,387,183,394,213,376,219,378,230,375,232,376,233,378,239,381,236,386,247,389,251,389,257,395,259,390,261,390,264,381,261,383,260,381,267,378,267,371,265,351,265,344,249,324,247,331,240,341,237,342,224,331,212,324,197,323,186,317,172,313,163,293,165,283,165,271,182,265,164,265,154,261,133,261,129,266,106,269,95,262,78,266,68,259,62,260" href="netlist.jsp"  >
				                <area shape="poly" coords="217,228,185,234,177,239,187,256,177,264,179,268,162,274,166,269,161,290,164,295,172,313,191,322,206,326,217,329,229,337,237,341,245,336,251,320,265,319,288,328,291,323,295,320,306,320,306,318,302,314,300,310,294,307,299,305,306,297,309,288,312,282,315,277,310,270,310,264,302,256,296,252,291,253,281,241,273,240,267,234,253,237,242,239,232,233,214,225" href="netlist.jsp"  >
				                <area shape="poly" coords="245,185,243,189,224,199,212,207,216,228,232,231,242,237,251,236,260,237,267,234,279,241,284,247,304,256,311,265,313,275,309,290,305,297,294,307,308,310,313,307,320,319,319,317,325,320,330,326,341,329,345,329,345,323,345,320,345,318,348,314,353,311,352,310,354,302,353,299,354,293,375,288,375,283,376,278,376,273,360,265,353,262,353,268,349,271,353,274,354,279,351,288,342,284,340,275,334,265,324,259,316,253,324,244,323,240,323,234,317,233,311,234,309,240,294,237,279,223,286,215,283,211,272,210,264,216,256,206,257,196,253,185,249,184,249,182" href="netlist.jsp"  >
				                <area shape="poly" coords="340, 252, 328, 257, 338, 266, 345, 284, 352, 288, 357, 275, 353, 270, 355, 262, 360, 261, 361, 247, 352, 241, 357, 233, 354, 226, 347, 231, 341, 246" href="netlist.jsp"  >
				                <area shape="poly" coords="261,186,252,180,258,194,252,204,266,216,268,211,281,212,287,214,275,222,302,241,323,234,324,240,323,244,320,252,324,260,335,256,340,253,343,237,352,228,358,233,353,241,362,253,376,252,386,235,394,228,401,226,404,225,406,221,409,217,427,210,429,207,427,203,427,195,430,187,435,193,451,185,451,182,460,174,467,179,469,188,474,190,480,189,481,179,477,174,489,180,507,163,520,156,522,153,517,150,516,147,515,143,512,141,510,140,504,140,498,130,498,123,496,120,505,115,512,109,505,111,509,103,501,98,501,89,496,96,509,78,512,81,514,67,518,41,516,38,510,31,502,36,496,36,488,31,485,26,481,22,477,27,474,22,474,13,460,21,468,31,462,42,458,54,469,58,458,62,448,73,440,72,430,94,434,100,449,100,457,97,468,103,472,108,469,112,462,112,457,116,443,122,434,135,418,146,402,146,398,153,402,164,381,187,359,188,332,202,328,200,299,188,284,185,272,185" href="netlist.jsp"  >
				                <area shape="poly" coords="512, 77, 500, 92, 504, 102, 512, 101, 506, 110, 515, 111, 526, 120, 536, 117, 543, 120, 548, 119, 558, 131, 563, 124, 570, 129, 580, 129, 592, 129, 591, 128, 593, 120, 589, 112, 595, 104, 607, 101, 607, 88, 608, 66, 611, 61, 606, 53, 604, 52, 590, 63, 580, 71, 573, 67, 569, 57, 558, 51, 543, 54, 513, 10, 508, 6, 500, 8, 489, 4, 479, 7, 475, 13, 478, 27, 483, 20, 487, 30, 501, 36, 510, 30, 518, 35, 520, 44" href="netlist.jsp"  >
				                <area shape="poly" coords="505, 111, 503, 119, 494, 120, 498, 127, 503, 140, 510, 138, 520, 153, 528, 153, 533, 161, 536, 156, 545, 172, 552, 181, 557, 168, 571, 170, 568, 162, 575, 159, 581, 151, 584, 147, 583, 140, 590, 144, 597, 134, 588, 129, 581, 131, 574, 131, 562, 127, 559, 132, 547, 119, 533, 119, 523, 120, 514, 111" href="netlist.jsp"  >
				                <area shape="poly" coords="524, 150, 526, 151, 514, 160, 508, 164, 490, 179, 480, 174, 482, 184, 478, 196, 484, 202, 490, 206, 504, 191, 510, 191, 514, 195, 507, 209, 512, 215, 507, 220, 522, 207, 539, 198, 539, 195, 550, 182, 536, 158, 534, 160, 527, 154" href="netlist.jsp"  >
				                <area shape="poly" coords="430, 188, 427, 192, 428, 207, 432, 212, 436, 220, 436, 227, 431, 230, 428, 239, 436, 247, 427, 258, 432, 265, 444, 267, 452, 262, 456, 253, 466, 242, 474, 241, 473, 235, 459, 230, 459, 222, 457, 218, 449, 218, 447, 211, 450, 200, 461, 199, 468, 211, 469, 216, 476, 222, 485, 218, 490, 207, 478, 195, 477, 190, 470, 188, 468, 179, 463, 173, 460, 172, 453, 183, 437, 193" href="netlist.jsp"  >
				                <area shape="poly" coords="452, 199, 447, 212, 445, 221, 461, 221, 465, 215, 466, 207, 463, 202, 458, 196, 457, 202" href="http://localhost:8080/zy/network/netWorkAction_loadNetWorkByCid.action?netWork.cityId=1">
				                <area shape="poly" coords="467, 214, 460, 220, 462, 233, 469, 232, 471, 222, 476, 221, 467, 213" href="netlist.jsp"  >
				                <area shape="poly" coords="265, 376, 259, 384, 261, 390, 249, 385, 253, 391, 254, 398, 261, 399, 260, 426, 247, 438, 244, 444, 249, 453, 260, 452, 265, 463, 270, 471, 269, 479, 276, 487, 284, 491, 291, 487, 298, 494, 301, 492, 298, 481, 302, 475, 310, 472, 320, 474, 326, 472, 331, 472, 336, 470, 341, 466, 342, 461, 347, 462, 354, 460, 354, 458, 356, 454, 352, 448, 341, 448, 334, 443, 332, 431, 335, 420, 328, 416, 323, 407, 333, 403, 341, 402, 339, 402, 354, 396, 343, 395, 332, 396, 324, 386, 321, 396, 313, 405, 316, 417, 310, 421, 302, 426, 289, 399, 280, 394, 277, 389, 267, 389" href="netlist.jsp"  >
				                <area shape="poly" coords="372, 362, 358, 367, 356, 383, 368, 378, 381, 384, 387, 387, 388, 372, 380, 362" href="netlist.jsp"  >
				                <area shape="poly" coords="545, 409, 538, 416, 530, 436, 535, 452, 539, 457, 546, 464, 548, 453, 553, 427, 552, 414" href="netlist.jsp"  >
				                <area shape="poly" coords="405, 225, 398, 234, 397, 251, 394, 262, 398, 277, 393, 290, 396, 295, 406, 292, 422, 283, 431, 274, 430, 265, 427, 256, 435, 247, 427, 239, 435, 224, 433, 215, 428, 207, 422, 211, 410, 219" href="netlist.jsp"  >
				                <area shape="poly" coords="474, 241, 470, 238, 464, 244, 453, 257, 446, 268, 459, 268, 450, 278, 448, 284, 457, 290, 464, 289, 469, 284, 475, 290, 484, 287, 488, 287, 493, 283, 503, 264, 510, 255, 509, 256, 513, 255, 526, 243, 524, 240, 524, 237, 512, 238, 504, 237, 495, 246, 488, 249, 485, 237, 477, 239, 477, 240, 475, 239" href="netlist.jsp"  >
				                <area shape="poly" coords="431, 266, 431, 275, 409, 289, 394, 293, 402, 308, 403, 316, 413, 324, 424, 326, 435, 326, 438, 324, 442, 332, 451, 332, 460, 335, 464, 332, 464, 326, 465, 319, 462, 320, 450, 314, 458, 302, 458, 297, 464, 301, 469, 297, 464, 290, 453, 289, 446, 283, 457, 269, 435, 266, 449, 268" href="netlist.jsp"  >
				                <area shape="poly" coords="403, 318, 392, 319, 395, 318, 390, 327, 388, 335, 398, 344, 400, 350, 379, 359, 382, 367, 389, 375, 400, 366, 406, 367, 408, 359, 420, 362, 428, 368, 441, 362, 441, 369, 445, 369, 451, 368, 457, 362, 460, 359, 472, 356, 468, 350, 469, 343, 462, 340, 457, 333, 450, 333, 443, 331, 434, 324, 420, 326, 409, 320" href="netlist.jsp"  >
				                <area shape="poly" coords="396,365,392,371,390,385,392,398,390,406,395,406,396,421,407,416,416,416,422,422,418,433,429,434,430,426,439,429,439,422,452,421,452,407,450,398,446,393,446,386,452,380,450,374,444,367,440,364,435,365,431,364,415,358,408,358,406,367" href="netlist.jsp"  >
				                <area shape="poly" coords="472, 355, 463, 356, 456, 364, 446, 369, 451, 375, 446, 388, 445, 394, 451, 403, 449, 416, 454, 424, 460, 422, 458, 431, 469, 430, 473, 427, 480, 412, 485, 398, 487, 382, 499, 380, 502, 371, 497, 365, 492, 357, 481, 360, 478, 355, 478, 352" href="netlist.jsp#.jsp?prov=30024"  >
				                <area shape="poly" coords="458, 298, 450, 313, 459, 319, 462, 319, 464, 328, 459, 335, 469, 342, 467, 350, 474, 357, 483, 357, 483, 364, 490, 359, 499, 361, 503, 354, 502, 347, 507, 343, 511, 333, 506, 332, 493, 321, 496, 317, 490, 312, 485, 306, 486, 299, 465, 289, 469, 293, 466, 299" href="netlist.jsp"  >
				                <area shape="poly" coords="465, 292, 469, 292, 485, 299, 487, 308, 498, 314, 493, 322, 503, 328, 505, 334, 515, 332, 520, 334, 531, 325, 517, 318, 528, 317, 534, 319, 522, 308, 507, 285, 496, 278, 487, 285, 472, 286, 466, 286, 459, 290" href="netlist.jsp"  >
				                <area shape="poly" coords="507, 343, 502, 348, 501, 355, 494, 362, 500, 379, 507, 379, 510, 386, 519, 385, 528, 389, 534, 367, 540, 366, 536, 356, 540, 354, 540, 346, 533, 339, 524, 342, 517, 339, 526, 337, 534, 332, 528, 326, 526, 334, 513, 330, 508, 330, 508, 337" href="netlist.jsp"  >
				                <area shape="poly" coords="392,528,395,516,401,507,411,508,418,505,423,509,419,517,419,525,412,530,406,534" href="netlist.jsp"  >
				           </map>

         </div><!--network/-->
        </div><!--networkbox/-->
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