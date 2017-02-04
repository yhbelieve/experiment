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
    <title>汇实验</title>
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
    <script type="text/javascript" charset="utf-8"
            src="${basePath}ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${basePath}ueditor/ueditor.all.min.js">
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${basePath}ueditor/lang/zh-cn/zh-cn.js"></script>
    <!-- start menu -->
    <link href="${basePath}view/css/memenu.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="${basePath}view/css/charisma-app.css" rel="stylesheet">
    <script type="text/javascript" src="${basePath}view/js/memenu.js"></script>
    <script>
        $(document).ready(function () {
            var ue = UE.getEditor('container');

            function submit() {
                var dbnr = $('#content');
                dbnr.val(UE.getEditor('container').getContent());
                $('#dataform').submit();

            }

            $(".memenu").memenu();
            ajaxFindExam(null);

        });
        function next() {
            var aa = $("#nextid").attr("value");
            ajaxFindExam(aa);
        }
        ;
        function ajaxFindExam(next) {
            $.ajax({
                type: "GET",
                url: '<c:url value="/Index/ajaxFindExam"/>',
                async: false,
                data: {
                    "next": next,
                    "vid":${list.vid}
                },
                dataType: "json",
                success: function (data) {
                    if (data.msg == "") {
                        $('#title').empty();   //清空resText里面的所有内容
                        $('#title').html(data.content);
                        $('#answerA').empty();   //清空resText里面的所有内容
                        $('#answerA').html("A." + data.a);
                        $('#answerB').empty();   //清空resText里面的所有内容
                        $('#answerB').html("B." + data.b);
                        $('#answerC').empty();   //清空resText里面的所有内容
                        $('#answerC').html("C." + data.c);
                        $('#answerD').empty();   //清空resText里面的所有内容
                        $('#answerD').html("D." + data.d);
                        $('#nextid').val(""); //清空resText里面的所有内容
                        $('#nextid').val(data.next);
                    } else {
                        alert(data.msg);
                    }
//                    alert("success");
                }
            });
        }


    </script>


    <script src="${basePath}view/js/main.js"></script>
    <script src="${basePath}view/js/simpleCart.min.js"></script>
</head>

<script type="text/javascript">

</script>

