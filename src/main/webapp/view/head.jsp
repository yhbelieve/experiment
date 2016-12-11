<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="header">
    <div class="header-top">
        <div class="container">
            <div class="search">
                <form>
                    <input type="text" value="Search " onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}">
                    <input type="submit" value="Go">
                </form>
            </div>
            <div class="header-left">
                <ul>
                    <li ><a href="login.jsp"  >Login</a></li>
                    <li><a  href="register.jsp"  >Register</a></li>

                </ul>
                <div class="cart box_1">
                    <a href="checkout.jsp">
                        <h3> <div class="total">
                            <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
                            <img src="images/cart.png" alt=""/></h3>
                    </a>
                    <p><a href="javascript:;" class="simpleCart_empty">Empty 12Cart</a></p>

                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="container">
        <div class="head-top">
            <div class="logo">
                <a href="index.jsp"><img src="images/logo.png" alt=""></a>
            </div>
            <div class=" h_menu4">
                <ul class="memenu skyblue">
                    <li class="active grid"><a class="color8" href="index.jsp">Home</a></li>
                    <li><a class="color1" href="#">Men</a>
                        <div class="mepanel">
                            <div class="row">
                                <div class="col1">
                                    <div class="h_nav">
                                        <ul>
                                            <li><a href="products.jsp">Accessories</a></li>
                                            <li><a href="products.jsp">Bags</a></li>
                                            <li><a href="products.jsp">Caps & Hats</a></li>
                                            <li><a href="products.jsp">Hoodies & Sweatshirts</a></li>
                                            <li><a href="products.jsp">Jackets & Coats</a></li>
                                            <li><a href="products.jsp">Jeans</a></li>
                                            <li><a href="products.jsp">Jewellery</a></li>
                                            <li><a href="products.jsp">Jumpers & Cardigans</a></li>
                                            <li><a href="products.jsp">Leather Jackets</a></li>
                                            <li><a href="products.jsp">Long Sleeve T-Shirts</a></li>
                                            <li><a href="products.jsp">Loungewear</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col1">
                                    <div class="h_nav">
                                        <ul>
                                            <li><a href="products.jsp">Shirts</a></li>
                                            <li><a href="products.jsp">Shoes, Boots & Trainers</a></li>
                                            <li><a href="products.jsp">Shorts</a></li>
                                            <li><a href="products.jsp">Suits & Blazers</a></li>
                                            <li><a href="products.jsp">Sunglasses</a></li>
                                            <li><a href="products.jsp">Sweatpants</a></li>
                                            <li><a href="products.jsp">Swimwear</a></li>
                                            <li><a href="products.jsp">Trousers & Chinos</a></li>
                                            <li><a href="products.jsp">T-Shirts</a></li>
                                            <li><a href="products.jsp">Underwear & Socks</a></li>
                                            <li><a href="products.jsp">Vests</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col1">
                                    <div class="h_nav">
                                        <h4>Popular Brands</h4>
                                        <ul>
                                            <li><a href="products.jsp">Levis</a></li>
                                            <li><a href="products.jsp">Persol</a></li>
                                            <li><a href="products.jsp">Nike</a></li>
                                            <li><a href="products.jsp">Edwin</a></li>
                                            <li><a href="products.jsp">New Balance</a></li>
                                            <li><a href="products.jsp">Jack & Jones</a></li>
                                            <li><a href="products.jsp">Paul Smith</a></li>
                                            <li><a href="products.jsp">Ray-Ban</a></li>
                                            <li><a href="products.jsp">Wood Wood</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="grid"><a class="color2" href="#">	Women</a>
                        <div class="mepanel">
                            <div class="row">
                                <div class="col1">
                                    <div class="h_nav">
                                        <ul>
                                            <li><a href="products.jsp">Accessories</a></li>
                                            <li><a href="products.jsp">Bags</a></li>
                                            <li><a href="products.jsp">Caps & Hats</a></li>
                                            <li><a href="products.jsp">Hoodies & Sweatshirts</a></li>
                                            <li><a href="products.jsp">Jackets & Coats</a></li>
                                            <li><a href="products.jsp">Jeans</a></li>
                                            <li><a href="products.jsp">Jewellery</a></li>
                                            <li><a href="products.jsp">Jumpers & Cardigans</a></li>
                                            <li><a href="products.jsp">Leather Jackets</a></li>
                                            <li><a href="products.jsp">Long Sleeve T-Shirts</a></li>
                                            <li><a href="products.jsp">Loungewear</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col1">
                                    <div class="h_nav">
                                        <ul>
                                            <li><a href="products.jsp">Shirts</a></li>
                                            <li><a href="products.jsp">Shoes, Boots & Trainers</a></li>
                                            <li><a href="products.jsp">Shorts</a></li>
                                            <li><a href="products.jsp">Suits & Blazers</a></li>
                                            <li><a href="products.jsp">Sunglasses</a></li>
                                            <li><a href="products.jsp">Sweatpants</a></li>
                                            <li><a href="products.jsp">Swimwear</a></li>
                                            <li><a href="products.jsp">Trousers & Chinos</a></li>
                                            <li><a href="products.jsp">T-Shirts</a></li>
                                            <li><a href="products.jsp">Underwear & Socks</a></li>
                                            <li><a href="products.jsp">Vests</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col1">
                                    <div class="h_nav">
                                        <h4>Popular Brands</h4>
                                        <ul>
                                            <li><a href="products.jsp">Levis</a></li>
                                            <li><a href="products.jsp">Persol</a></li>
                                            <li><a href="products.jsp">Nike</a></li>
                                            <li><a href="products.jsp">Edwin</a></li>
                                            <li><a href="products.jsp">New Balance</a></li>
                                            <li><a href="products.jsp">Jack & Jones</a></li>
                                            <li><a href="products.jsp">Paul Smith</a></li>
                                            <li><a href="products.jsp">Ray-Ban</a></li>
                                            <li><a href="products.jsp">Wood Wood</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li><a class="color4" href="blog.jsp">Blog</a></li>
                    <li><a class="color6" href="contact.jsp">Conact</a></li>
                </ul>
            </div>

            <div class="clearfix"> </div>
        </div>
    </div>

</div>