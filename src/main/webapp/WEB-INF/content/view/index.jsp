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
    <title>Home</title>
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
        <script type="text/javascript">
            var aaa="${basePath}view";
//            alert(aaa);
        </script>
</head>
<body>
<!--header-->
<%@include file="head.jsp" %>

<div class="banner">
    <div class="container">
        <script src="${basePath}view/js/responsiveslides.min.js"></script>
        <script>
            $(function () {
                $("#slider").responsiveSlides({
                    auto: true,
                    nav: true,
                    speed: 500,
                    namespace: "callbacks",
                    pager: true,
                });
            });
        </script>
        <div id="top" class="callbacks_container">
            <ul class="rslides" id="slider">
                <li>

                    <div class="banner-text">
                        <h3>Lorem Ipsum is not simply dummy </h3>
                        <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of
                            classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a
                            Latin professor .</p>
                        <a href="single.jsp">Learn More</a>
                    </div>

                </li>
                <li>

                    <div class="banner-text">
                        <h3>There are many variations </h3>
                        <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of
                            classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a
                            Latin professor .</p>
                        <a href="single.jsp">Learn More</a>

                    </div>

                </li>
                <li>
                    <div class="banner-text">
                        <h3>Sed ut perspiciatis unde omnis</h3>
                        <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of
                            classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a
                            Latin professor .</p>
                        <a href="single.jsp">Learn More</a>

                    </div>

                </li>
            </ul>
        </div>

    </div>
</div>
<!--content-->
<div class="content">
    <div class="container">
        <div class="content-top">
            <h1>最热实验</h1>
            <div class="grid-in">
                <c:forEach items="${likeList}" var="likeList">


                    <div class="col-md-4 grid-top">
                        <a href="<c:url value="/Index/findVideoById/${likeList.vid}"/>"
                           class="b-link-stripe b-animate-go  thickbox"><img class="img-responsive" src="${basePath}${likeList.image}"
                                                                             alt="">
                            <div class="b-wrapper">
                                <h3 class="b-animate b-from-left    b-delay03 ">
                                    <span>${likeList.video_name}</span>
                                </h3>
                            </div>
                        </a>


                        <p><a href="<c:url value="/Index/findVideoById/${likeList.vid}"/>">${likeList.video_name}</a>
                        </p>
                    </div>
                </c:forEach>


            </div>

        </div>
        <div class="clearfix"></div>
        <!----->


    </div>
</div>
<!---->

<div class="content">
    <div class="container">
        <div class="content-top">
            <h1>最多下载实验</h1>
            <div class="grid-in">
                <c:forEach items="${downloadList}" var="downloadList">


                    <div class="col-md-4 grid-top">
                        <a href="<c:url value="/Index/findVideoById/${downloadList.vid}"/>"
                           class="b-link-stripe b-animate-go  thickbox"><img class="img-responsive" src="${basePath}${downloadList.image}"
                                                                             alt="">
                            <div class="b-wrapper">
                                <h3 class="b-animate b-from-left    b-delay03 ">
                                    <span>${downloadList.video_name}</span>
                                </h3>
                            </div>
                        </a>


                        <p><a href="<c:url value="/Index/findVideoById/${downloadList.vid}"/>">${downloadList.video_name}</a>
                        </p>
                    </div>
                </c:forEach>


            </div>

        </div>
        <div class="clearfix"></div>
        <!----->


    </div>
</div>
<div class="content">
    <div class="container">
        <div class="content-top">
            <h1>点击量最多实验</h1>
            <div class="grid-in">
                <c:forEach items="${clickList}" var="clickList">


                    <div class="col-md-4 grid-top">
                        <a href="<c:url value="/Index/findVideoById/${clickList.vid}"/>"
                           class="b-link-stripe b-animate-go  thickbox"><img class="img-responsive" src="${basePath}${clickList.image}"
                                                                             alt="">
                            <div class="b-wrapper">
                                <h3 class="b-animate b-from-left    b-delay03 ">
                                    <span>${clickList.video_name}</span>
                                </h3>
                            </div>
                        </a>


                        <p><a href="<c:url value="/Index/findVideoById/${clickList.vid}"/>">${clickList.video_name}</a>
                        </p>
                    </div>
                </c:forEach>


            </div>

        </div>
        <div class="clearfix"></div>
        <!----->


    </div>
</div>
<div class="content-bottom">
    <ul>
        <li><a href="#"><img class="img-responsive" src="images/lo.png" alt=""></a></li>
        <li><a href="#"><img class="img-responsive" src="images/lo1.png" alt=""></a></li>
        <li><a href="#"><img class="img-responsive" src="images/lo2.png" alt=""></a></li>
        <li><a href="#"><img class="img-responsive" src="images/lo3.png" alt=""></a></li>
        <li><a href="#"><img class="img-responsive" src="images/lo4.png" alt=""></a></li>
        <li><a href="#"><img class="img-responsive" src="images/lo5.png" alt=""></a></li>
        <div class="clearfix"></div>
    </ul>
</div>

<%@include file="foot.jsp" %>
</body>
</html>
			