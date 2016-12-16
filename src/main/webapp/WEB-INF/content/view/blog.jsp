<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("basePath",basePath);
%>
<!DOCTYPE html>
<html>
<head>
<title>Blog</title>
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

</head>
<body>
<!--header-->
<%@include file="head.jsp"%>

	
<!--content-->
<div class="blog">
<div class="container">
	<h1>Blog</h1>
	       <div class="blog-top">
			  <div class="col-md-6 grid_3">
					<h3><a href="${basePath}view/blog_single.jsp">Lorem Ipsum is simply</a></h3>
					<a href="${basePath}view/blog_single.jsp"><img src="${basePath}view/images/b1.jpg" class="img-responsive" alt=""/></a>
					
					<div class="blog-poast-info">
						<ul>
							<li><a class="admin" href="${basePath}view/#"><i> </i> Admin </a></li>
							<li><span><i class="date"> </i>12-04-2015</span></li>
							<li><a class="p-blog" href="${basePath}view/#"><i class="comment"> </i>No Comments</a></li>
						</ul>
				    </div>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
					<div class="button"><a href="${basePath}view/#">Read More</a></div>
				</div>
				<div class="col-md-6 grid_3">
					<h3><a href="${basePath}view/blog_single.jsp">Lorem Ipsum is simply</a></h3>
					<a href="${basePath}view/blog_single.jsp"><img src="${basePath}view/images/b2.jpg" class="img-responsive" alt=""/></a>
					
					<div class="blog-poast-info">
						<ul>
							<li><a class="admin" href="${basePath}view/#"><i> </i> Admin </a></li>
							<li><span><i class="date"> </i>12-04-2015</span></li>
							<li><a class="p-blog" href="${basePath}view/#"><i class="comment"> </i>No Comments</a></li>
						</ul>
				    </div>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
					<div class="button"><a href="${basePath}view/#">Read More</a></div>
				</div>
				<div class="clearfix"> </div>
			  </div>
			 
			  <div class="blog-top">
			  <div class="col-md-6 grid_3">
					<h3><a href="${basePath}view/blog_single.jsp">Lorem Ipsum is simply</a></h3>
					<a href="${basePath}view/blog_single.jsp"><img src="${basePath}view/images/b3.jpg" class="img-responsive" alt=""/></a>
					
					<div class="blog-poast-info">
						<ul>
							<li><a class="admin" href="${basePath}view/#"><i> </i> Admin </a></li>
							<li><span><i class="date"> </i>12-04-2015</span></li>
							<li><a class="p-blog" href="${basePath}view/#"><i class="comment"> </i>No Comments</a></li>
						</ul>
				    </div>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
					<div class="button"><a href="${basePath}view/#">Read More</a></div>
				</div>
				<div class="col-md-6 grid_3">
					<h3><a href="${basePath}view/blog_single.jsp">Lorem Ipsum is simply</a></h3>
					<a href="${basePath}view/blog_single.jsp"><img src="${basePath}view/images/b4.jpg" class="img-responsive" alt=""/></a>
					
					<div class="blog-poast-info">
						<ul>
							<li><a class="admin" href="${basePath}view/#"><i> </i> Admin </a></li>
							<li><span><i class="date"> </i>12-04-2015</span></li>
							<li><a class="p-blog" href="${basePath}view/#"><i class="comment"> </i>No Comments</a></li>
						</ul>
				    </div>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
					<div class="button"><a href="${basePath}view/#">Read More</a></div>
				</div>
				<div class="clearfix"> </div>
			  </div>
			  <div class="blog-bottom">
			  <div class="col-md-6 grid_3">
					<h3><a href="${basePath}view/blog_single.jsp">Lorem Ipsum is simply</a></h3>
					<a href="${basePath}view/blog_single.jsp"><img src="${basePath}view/images/b5.jpg" class="img-responsive" alt=""/></a>
					
					<div class="blog-poast-info">
						<ul>
							<li><a class="admin" href="${basePath}view/#"><i> </i> Admin </a></li>
							<li><span><i class="date"> </i>12-04-2015</span></li>
							<li><a class="p-blog" href="${basePath}view/#"><i class="comment"> </i>No Comments</a></li>
						</ul>
				    </div>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
					<div class="button"><a href="${basePath}view/#">Read More</a></div>
				</div>
				<div class="col-md-6 grid_3">
					<h3><a href="${basePath}view/blog_single.jsp">Lorem Ipsum is simply</a></h3>
					<a href="${basePath}view/blog_single.jsp"><img src="${basePath}view/images/b1.jpg" class="img-responsive" alt=""/></a>
					
					<div class="blog-poast-info">
						<ul>
							<li><a class="admin" href="${basePath}view/#"><i> </i> Admin </a></li>
							<li><span><i class="date"> </i>12-04-2015</span></li>
							<li><a class="p-blog" href="${basePath}view/#"><i class="comment"> </i>No Comments</a></li>
						</ul>
				    </div>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
					<div class="button"><a href="${basePath}view/#">Read More</a></div>
				</div>
				<div class="clearfix"> </div>
			  </div>
      </div>
</div>
<!--//content-->
<%@include file="foot.jsp"%>
</body>
</html>
			