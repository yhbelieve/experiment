<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    request.setAttribute("basePath", basePath);
%>


<!DOCTYPE html>
<html lang="en">
<head>


    <title>表格</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
    <meta name="author" content="Muhammad Usman">

    <!-- The styles -->
    <link id="bs-css" href="${basePath}user/css/bootstrap-cerulean.min.css" rel="stylesheet">


    <link href="${basePath}user/css/charisma-app.css" rel="stylesheet">
    <link href='${basePath}user/bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
    <link href='${basePath}user/bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet'
          media='print'>
    <link href='${basePath}user/bower_components/chosen/chosen.min.css' rel='stylesheet'>
    <link href='${basePath}user/bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
    <link href='${basePath}user/bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
    <link href='${basePath}user/bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
    <link href='${basePath}user/css/jquery.noty.css' rel='stylesheet'>
    <link href='${basePath}user/css/noty_theme_default.css' rel='stylesheet'>
    <link href='${basePath}user/css/elfinder.min.css' rel='stylesheet'>
    <link href='${basePath}user/css/elfinder.theme.css' rel='stylesheet'>
    <link href='${basePath}user/css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='${basePath}user/css/uploadify.css' rel='stylesheet'>
    <link href='${basePath}user/css/animate.min.css' rel='stylesheet'>

    <!-- jQuery -->
    <script src="${basePath}user/bower_components/jquery/jquery.min.js"></script>


    <!-- The fav icon -->
    <link rel="shortcut icon" href="${basePath}user/img/favicon.ico">
    <script type="text/javascript">
        $(".dropdown-menu li a").click(function () {
            var ss = $(this).text();
            alert(ss);
        })
    </script>


</head>

<body>
<!-- topbar starts -->
<%@include file="head.jsp" %>
<!-- topbar ends -->
<div class="ch-container">
    <div class="row">

        <!-- left menu starts -->
        <%@include file="left.jsp" %>
        <!--/span-->
        <!-- left menu ends -->


        <div id="content" class="col-lg-10 col-sm-10">
            <!-- content starts -->
            <div>
                <ul class="breadcrumb">
                    <li>
                        <a href="${basePath}user/#">个人主页</a>
                    </li>
                    <li>
                        <a href="${basePath}user/#">博客列表</a>
                    </li>
                </ul>
            </div>

            <div class="row">
                <div class="box col-md-12">
                    <div class="box-inner">
                        <div class="box-header well" data-original-title="">
                            <h2><i class="glyphicon glyphicon-user"></i> 我的博客</h2>


                        </div>
                        <div class="box-content">

                            <table class="table table-striped table-bordered bootstrap-datatable datatable responsive" id="example">
                                <thead>
                                <tr>
                                    <th>标题</th>
                                    <th>内容简介</th>
                                    <th>发布时间</th>
                                    <th>状态</th>
                                    <th>收藏数量</th>
                                    <th>管理</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${list}" var="list">
                                    <tr>
                                        <td>${list.title}</td>
                                        <td class="center"><c:if test="${fn:length(list.content)>30 }">
                                            ${fn:substring(list.content, 0, 30)}...
                                        </c:if>
                                            <c:if test="${fn:length(list.content)<=30 }">
                                                ${list.content }
                                            </c:if></td>
                                        <td class="center">${list.time}</td>
                                        <td class="center"><c:if test="${list.is_show eq 1 }">
                                            <span class="label-success label label-default">公开</span>
                                        </c:if><c:if test="${list.is_show eq 0 }">
                                            <span class=" label label-default">私有</span>
                                        </c:if></td>
                                        <td class="center">
                                                ${list.like_num}
                                        </td>
                                        <td class="center">
                                            <a class="btn btn-success" href="<c:url value="/user/showMyInformation"/>">
                                                <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                                查看
                                            </a>
                                            <a class="btn btn-info"
                                               href="<c:url value="/user/findMyBlog?id=${list.id}"/>">
                                                <i class="glyphicon glyphicon-edit icon-white"></i>
                                                修改
                                            </a>
                                            <a class="btn btn-danger"
                                               href="<c:url value="/user/updateMyBlog?id=${list.id}&isActive=0"/>">
                                                <i class="glyphicon glyphicon-trash icon-white"></i>
                                                删除
                                            </a>
                                            <c:if test="${list.is_show eq 1 }">
                                                <a class="btn btn-info"
                                                   href="<c:url value="/user/updateMyBlog?id=${list.id}&isShow=0"/>">
                                                    <i class="glyphicon glyphicon-edit icon-white"></i>
                                                    私有
                                                </a>
                                            </c:if>
                                            <c:if test="${list.is_show eq 0 }">
                                                <a class="btn btn-info"
                                                   href="<c:url value="/user/updateMyBlog?id=${list.id}&isShow=1"/>">
                                                    <i class="glyphicon glyphicon-edit icon-white"></i>
                                                    公开
                                                </a>
                                            </c:if>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!--/span-->

            </div><!--/row-->

        </div><!--/#content.col-md-0-->
    </div><!--/fluid-row-->


    <%@include file="foot.jsp" %>

</div><!--/.fluid-container-->

<!-- external javascript -->

<script src="${basePath}user/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- library for cookie management -->
<script src="${basePath}user/js/jquery.cookie.js"></script>
<!-- calender plugin -->
<script src='${basePath}user/bower_components/moment/min/moment.min.js'></script>
<script src='${basePath}user/bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='${basePath}user/js/jquery.dataTables.min.js'></script>

<!-- select or dropdown enhancer -->
<script src="${basePath}user/bower_components/chosen/chosen.jquery.min.js"></script>
<!-- plugin for gallery image view -->
<script src="${basePath}user/bower_components/colorbox/jquery.colorbox-min.js"></script>
<!-- notification plugin -->
<script src="${basePath}user/js/jquery.noty.js"></script>
<!-- library for making tables responsive -->
<script src="${basePath}user/bower_components/responsive-tables/responsive-tables.js"></script>
<!-- tour plugin -->
<script src="${basePath}user/bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<!-- star rating plugin -->
<script src="${basePath}user/js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="${basePath}user/js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="${basePath}user/js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="${basePath}user/js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="${basePath}user/js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="${basePath}user/js/charisma.js"></script>


</body>
</html>
