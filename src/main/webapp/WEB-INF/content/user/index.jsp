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
<html lang="en">
<head>

    <meta charset="utf-8">
    <title>Free HTML5 Bootstrap Admin Template</title>
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

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->


    <!-- The fav icon -->
    <link rel="shortcut icon" href="${basePath}user/img/favicon.ico">

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
                        <a href="${basePath}user/#">我的信息</a>
                    </li>
                </ul>
            </div>
            <div class=" row">
                <div class="col-md-3 col-sm-3 col-xs-6">
                    <a data-toggle="tooltip" class="well top-block">
                        <i class="glyphicon glyphicon-user blue"></i>
                        <div>${sessionScope.user.username}</div>
                    </a>
                </div>



            </div>


            <div class="row">
                <div class="box col-md-12">
                    <div class="box-inner homepage-box">
                        <div class="box-header well">
                            <h2><i class="glyphicon glyphicon-th"></i> 我的信息</h2>

                            <div class="box-icon">
                                <a href="${basePath}user/#" class="btn btn-setting btn-round btn-default"><i
                                        class="glyphicon glyphicon-cog"></i></a>
                                <a href="${basePath}user/#" class="btn btn-minimize btn-round btn-default"><i
                                        class="glyphicon glyphicon-chevron-up"></i></a>
                                <a href="${basePath}user/#" class="btn btn-close btn-round btn-default"><i
                                        class="glyphicon glyphicon-remove"></i></a>
                            </div>
                        </div>
                        <div class="box-content">
                            <ul class="nav nav-tabs" id="myTab">
                                <li class="active"><a href="${basePath}user/#info">Info</a></li>
                                <li><a href="${basePath}user/#custom">Custom</a></li>
                                <li><a href="${basePath}user/#messages">Messages</a></li>
                            </ul>

                            <div id="myTabContent" class="tab-content">
                                <div class="tab-pane active" id="info">
                                    <p>手机号：${sessionScope.user.phone}</p>
                                    <p>邮箱：${sessionScope.user.email}</p>
                                    <p>破壳日：${sessionScope.user.birthday}</p>
                                    <p>积分：${sessionScope.user.money}</p>
                                    <p>地址：${sessionScope.user.address}</p>

                                </div>
                                <div class="tab-pane" id="custom">
                                    <h3>Custom
                                        <small>small text</small>
                                    </h3>
                                    <p>Sample paragraph.</p>

                                    <p>Your custom text.</p>
                                </div>
                                <div class="tab-pane" id="messages">
                                    <h3>Messages
                                        <small>small text</small>
                                    </h3>
                                    <p>Sample paragraph.</p>

                                    <p>Your custom text.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/span-->


                <!--/span-->


                <!--/span-->
            </div><!--/row-->

            <!--/row-->
            <!-- content ends -->
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
<script src='${basePath}/bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
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
