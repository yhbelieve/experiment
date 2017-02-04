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
    <title>个人主页</title>
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
    <script type="text/javascript" charset="utf-8"
            src="${basePath}ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${basePath}ueditor/ueditor.all.min.js">
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${basePath}ueditor/lang/zh-cn/zh-cn.js"></script>

    <!-- The fav icon -->
    <link rel="shortcut icon" href="${basePath}user/img/favicon.ico">
    <script>
        $(document).ready(function () {
            var ue = UE.getEditor('container');

            $("#submit").click(function () {
                var data = ue.getContent();
                var title = $("#title").val();
                var id = $("#blogid").val();
                $.ajax({
                    cache: true,
                    type: "POST",
                    url: '<c:url value="/user/updateMyBlog"/>',
                    data: {
                        "content": data,
                        "id": id,
                        "title": title
                    },

                    async: false,

                    success: function () {
                        alert("操作成功");
                        $("#title").val("");
                       ue.setContent("");
                        window.location.href = '<c:url value="/user/findMyBlog"/>';
                    }
                });
            });
        });
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
                        <a href="#">Home</a>
                    </li>
                    <li>
                        <a href="#">Forms</a>
                    </li>
                </ul>
            </div>

            <!--/row-->

            <div class="row">
                <div class="box col-md-12">
                    <div class="box-inner">
                        <div class="box-header well" data-original-title="">
                            <h2><i class="glyphicon glyphicon-edit"></i> Form Elements</h2>

                            <div class="box-icon">
                                <a href="#" class="btn btn-setting btn-round btn-default"><i
                                        class="glyphicon glyphicon-cog"></i></a>
                                <a href="#" class="btn btn-minimize btn-round btn-default"><i
                                        class="glyphicon glyphicon-chevron-up"></i></a>
                                <a href="#" class="btn btn-close btn-round btn-default"><i
                                        class="glyphicon glyphicon-remove"></i></a>
                            </div>
                        </div>
                        <div class="box-content">

                                <input type="hidden" id="blogid" name="id" value="${list.id}">
                            <div class="form-group">
                                <label for="title">标题</label>
                                <input type="text" class="form-control" id="title" name="title" value="${list.title}">
                            </div>
                            <script id="container" type="text/plain">${list.content}
                            </script>
                            <input type="hidden" name="content" id="content1">
                            <button type="button" class="btn btn-default" id="submit">提交</button>


                        </div>
                    </div>
                </div>
                <!--/span-->

            </div><!--/row-->

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

