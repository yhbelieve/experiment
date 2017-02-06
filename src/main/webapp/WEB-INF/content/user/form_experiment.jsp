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

    <!-- The fav icon -->
    <link rel="shortcut icon" href="${basePath}user/img/favicon.ico">

    <script type="text/javascript" charset="utf-8"
            src="${basePath}ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${basePath}ueditor/ueditor.all.min.js">
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${basePath}ueditor/lang/zh-cn/zh-cn.js"></script>
</head>

<script>
    $(document).ready(function () {
        var ue = UE.getEditor('container');

        function submit() {
            var dbnr = $('#content');
            dbnr.val(UE.getEditor('container').getContent());
            $('#dataform').submit();

        }

        ajaxInit();
    });
    function ajaxInit() {
        $.ajax({
            type: "GET",
            url: '<c:url value="/user/ajaxAcategory"/>',
            async: false,
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    $("#acategory").append("<option value='" + data[i].aid + "'>" + data[i].aname + "</option>");
                }
                ;
                ajaxAcategory();
            }
        });
    }

    function ajaxAcategory() {
        var aid = $("#acategory").val();
        $.ajax({
            type: "GET",
            url: '<c:url value="/user/ajaxBcategory"/>',
            async: false,
            dataType: "json",
            data: {
                "aid": aid,
            },
            success: function (data) {

                $("#bcategory option").each(function () {
                    if ($(this).val() != "") {
                        $(this).remove();
                    }
                });

                for (var i = 0; i < data.length; i++) {
                    $("#bcategory").append("<option value='" + data[i].bid + "'>" + data[i].bname + "</option>");

                }
                ;
                $("#bcategory").chosen();
                $("#bcategory").trigger("chosen:updated");
                ajaxBcategory();

            }
        });
    }

    function ajaxBcategory() {
        var bid = $("#bcategory").val();
        $.ajax({
            type: "GET",
            url: '<c:url value="/user/ajaxCcategory"/>',
            async: false,
            dataType: "json",
            data: {
                "bid": bid
            },
            success: function (data) {

                $("#ccategory option").each(function () {
                    if ($(this).val() != "") {
                        $(this).remove();
                    }
                });

                for (var i = 0; i < data.length; i++) {
                    $("#ccategory").append("<option value='" + data[i].cid + "'>" + data[i].cname + "</option>");
                }
                ;
                $("#ccategory").chosen();
                $("#ccategory").trigger("chosen:updated");
            }
        });
    }


</script>


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
                            <h2><i class="glyphicon glyphicon-edit"></i> 实验名称</h2>

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
                            <form role="form">

                                <div class="form-group col-md-4">
                                    <label class="control-label" for="acategory">一级分类</label>

                                    <div class="controls ">
                                        <select id="acategory" name="acategory" class="col-md-12 " data-rel="chosen"
                                                onchange="ajaxAcategory();">

                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-4">
                                    <label class="control-label" for="bcategory">二级分类</label>

                                    <div class="controls">
                                        <select id="bcategory" name="bcategory" class="col-md-12 "
                                                onchange="ajaxBcategory();">

                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-4">
                                    <label class="control-label" for="ccategory">三级分类</label>

                                    <div class="controls">
                                        <select id="ccategory" name="ccategory" class="col-md-12">

                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">实验名称</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1"
                                           placeholder="请输入实验的名称">
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="exampleInputFile">实验视频</label>
                                    <input type="file" id="exampleInputFile">

                                    <p class="help-block">实验视频名称</p>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="iamgeInputFile">实验图片</label>
                                    <input type="file" id="iamgeInputFile">

                                    <p class="help-block">实验图片名称</p>
                                </div>

                                <div class="form-group col-md-12">
                                    <label for="comment">实验内容简介</label>
                                    <input type="hidden" class="form-control" id="comment"
                                           placeholder="请输入实验的名称">
                                    <script id="container" type="text/plain">
                                    </script>
                                </div>

                                <button type="submit" class="btn btn-default">提交</button>
                            </form>

                        </div>
                    </div>
                </div>
                <!--/span-->

            </div><!--/row-->

            <!-- content ends -->
        </div><!--/#content.col-md-0-->
    </div><!--/fluid-row-->


    <hr>

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">

        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h3>Settings</h3>
                </div>
                <div class="modal-body">
                    <p>Here settings can be configured...</p>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
                    <a href="#" class="btn btn-primary" data-dismiss="modal">Save changes</a>
                </div>
            </div>
        </div>
    </div>

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

