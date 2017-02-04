<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>注册</title>
    <link href="${basePath}view/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${basePath}view/js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="${basePath}view/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="New Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>

    <!-- start menu -->
    <link href="${basePath}view/css/memenu.css" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="${basePath}view/js/memenu.js"></script>
    <script>$(document).ready(function () {
        $(".memenu").memenu();
    });</script>
    <script src="${basePath}view/js/simpleCart.min.js"></script>

    <script src="${basePath}validation/jquery.metadata.js"> </script>
    <script src="${basePath}validation/jquery.validate.min.js"> </script>
    <script src="${basePath}validation/messages_cn.js"> </script>
    <script>
        $(document).ready(function() {
            $("#register").validate();

        });
    </script>
</head>
<body>
<!--header-->
<%@include file="head.jsp" %>


<!--content-->
<div class=" container">
    <div class=" register">
        <h1>注册汇实验账号</h1>
        <form id="register" action="/user/regist" method="post">
            <div class="col-md-6 register-top-grid">

                <div>
                    <span>用户名</span>
                    <input type="text" id="username" name="username" value="${user.username}" required minlength="3">
                </div>
                <div>
                    <span>邮箱</span>
                    <input type="text" id="email" name="email" value="${user.email}" required email="true">
                </div>

                <a class="news-letter" href="${basePath}view/#">
                    <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>阅读并接受《汇实验用户协议》</label>
                </a>

            </div>
            <div class="col-md-6 register-bottom-grid">

                <div>
                    <span>密码</span>
                    <input type="password" id="password" name="password" value="${user.password}" minlength="6" required >
                </div>
                <div>
                    <span>确认密码</span>
                    <input type="password" id="conformPassword" minlength="6" required class="{equalTo:'#password'}">
                </div>
                <input type="submit" value="注册">

            </div>
            <div class="clearfix"></div>
        </form>
    </div>
</div>
<!--//content-->
<%@include file="foot.jsp" %>
</body>
</html>
			