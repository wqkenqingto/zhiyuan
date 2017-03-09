<%@page import="com.zhiyuan.pojo.Order"%>
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
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/1.9.3/layer.js"></script> 
<script type="text/javascript" src="lib/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript" src="lib/icheck/jquery.icheck.min.js"></script> 
<script type="text/javascript" src="lib/Validform/5.3.2/Validform.min.js"></script> 
<script type="text/javascript" src="lib/webuploader/0.1.5/webuploader.min.js"></script> 
<script type="text/javascript" src="lib/ueditor/1.4.3/ueditor.config.js"></script> 
<script type="text/javascript" src="lib/ueditor/1.4.3/ueditor.all.min.js"> </script> 
<script type="text/javascript" src="lib/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script> 
<script type="text/javascript" src="js/H-ui.js"></script> 
<script type="text/javascript" src="js/H-ui.admin.js"></script> 
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/response.css" rel="stylesheet">
<link href="css/silde.css" rel="stylesheet">
<link href="css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="lib/icheck/icheck.css" rel="stylesheet" type="text/css" />
<link href="lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
<link href="lib/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />

<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<script type="text/javascript">
			window.onload=function(){
			var sel1=document.getElementById("sel1");
			var sel2=document.getElementById("sel2");
			<% Order order= (Order) request.getAttribute("order"); 
			     Integer nid=order.getNetWork().getNid();
			%>
			var netvalue= document.getElementById("se").value;
			for (var i=0;i<sel1.options.length;i++){	
				if(	sel1.options[i].value==<%=nid%>){
					sel1.options[i].selected="selected";
				};
				 if(sel2.options[i].innerHTML==netvalue){
					sel2.options[i].selected="selected";
				}
			}
			}
</script>

<title>修改订单</title>
</head>
<body>
<div class="pd-20">
	<form method="post" action="order/orderAction_updateOrders.action"
					id="form">
					<div class="row">
						<div class="col-sm-12">
							<input type="hidden"  value="${order.onumber}" name="order.onumber">
							<input type="hidden" value="${order.reciever.rnetwork}" id="se"/>
							<input type="hidden" value="${order.wayNum}" name="order.wayNum" />
						</div>
						<div class="col-sm-4">
							<div class="yto-item">
								<h4 class="yto-item-hd item-org">
									<strong>寄件方</strong>
								</h4>
								<div class="form-group form-material">
									<label class="control-label">真实姓名</label> <input type="text"
										name="order.sender.sname" class="form-control"
										value="${order.sender.sname }"
										placeholder="请输入姓名">
								</div>
								<!-- <div class="form-group form-material">
									<label class="control-label">省/市/区</label>
									<input type="text" id="sendRegion" data-regionId="sendRegionId" class="form-control" placeholder="请输入省市区" />
									<input type="hidden" name="sendRegionId" value="" />
								</div> -->
								<div class="form-group form-material">
									<label class="control-label">地址</label> <input type="text"
										name="order.sender.saddress" class="form-control"
									value="${order.sender.saddress}"	id="sendaddress" placeholder="请输入详细地址">
								</div>
								<div class="form-group form-material">
									<label class="control-label">联系方式</label> <input type="text"
										name="order.sender.contact" class="form-control"
									value="${order.sender.contact}"	placeholder="手机或电话必填一项">
								</div>
								<div class="form-group form-material">
									<label class="control-label">当前所处网点</label> 
									<select	name="order.netWork.nid" class="form-control" id="sel1" >
										<option value="1000" >东城区</option>
										<option value="1001" >西城区</option>
										<option value="1002">海淀区</option>
										<option value="1003">丰台区</option>
										<option value="1004">朝阳区</option>
										<option value="1005">大兴区</option>
										<option value="1006">通州区</option>
										<option value="1007">昌平区</option>
									</select>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="yto-item">
								<h4 class="yto-item-hd item-green">
									<strong>收件方</strong>
								</h4>
								<div class="form-group form-material">
									<label class="control-label">真实姓名</label> <input type="text"
									value="${order.reciever.rname}"	name="order.reciever.rname" class="form-control"
										placeholder="请输入姓名">
								</div>
								<!-- <div class="form-group form-material">
								<label class="control-label">省/市/区</label>
								<input type="text" id="receiveRegion" data-regionId="receiveRegionId" class="form-control" placeholder="请输入省市区" />
							    <input type="hidden" name="receiveRegionId"  value="" />
							</div -->
								<div class="form-group form-material">
									<label class="control-label">地址</label> <input type="text"
									value="${order.reciever.raddress}"	name="order.reciever.raddress" id="receiveaddress"
										class="form-control" placeholder="请输入详细地址">
								</div>
								<div class="form-group form-material">
									<label class="control-label">联系方式</label> <input type="text"
								value="${order.reciever.contact}"		name="order.reciever.contact" class="form-control"
										placeholder="手机或电话必填一项">
								</div>
								<div class="form-group form-material">
									<label class="control-label">所处网点</label> <select
								id="sel2"	 	name="order.reciever.rnetwork" class="form-control">
										<option value="东城区">东城区</option>
										<option value="西城区">西城区</option>
										<option value="海淀区">海淀区</option>
										<option value="丰台区">丰台区</option>
										<option value="朝阳区">朝阳区</option>
										<option value="大兴区">大兴区</option>
										<option value="通州区">通州区</option>
										<option value="昌平区">昌平区</option>
									</select>
								</div> 
							</div>
						</div>
						<div class="col-sm-4">
							<div class="yto-item">
								<h4 class="yto-item-hd">
									<strong>物品信息</strong>
								</h4>
								<div class="form-group form-material">
									<label class="control-label">备注</label>
									<textarea rows="4" name="order.remarks" class="form-control"
										placeholder="请输入物品的大小详细信息，取件时间要求，便于业务员上门取件！限100字内。">${order.remarks}</textarea>
								</div>
								<div class="form-group form-material">
									<label class="control-label">内件品名</label> <input type="text"
								value="${order.goodsName}"		name="order.goodsName" class="form-control"
										placeholder="请输入物品的名称">
								</div>
								<div class="form-group form-material">
									<label class="control-label">物品重量（kg）</label> <input
								value="${order.weight}"		type="text" id="weight" name="order.weight"
										class="form-control" placeholder="请输入物品的大概重量">
								</div>
							</div>
						</div>
					</div>
					<div class="row p_bottom_20 p_top_20">
						<div class="col-sm-4 col-md-offset-4">
							<input type="submit" id="saveBtn" value="提交订单"
								class="btn btn-primary btn-block btn-lg">
								
						</div>
						<div class="col-sm-4 col-md-offset-4">
								<input class="btn btn-primary btn-block btn-lg" type="button" name="close" value="关闭" onclick="closeWin()" />
						</div>
						
					</div>
				</form>
