<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/admin";
	request.setAttribute("basePath", basePath);
%>

<!DOCTYPE html>
<html lang="en">
<head>
	
	<!-- start: Meta -->
	<meta charset="utf-8">
	<title>后台管理系统</title>
	<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="">
	<meta name="keyword" content="">
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="${basePath}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${basePath}/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="${basePath}/css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="${basePath}/css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
	

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="${basePath}/css/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="${basePath}/css/ie9.css" rel="stylesheet">
	<![endif]-->
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="${basePath}/img/favicon.ico">
	<!-- end: Favicon -->
	
			<style type="text/css">
			body { background: url(${basePath}/img/bg-login.jpg) !important; }
		</style>
		
		
		
</head>

<body>
		<div class="container-fluid-full">
		<div class="row-fluid">
					
			<div class="row-fluid">
				<div class="login-box">
					<div class="icons">
						<a href="index.jsp"><i class="halflings-icon home"></i></a>
						<a href="#"><i class="halflings-icon cog"></i></a>
					</div>
					<h2>汇实验--综合实验平台  后台管理系统</h2>
					<form class="form-horizontal" action="index.jsp" method="post">
						<fieldset>

							<div class="input-prepend" title="Username">
								<span class="add-on"><i class="halflings-icon user"></i></span>
								<input class="input-large span10" name="username" id="username" type="text" placeholder="type username"/>
							</div>
							<div class="clearfix"></div>

							<div class="input-prepend" title="Password">
								<span class="add-on"><i class="halflings-icon lock"></i></span>
								<input class="input-large span10" name="password" id="password" type="password" placeholder="type password"/>
							</div>
							<div class="clearfix"></div>

							<label class="remember" for="remember"><input type="checkbox" id="remember" />记住账号</label>

							<div class="button-login">
								<button type="submit" class="btn btn-primary">登录</button>
							</div>
							<div class="clearfix"></div>
						</fieldset>
					</form>
					<hr>
					<h3>忘记密码?</h3>
					<p>
						No problem, <a href="#">click here</a> to get a new password.
					</p>	
				</div><!--/span-->
			</div><!--/row-->
			

	</div><!--/.fluid-container-->
	
		</div><!--/fluid-row-->
	    <div class="common-modal modal fade" id="common-Modal1" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-content">
				<ul class="list-inline item-details">
					<li><a href="http://sc.chinaz.com">Admin templates</a></li>
					<li><a href="http://sc.chinaz.com">Bootstrap themes</a></li>
				</ul>
			</div>
		</div>
	<!-- start: JavaScript-->

		<script src="${basePath}/js/jquery-1.9.1.min.js"></script>
	<script src="${basePath}/js/jquery-migrate-1.0.0.min.js"></script>
	
		<script src="${basePath}/js/jquery-ui-1.10.0.custom.min.js"></script>
	
		<script src="${basePath}/js/jquery.ui.touch-punch.js"></script>
	
		<script src="${basePath}/js/modernizr.js"></script>
	
		<script src="${basePath}/js/bootstrap.min.js"></script>
	
		<script src="${basePath}/js/jquery.cookie.js"></script>
	
		<script src='${basePath}/js/fullcalendar.min.js'></script>
	
		<script src='${basePath}/js/jquery.dataTables.min.js'></script>

		<script src="${basePath}/js/excanvas.js"></script>
	<script src="${basePath}/js/jquery.flot.js"></script>
	<script src="${basePath}/js/jquery.flot.pie.js"></script>
	<script src="${basePath}/js/jquery.flot.stack.js"></script>
	<script src="${basePath}/js/jquery.flot.resize.min.js"></script>
	
		<script src="${basePath}/js/jquery.chosen.min.js"></script>
	
		<script src="${basePath}/js/jquery.uniform.min.js"></script>
		
		<script src="${basePath}/js/jquery.cleditor.min.js"></script>
	
		<script src="${basePath}/js/jquery.noty.js"></script>
	
		<script src="${basePath}/js/jquery.elfinder.min.js"></script>
	
		<script src="${basePath}/js/jquery.raty.min.js"></script>
	
		<script src="${basePath}/js/jquery.iphone.toggle.js"></script>
	
		<script src="${basePath}/js/jquery.uploadify-3.1.min.js"></script>
	
		<script src="${basePath}/js/jquery.gritter.min.js"></script>
	
		<script src="${basePath}/js/jquery.imagesloaded.js"></script>
	
		<script src="${basePath}/js/jquery.masonry.min.js"></script>
	
		<script src="${basePath}/js/jquery.knob.modified.js"></script>
	
		<script src="${basePath}/js/jquery.sparkline.min.js"></script>
	
		<script src="${basePath}/js/counter.js"></script>
	
		<script src="${basePath}/js/retina.js"></script>

		<script src="${basePath}/js/custom.js"></script>
	<!-- end: JavaScript-->
	
</body>
</html>