<body>
<!--header-->
<%@include file="head.jsp" %>


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
                    <li class="item1"><a href="javascript:void(0);">Men </a>
                        <ul class="cute">
                            <li class="subitem1"><a href="javascript:void(0);">Cute Kittens </a></li>
                            <li class="subitem2"><a href="javascript:void(0);">Strange Stuff </a></li>
                            <li class="subitem3"><a href="javascript:void(0);">Automatic Fails </a></li>
                        </ul>
                    </li>
                    <li class="item2"><a href="javascript:void(0);">Women </a>
                        <ul class="cute">
                            <li class="subitem1"><a href="javascript:void(0);">Cute Kittens </a></li>
                            <li class="subitem2"><a href="javascript:void(0);">Strange Stuff </a></li>
                            <li class="subitem3"><a href="javascript:void(0);">Automatic Fails </a></li>
                        </ul>
                    </li>
                    <li class="item3"><a href="javascript:void(0);">Kids</a>
                        <ul class="cute">
                            <li class="subitem1"><a href="javascript:void(0);">Cute Kittens </a></li>
                            <li class="subitem2"><a href="javascript:void(0);">Strange Stuff </a></li>
                            <li class="subitem3"><a href="javascript:void(0);">Automatic Fails</a></li>
                        </ul>
                    </li>
                    <li class="item4"><a href="javascript:void(0);">Accesories</a>
                        <ul class="cute">
                            <li class="subitem1"><a href="javascript:void(0);">Cute Kittens </a></li>
                            <li class="subitem2"><a href="javascript:void(0);">Strange Stuff </a></li>
                            <li class="subitem3"><a href="javascript:void(0);">Automatic Fails</a></li>
                        </ul>
                    </li>

                    <li class="item4"><a href="javascript:void(0);">Shoes</a>
                        <ul class="cute">
                            <li class="subitem1"><a href="javascript:void(0);">Cute Kittens </a></li>
                            <li class="subitem2"><a href="javascript:void(0);">Strange Stuff </a></li>
                            <li class="subitem3"><a href="product.html">Automatic Fails </a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--initiate accordion-->
            <script type="text/javascript">
                $(function () {
                    var menu_ul = $('.menu > li > ul'),
                        menu_a = $('.menu > li > a');
                    menu_ul.hide();
                    menu_a.click(function (e) {
                        e.preventDefault();
                        if (!$(this).hasClass('active')) {
                            menu_a.removeClass('active');
                            menu_ul.filter(':visible').slideUp('normal');
                            $(this).addClass('active').next().stop(true, true).slideDown('normal');
                        } else {
                            $(this).removeClass('active');
                            $(this).next().stop(true, true).slideUp('normal');
                        }
                    });

                });
            </script>
            <!---->
            <div class="product-middle">

                <div class="fit-top">
                    <h6 class="shop-top">Lorem Ipsum</h6>
                    <a href="javascript:void(0);" class="shop-now">SHOP NOW</a>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="sellers">
                <div class="of-left-in">
                    <h3 class="tag">Tags</h3>
                </div>
                <div class="tags">
                    <ul>
                        <li><a href="javascript:void(0);">design</a></li>
                        <li><a href="javascript:void(0);">fashion</a></li>
                        <li><a href="javascript:void(0);">lorem</a></li>
                        <li><a href="javascript:void(0);">dress</a></li>
                        <li><a href="javascript:void(0);">fashion</a></li>
                        <li><a href="javascript:void(0);">dress</a></li>
                        <li><a href="javascript:void(0);">design</a></li>
                        <li><a href="javascript:void(0);">dress</a></li>
                        <li><a href="javascript:void(0);">design</a></li>
                        <li><a href="javascript:void(0);">fashion</a></li>
                        <li><a href="javascript:void(0);">lorem</a></li>
                        <li><a href="javascript:void(0);">dress</a></li>

                        <div class="clearfix"></div>
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
                        <a href="javascript:void(0);"><img class="img-responsive " src="images/p1.jpg" alt=""></a>

                    </div>
                    <div class=" fashion-grid1">
                        <h6 class="best2"><a href="javascript:void(0);">Lorem ipsum dolor sit
                            amet consectetuer </a></h6>

                        <span class=" price-in1"> $40.00</span>
                    </div>

                    <div class="clearfix"></div>
                </div>
                <div class="product-go">
                    <div class=" fashion-grid">
                        <a href="javascript:void(0);"><img class="img-responsive " src="images/p2.jpg" alt=""></a>

                    </div>
                    <div class="fashion-grid1">
                        <h6 class="best2"><a href="javascript:void(0);">Lorem ipsum dolor sit
                            amet consectetuer </a></h6>

                        <span class=" price-in1"> $40.00</span>
                    </div>

                    <div class="clearfix"></div>
                </div>

            </div>
            <div class=" per1">
                <a href="javascript:void(0);"><img class="img-responsive" src="images/pro.jpg" alt="">
                    <div class="six1">
                        <h4>DISCOUNT</h4>
                        <p>Up to</p>
                        <span>60%</span>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-md-9 product-price1">


            <div class="col-md-7 single-top-in simpleCart_shelfItem">
                <div class="single-para ">
                    <%--<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
                            width="800" height="405" id="FlashID" title="实验视频">
                        <param name="movie" value="${basePath}/${list.videoFilename }"/>
                        <param name="quality" value="high"/>
                        <param name="wmode" value="opaque"/>
                        <param name="swfversion" value="7.0.70.0"/>
                        <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
                        <param name="expressinstall" value="Scripts/expressInstall.swf"/>
                        <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
                        <!--[if !IE]>-->
                        <object type="application/x-shockwave-flash"
                                data="${basePath}/${list.videoFilename }" width="800" height="405">
                            <!--<![endif]-->
                            <param name="quality" value="high"/>
                            <param name="wmode" value="opaque"/>
                            <param name="swfversion" value="7.0.70.0"/>
                            <param name="expressinstall" value="Scripts/expressInstall.swf"/>
                            <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
                            <div>
                                <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
                                <p>
                                    <a href="http://www.adobe.com/go/getflashplayer"><img
                                            src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
                                            alt="获取 Adobe Flash Player" width="112" height="33"/></a>
                                </p>
                            </div>
                            <!--[if !IE]>-->
                        </object>
                        <!--<![endif]-->
                    </object>--%>
                    <div id="myContent">
                        <h1>请升级或安装最新的flash插件</h1>
                        <p><a href="http://www.adobe.com/go/getflashplayer"><img
                                src="http://www.5imoban.net/uploads/allimg/140107/10030641b-0.gif"
                                alt="Get Adobe Flash player"/></a></p>
                    </div>
                    <script type="text/javascript" src="${basePath}view/js/swfobject.js"></script>

                    <script type="text/javascript">

                        swfobject.embedSWF("${basePath}/${list.videoFilename }", "myContent", "800", "405", "9.0.0", "expressInstall.swf");

                    </script>

                    <%--<script type="text/javascript">
                        swfobject.registerObject("FlashID");
                    </script>--%>

                    <a id="downloadid" href="javascript:void(0)"
                       class="add-cart item_add">${list.downloadNum}次下载</a>
                    <a id="dianzan" href="javascript:void(0)" class="add-cart item_add">${list.likeNum }次收藏</a>
                    <a href="javascript:void(0)" class="add-cart item_add">${list.clickNum}观看</a>
                </div>
            </div>

            <div class="clearfix"></div>
            <!---->
            <div class="cd-tabs1">
                <nav>
                    <ul class="cd-tabs-navigation">
                        <div class="color">本实验演示视频均由网友自主上传，如果对您造成侵权，请联系管理员，我们将及时处理</div>
                    </ul>
                </nav>
                <ul class="cd-tabs-content">
                    <!-- 实验内容简介 -->
                    <li data-content="television" class="selected">
                        <a class="add-re" style="margin-top: 1em" href="javascript:void(0)">实验简介</a>
                        <div class="comments-top-top" style="margin-top: 1em">
                            <div class="top-comment-left">
                                <img class="img-responsive" src="${basePath}/image/${list.user.image}"
                                     alt="${list.user.username}">
                                <a class="add-re" style="margin-top: 1em"
                                   href="javascript:void(0);">${list.user.username}</a>
                            </div>
                            <div class="top-comment-right">
                                <h6><a href="javascript:void(0);">内容简介：</a></h6>
                                <p>${list.comment}</p>

                                <div style="width: 100%;margin-right: 0em;text-align: right">贡献时间:<a class="add-re"
                                                                                                     href="javascript:void(0);">${list.time}</a>
                                </div>

                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </li>
                    <div class="clearfix"></div>
                </ul>
            </div>
            <div class="clearfix"></div>
            <div class="cd-tabs" style="margin-top: 0em">
                <nav>
                    <ul class="cd-tabs-navigation">
                        <li><a data-content="fashion" href="#0">在线检测 </a></li>
                        <li><a data-content="cinema" href="#0">实验文档下载</a></li>
                        <li><a data-content="television" href="#0" class="selected ">实验心得</a></li>
                    </ul>
                </nav>
                <ul class="cd-tabs-content" id="cd-tabs-content">
                    <li data-content="fashion">
                        <div class="facts">
                            <p id="title"></p>
                            <p><a id="answerA" class="add-re" style="margin-left: 2em;margin-top: 1em"
                                  href="javascript:void(0);"></a>
                                <a id="answerB" class="add-re" style="margin-left: 2em;margin-top: 1em"
                                   href="javascript:void(0);"></a>
                                <a id="answerC" class="add-re" style="margin-left: 2em;margin-top: 1em"
                                   href="javascript:void(0);"></a>
                                <a id="answerD" class="add-re" style="margin-left: 2em;margin-top: 1em"
                                   href="javascript:void(0);"></a>
                            </p>
                            <p style="text-align: right;margin-top: 0em">
                                <input id="nextid" type="hidden" value="">
                                <a id="next" class="add-re" style="margin-top: 0em" href="javascript:void(0);"
                                   onclick="next()">下一题</a>
                            </p>
                        </div>

                    </li>
                    <li data-content="cinema">
                        <div class="facts1">
                            <c:forEach items="${list.files}" var="file">

                                <div class="color">
                                    <p>文档名称${file.name}</p>
                                    <p>文档名称${file.name}</p>
                                    <span>已被下载${file.download_num}次</span>
                                    <div class="clearfix"></div>
                                </div>
                            </c:forEach>
                            <c:if test='${list.files.size() ==0}'>
                                <div class="color" style="text-align: center">
                                    <p>该实验暂无相关文档</p>
                                    <div class="clearfix"></div>
                                </div>
                            </c:if>


                        </div>

                    </li>
                    <li data-content="television" class="selected">
                        <div style="margin-top: 1em"></div>
                        <c:forEach items="${list.discuss}" var="discuss">
                            <div class="comments-top-top" style="margin-top: 0em">
                                <div class="top-comment-left">
                                    <img class="img-responsive" src="${basePath}image/${discuss.user.image}" alt="">
                                    <a class="add-re" style="margin-top: 1em"
                                       href="javascript:void(0);">${discuss.user.username}</a>
                                </div>
                                <div class="top-comment-right">
                                    <h6><a href="javascript:void(0);">心得体会:</a></h6>
                                    <p>${discuss.content}</p>
                                    <br>
                                    <div style="width: 100%;margin-right: 0em;text-align: right">${discuss.time} <a
                                            class="add-re" style="margin-top: 1em;margin-right: 0em"
                                            href="javascript:void(0);">回复<span
                                            class="notification green">${discuss.replyNum }</span></a>
                                    </div>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                            <div class="clearfix"></div>
                        </c:forEach>
                        <div class="comments-top-top" style="margin-top: 2em">
                            <div class="top-comment-left">
                                <c:if test="${sessionScope.user eq null }">
                                    <img class="img-responsive" src="${basePath}image/0.png"
                                         alt="">
                                </c:if>
                                <c:if test="${sessionScope.user != null }">
                                    <img class="img-responsive" src="${basePath}image/${sessionScope.user.image}"
                                         alt="">
                                </c:if>

                                <a class="add-re" style="margin-top: 1em" href="javascript:void(0);">
                                    <c:if test="${sessionScope.user eq null }">游客</c:if>
                                    ${sessionScope.user.username}
                                </a>
                            </div>
                            <div class="top-comment-right">
                                <h6><a href="javascript:void(0);">我的体会:</a></h6>
                                <p>
                                    <script id="container" type="text/plain">
                                    </script>
                                </p>
                                <br>
                                <div style="width: 100%;margin-right: 0em;text-align: right">${discuss.time} <a
                                        class="add-re" style="margin-top: 1em;margin-right: 0em"
                                        href="javascript:void(0);">回复</a>
                                </div>

                            </div>

                            <div class="clearfix"></div>
                        </div>
                    </li>
                    <div class="clearfix"></div>
                </ul>
            </div>

        </div>

        <div class="clearfix"></div>
    </div>
</div>
<!--//content-->
<%@include file="foot.jsp" %>
</body>
</html>