</div>
</body>

<script type="text/javascript">
		/* var index = parent.layer.getFrameIndex(window.name); //获取当前窗体索引 */
			function closeWin() {  
       		var index = parent.layer.getFrameIndex(window.name);
       		 parent.layer.close(index);
       					
   		} 
/* $(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	$list = $("#fileList"),
	$btn = $("#btn-star"),
	state = "pending",
	uploader;

	var uploader = WebUploader.create({
		auto: true,
		swf: 'lib/webuploader/0.1.5/Uploader.swf',
	
		// 文件接收服务端。
		server: 'http://lib.h-ui.net/webuploader/0.1.5/server/fileupload.php',
	
		// 选择文件的按钮。可选。
		// 内部根据当前运行是创建，可能是input元素，也可能是flash.
		pick: '#filePicker',
	
		// 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
		resize: false,
		// 只允许选择图片文件。
		accept: {
			title: 'Images',
			extensions: 'gif,jpg,jpeg,bmp,png',
			mimeTypes: 'image/*'
		}
	});
	uploader.on( 'fileQueued', function( file ) {
		var $li = $(
			'<div id="' + file.id + '" class="item">' +
				'<div class="pic-box"><img></div>'+
				'<div class="info">' + file.name + '</div>' +
				'<p class="state">等待上传...</p>'+
			'</div>'
		),
		$img = $li.find('img');
		$list.append( $li );
	
		// 创建缩略图
		// 如果为非图片文件，可以不用调用此方法。
		// thumbnailWidth x thumbnailHeight 为 100 x 100
		uploader.makeThumb( file, function( error, src ) {
			if ( error ) {
				$img.replaceWith('<span>不能预览</span>');
				return;
			}
	
			$img.attr( 'src', src );
		}, thumbnailWidth, thumbnailHeight );
	});
	// 文件上传过程中创建进度条实时显示。
	uploader.on( 'uploadProgress', function( file, percentage ) {
		var $li = $( '#'+file.id ),
			$percent = $li.find('.progress-box .sr-only');
	
		// 避免重复创建
		if ( !$percent.length ) {
			$percent = $('<div class="progress-box"><span class="progress-bar radius"><span class="sr-only" style="width:0%"></span></span></div>').appendTo( $li ).find('.sr-only');
		}
		$li.find(".state").text("上传中");
		$percent.css( 'width', percentage * 100 + '%' );
	});
	
	// 文件上传成功，给item添加成功class, 用样式标记上传成功。
	uploader.on( 'uploadSuccess', function( file ) {
		$( '#'+file.id ).addClass('upload-state-success').find(".state").text("已上传");
	});
	
	// 文件上传失败，显示上传出错。
	uploader.on( 'uploadError', function( file ) {
		$( '#'+file.id ).addClass('upload-state-error').find(".state").text("上传出错");
	});
	
	// 完成上传完了，成功或者失败，先删除进度条。
	uploader.on( 'uploadComplete', function( file ) {
		$( '#'+file.id ).find('.progress-box').fadeOut();
	});
	uploader.on('all', function (type) {
        if (type === 'startUpload') {
            state = 'uploading';
        } else if (type === 'stopUpload') {
            state = 'paused';
        } else if (type === 'uploadFinished') {
            state = 'done';
        }

        if (state === 'uploading') {
            $btn.text('暂停上传');
        } else {
            $btn.text('开始上传');
        }
    });

    $btn.on('click', function () {
        if (state === 'uploading') {
            uploader.stop();
        } else {
            uploader.upload();
        }
    });

	
	
	var ue = UE.getEditor('editor');
	
}); */
</script>
</body>
</html>