<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html>
<head>
<title>登录</title>
<link href="${basePath}view/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${basePath}view/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="${basePath}view/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="New Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<link href="${basePath}view/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="${basePath}view/js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
<script src="${basePath}view/js/simpleCart.min.js"> </script>
	<script src="${basePath}validation/jquery.metadata.js"> </script>
	<script src="${basePath}validation/jquery.validate.min.js"> </script>
	<script src="${basePath}validation/messages_cn.js"> </script>
	<script>
        $(document).ready(function() {
            $("#loginForm").validate();

        });
	</script>

</head>
<script type="text/javascript">
	var msg="${msg}";
	if(msg.trim()!=null&&msg!=""){
	alert(msg);

	}
</script>
<body>
<!--header-->
<%@include file="head.jsp"%>

	
<!--content-->
<div class="container">
		<div class="account">
		<h1>汇实验账号登录</h1>
		<div class="account-pass">
		<div class="col-md-8 account-top">
			<form action="/user/login" method="post" id="loginForm">
				
			<div> 	
				<span>用户名</span>
				<input type="text" name="username" id="username" value="${user.username}" required>
			</div>
			<div> 
				<span >密码</span>
				<input type="password" id="password" name="password" value="${user.password}" required minlength="6">
			</div>				
				<input type="submit" value="登录"><input type="submit" style="margin-right: 0px" disabled="disabled" value="创建新账号">
			</form>
		</div>

	<div class="clearfix"> </div>
	</div>
	</div>

</div>

<!--//content-->
<%@include file="foot.jsp"%>
</body>
</html>
			