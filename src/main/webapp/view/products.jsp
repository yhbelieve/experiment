<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<title>Products</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="New Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'><!--//fonts-->
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
<script src="js/simpleCart.min.js"> </script>
</head>
<body>
<!--header-->
<%@include file="head.jsp"%>

	
<!--content-->
<!---->
		<div class="product">
			<div class="container">
				<div class="col-md-3 product-price">
					  
				<div class=" rsidebar span_1_of_left">
					<div class="of-left">
						<h3 class="cate">Categories</h3>
					</div>
		 <ul class="menu">
		<li class="item1"><a href="#">Men </a>
			<ul class="cute">
				<li class="subitem1"><a href="single.jsp">Cute Kittens </a></li>
				<li class="subitem2"><a href="single.jsp">Strange Stuff </a></li>
				<li class="subitem3"><a href="single.jsp">Automatic Fails </a></li>
			</ul>
		</li>
		<li class="item2"><a href="#">Women </a>
			<ul class="cute">
				<li class="subitem1"><a href="single.jsp">Cute Kittens </a></li>
				<li class="subitem2"><a href="single.jsp">Strange Stuff </a></li>
				<li class="subitem3"><a href="single.jsp">Automatic Fails </a></li>
			</ul>
		</li>
		<li class="item3"><a href="#">Kids</a>
			<ul class="cute">
				<li class="subitem1"><a href="single.jsp">Cute Kittens </a></li>
				<li class="subitem2"><a href="single.jsp">Strange Stuff </a></li>
				<li class="subitem3"><a href="single.jsp">Automatic Fails</a></li>
			</ul>
		</li>
		<li class="item4"><a href="#">Accesories</a>
			<ul class="cute">
				<li class="subitem1"><a href="single.jsp">Cute Kittens </a></li>
				<li class="subitem2"><a href="single.jsp">Strange Stuff </a></li>
				<li class="subitem3"><a href="single.jsp">Automatic Fails</a></li>
			</ul>
		</li>
				
		<li class="item4"><a href="#">Shoes</a>
			<ul class="cute">
				<li class="subitem1"><a href="product.html">Cute Kittens </a></li>
				<li class="subitem2"><a href="product.html">Strange Stuff </a></li>
				<li class="subitem3"><a href="product.html">Automatic Fails </a></li>
			</ul>
		</li>
	</ul>
					</div>
				<!--initiate accordion-->
		<script type="text/javascript">
			$(function() {
			    var menu_ul = $('.menu > li > ul'),
			           menu_a  = $('.menu > li > a');
			    menu_ul.hide();
			    menu_a.click(function(e) {
			        e.preventDefault();
			        if(!$(this).hasClass('active')) {
			            menu_a.removeClass('active');
			            menu_ul.filter(':visible').slideUp('normal');
			            $(this).addClass('active').next().stop(true,true).slideDown('normal');
			        } else {
			            $(this).removeClass('active');
			            $(this).next().stop(true,true).slideUp('normal');
			        }
			    });
			
			});
		</script>
<!---->
	<div class="product-middle">
		
					<div class="fit-top">
						<h6 class="shop-top">Lorem Ipsum</h6>
						<a href="single.jsp" class="shop-now">SHOP NOW</a>
<div class="clearfix"> </div>
	</div>
				</div>	 
						<div class="sellers">
							<div class="of-left-in">
								<h3 class="tag">Tags</h3>
							</div>
								<div class="tags">
									<ul>
										<li><a href="#">design</a></li>
										<li><a href="#">fashion</a></li>
										<li><a href="#">lorem</a></li>
										<li><a href="#">dress</a></li>
										<li><a href="#">fashion</a></li>
										<li><a href="#">dress</a></li>
										<li><a href="#">design</a></li>
										<li><a href="#">dress</a></li>
										<li><a href="#">design</a></li>
										<li><a href="#">fashion</a></li>
										<li><a href="#">lorem</a></li>
										<li><a href="#">dress</a></li>
										
										<div class="clearfix"> </div>
									</ul>
								
								</div>
								
		</div>
				<!---->
				<div class="product-bottom">
					<div class="of-left-in">
								<h3 class="best">Best Sellers</h3>
							</div>
					<div class="product-go">
						<div class=" fashion-grid">
									<a href="single.jsp"><img class="img-responsive " src="images/p1.jpg" alt=""></a>
									
								</div>
							<div class=" fashion-grid1">
								<h6 class="best2"><a href="single.jsp" >Lorem ipsum dolor sit
