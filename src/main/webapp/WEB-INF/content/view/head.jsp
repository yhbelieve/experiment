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
                    <li ><a href="login.jsp"  >登录</a></li>
                    <li><a  href="register.jsp"  >注册</a></li>

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
                    <c:forEach items="${list}" var="list">
                    <li><a class="color1" href="#">${list.aname}</a>
                        <div class="mepanel">
                            <div class="row">
                                <c:forEach items="${list.bname}" var="listb" >
                                <div class="col1">
                                    <div class="h_nav">
                                        <ul>
                                            <li><a href="products.jsp">${listb.bname}</a></li>

                                        </ul>
                                    </div>
                                </div>
                                </c:forEach>
                            </div>
                        </div>
                    </li>
                    </c:forEach>


                </ul>
            </div>

            <div class="clearfix"> </div>
        </div>
    </div>

</div>