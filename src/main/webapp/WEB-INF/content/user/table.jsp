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
    <title>表格</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
    <meta name="author" content="Muhammad Usman">

    <!-- The styles -->
    <link id="" href="${basePath}user/css/bootstrap-cerulean.min.css" rel="stylesheet">


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
            var ss=$(this).text();
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
                        <a href="${basePath}user/#">Home</a>
                    </li>
                    <li>
                        <a href="${basePath}user/#">Tables</a>
                    </li>
                </ul>
            </div>

            <div class="row">
                <div class="box col-md-12">
                    <div class="box-inner">
                        <div class="box-header well" data-original-title="">
                            <h2><i class="glyphicon glyphicon-user"></i> Datatable + Responsive</h2>


                        </div>
                        <div class="box-content">
                            <div class="alert alert-info">For help with such table please check </div>
                            <table class="table table-striped table-bordered bootstrap-datatable datatable responsive">
                                <thead>
                                <tr>
                                    <th>Username</th>
                                    <th>Date registered</th>
                                    <th>Role</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>David R</td>
                                    <td class="center">2012/01/01</td>
                                    <td class="center">Member</td>
                                    <td class="center">
                                        <span class="label-success label label-default">Active</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Chris Jack</td>
                                    <td class="center">2012/01/01</td>
                                    <td class="center">Member</td>
                                    <td class="center">
                                        <span class="label-success label label-default">Active</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Jack Chris</td>
                                    <td class="center">2012/01/01</td>
                                    <td class="center">Member</td>
                                    <td class="center">
                                        <span class="label-success label label-default">Active</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Muhammad Usman</td>
                                    <td class="center">2012/01/01</td>
                                    <td class="center">Member</td>
                                    <td class="center">
                                        <span class="label-success label label-default">Active</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Sheikh Heera</td>
                                    <td class="center">2012/02/01</td>
                                    <td class="center">Staff</td>
                                    <td class="center">
                                        <span class="label-default label label-danger">Banned</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Helen Garner</td>
                                    <td class="center">2012/02/01</td>
                                    <td class="center">Staff</td>
                                    <td class="center">
                                        <span class="label-default label label-danger">Banned</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Saruar Ahmed</td>
                                    <td class="center">2012/03/01</td>
                                    <td class="center">Member</td>
                                    <td class="center">
                                        <span class="label-warning label label-default">Pending</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Ahemd Saruar</td>
                                    <td class="center">2012/03/01</td>
                                    <td class="center">Member</td>
                                    <td class="center">
                                        <span class="label-warning label label-default">Pending</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Habib Rizwan</td>
                                    <td class="center">2012/01/21</td>
                                    <td class="center">Staff</td>
                                    <td class="center">
                                        <span class="label-success label label-default">Active</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Rizwan Habib</td>
                                    <td class="center">2012/01/21</td>
                                    <td class="center">Staff</td>
                                    <td class="center">
                                        <span class="label-success label label-default">Active</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Amrin Sana</td>
                                    <td class="center">2012/08/23</td>
                                    <td class="center">Staff</td>
                                    <td class="center">
                                        <span class="label-default label label-danger">Banned</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Sana Amrin</td>
                                    <td class="center">2012/08/23</td>
                                    <td class="center">Staff</td>
                                    <td class="center">
                                        <span class="label-default label label-danger">Banned</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Ifrah Jannat</td>
                                    <td class="center">2012/06/01</td>
                                    <td class="center">Admin</td>
                                    <td class="center">
                                        <span class="label-default label">Inactive</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Jannat Ifrah</td>
                                    <td class="center">2012/06/01</td>
                                    <td class="center">Admin</td>
                                    <td class="center">
                                        <span class="label-default label">Inactive</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Robert</td>
                                    <td class="center">2012/03/01</td>
                                    <td class="center">Member</td>
                                    <td class="center">
                                        <span class="label-warning label label-default">Pending</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Dave Robert</td>
                                    <td class="center">2012/03/01</td>
                                    <td class="center">Member</td>
                                    <td class="center">
                                        <span class="label-warning label label-default">Pending</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Brown Robert</td>
                                    <td class="center">2012/03/01</td>
                                    <td class="center">Member</td>
                                    <td class="center">
                                        <span class="label-warning label label-default">Pending</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Usman Muhammad</td>
                                    <td class="center">2012/01/01</td>
                                    <td class="center">Member</td>
                                    <td class="center">
                                        <span class="label-success label label-default">Active</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Abdullah</td>
                                    <td class="center">2012/02/01</td>
                                    <td class="center">Staff</td>
                                    <td class="center">
                                        <span class="label-default label label-danger">Banned</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Dow John</td>
                                    <td class="center">2012/02/01</td>
                                    <td class="center">Admin</td>
                                    <td class="center">
                                        <span class="label-default label">Inactive</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>John R</td>
                                    <td class="center">2012/02/01</td>
                                    <td class="center">Admin</td>
                                    <td class="center">
                                        <span class="label-default label">Inactive</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Paul Wilson</td>
                                    <td class="center">2012/03/01</td>
                                    <td class="center">Member</td>
                                    <td class="center">
                                        <span class="label-warning label label-default">Pending</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Wilson Paul</td>
                                    <td class="center">2012/03/01</td>
                                    <td class="center">Member</td>
                                    <td class="center">
                                        <span class="label-warning label label-default">Pending</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Heera Sheikh</td>
                                    <td class="center">2012/01/21</td>
                                    <td class="center">Staff</td>
                                    <td class="center">
                                        <span class="label-success label label-default">Active</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Sheikh Heera</td>
                                    <td class="center">2012/01/21</td>
                                    <td class="center">Staff</td>
                                    <td class="center">
                                        <span class="label-success label label-default">Active</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Christopher</td>
                                    <td class="center">2012/08/23</td>
                                    <td class="center">Staff</td>
                                    <td class="center">
                                        <span class="label-default label label-danger">Banned</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Andro Christopher</td>
                                    <td class="center">2012/08/23</td>
                                    <td class="center">Staff</td>
                                    <td class="center">
                                        <span class="label-default label label-danger">Banned</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Jhon Doe</td>
                                    <td class="center">2012/06/01</td>
                                    <td class="center">Admin</td>
                                    <td class="center">
                                        <span class="label-default label">Inactive</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Lorem Ipsum</td>
                                    <td class="center">2012/03/01</td>
                                    <td class="center">Member</td>
                                    <td class="center">
                                        <span class="label-warning label label-default">Pending</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Abraham</td>
                                    <td class="center">2012/03/01</td>
                                    <td class="center">Member</td>
                                    <td class="center">
                                        <span class="label-warning label label-default">Pending</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Brown Blue</td>
                                    <td class="center">2012/03/01</td>
                                    <td class="center">Member</td>
                                    <td class="center">
                                        <span class="label-warning label label-default">Pending</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Worth Name</td>
                                    <td class="center">2012/03/01</td>
                                    <td class="center">Member</td>
                                    <td class="center">
                                        <span class="label-warning label label-default">Pending</span>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="${basePath}user/#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!--/span-->

            </div><!--/row-->

            <!--/row-->

            <!--/row-->

            <!--/row-->

            <!--/span-->

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
                    <a href="${basePath}user/#" class="btn btn-default" data-dismiss="modal">Close</a>
                    <a href="${basePath}user/#" class="btn btn-primary" data-dismiss="modal">Save changes</a>
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