amet consectetuer  </a></h6>
								
								<span class=" price-in1"> $40.00</span>
							</div>
								
							<div class="clearfix"> </div>
							</div>
							<div class="product-go">
						<div class=" fashion-grid">
									<a href="single.jsp"><img class="img-responsive " src="images/p2.jpg" alt=""></a>
									
								</div>
							<div class="fashion-grid1">
								<h6 class="best2"><a href="single.jsp" >Lorem ipsum dolor sit
amet consectetuer </a></h6>
								
								<span class=" price-in1"> $40.00</span>
							</div>
								
							<div class="clearfix"> </div>
							</div>
					
				</div>
<div class=" per1">
				<a href="single.jsp" ><img class="img-responsive" src="images/pro.jpg" alt="">
				<div class="six1">
					<h4>DISCOUNT</h4>
					<p>Up to</p>
					<span>60%</span>
				</div></a>
			</div>
				</div>
				<div class="col-md-9 product1">
				<div class=" bottom-product">
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="single.jsp"><img class="img-responsive" src="images/pi3.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">Buy Now</span>
							</div>
						</a>	
						</div>
						<p class="tun">It is a long established fact that a reader</p>
						<a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>						
					</div>
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="single.jsp"><img class="img-responsive" src="images/pi1.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">Buy Now</span>
							</div>
						</a>	
						</div>
						<p class="tun">It is a long established fact that a reader</p>
<a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>					</div>
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="single.jsp"><img class="img-responsive" src="images/pi4.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">Buy Now</span>
							</div>
						</a>	
						</div>
						<p class="tun">It is a long established fact that a reader</p>
<a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>					</div>
					<div class="clearfix"> </div>
				</div>
					<div class=" bottom-product">
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="single.jsp"><img class="img-responsive" src="images/pi5.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">Buy Now</span>
							</div>
						</a>	
						</div>
						<p class="tun">It is a long established fact that a reader</p>
<a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>					</div>
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="single.jsp"><img class="img-responsive" src="images/pi.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">Buy Now</span>
							</div>
						</a>	
						</div>
						<p class="tun">It is a long established fact that a reader</p>
<a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>					
</div>
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="single.jsp"><img class="img-responsive" src="images/pi1.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">Buy Now</span>
							</div>
						</a>	
						</div>
						<p class="tun">It is a long established fact that a reader</p>
<a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>					</div>
					<div class="clearfix"> </div>
				</div>
					<div class=" bottom-product">
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="single.jsp"><img class="img-responsive" src="images/pi3.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">Buy Now</span>
							</div>
						</a>	
						</div>
						<p class="tun">It is a long established fact that a reader</p>
					<a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>					

					</div>
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="single.jsp"><img class="img-responsive" src="images/pi4.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">Buy Now</span>
							</div>
						</a>	
						</div>
						<p class="tun">It is a long established fact that a reader</p>
<a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>					
</div>
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="single.jsp"><img class="img-responsive" src="images/pi5.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">Buy Now</span>
							</div>
						</a>	
						</div>
						<p class="tun">It is a long established fact that a reader</p>
<a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>					
</div>
					<div class="clearfix"> </div>
				</div>
				
				</div>
		<div class="clearfix"> </div>
		<nav class="in">
				  <ul class="pagination">
					<li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
					<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
					<li><a href="#">2 <span class="sr-only"></span></a></li>
					<li><a href="#">3 <span class="sr-only"></span></a></li>
					<li><a href="#">4 <span class="sr-only"></span></a></li>
					<li><a href="#">5 <span class="sr-only"></span></a></li>
					 <li> <a href="#" aria-label="Next"><span aria-hidden="true">»</span> </a> </li>
				  </ul>
				</nav>
		</div>
		
		</div>
			
				<!---->

<!--//content-->
<%@include file="foot.jsp"%>
</body>
</html>
			