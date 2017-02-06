<%@ page language="java" import="java.util.*"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-sm-2 col-lg-2">
    <div class="sidebar-nav">
        <div class="nav-canvas">
            <div class="nav-sm nav nav-stacked">

            </div>
            <ul class="nav nav-pills nav-stacked main-menu">
                <li class="nav-header">个人主页</li>
                <li><a class="ajax-link" href="<c:url value="/user/showMyInformation"/>"><i
                        class="glyphicon glyphicon-home"></i><span> 我的信息</span></a>
                </li>
                <li><a class="ajax-link" href="ui.jsp"><i class="glyphicon glyphicon-eye-open"></i><span> 个人信息修改</span></a>
                </li>
                <li><a class="ajax-link" href="form.jsp"><i
                        class="glyphicon glyphicon-edit"></i><span> 密码重置</span></a></li>
                <li><a class="ajax-link" href="form.jsp"><i
                        class="glyphicon glyphicon-picture"></i><span> 选择头像</span></a></li>
                <li class="nav-header hidden-md">博客专区</li>
                <li><a class="ajax-link" href="<c:url value="/user/findMyBlog"/>"><i class="glyphicon glyphicon-list-alt"></i><span> 我的博客</span></a>
                </li>
                <li><a class="ajax-link" href="<c:url value="/user/addMyBlog"/>"><i
                        class="glyphicon glyphicon-font"></i><span> 添加博客</span></a>
                </li>
                <li class="nav-header hidden-md">评论专区</li>
                <li><a class="ajax-link" href="gallery.jsp"><i
                        class="glyphicon glyphicon-picture"></i><span> 我的评论</span></a>
                </li>
                <li class="nav-header hidden-md">实验专区</li>
                <li><a class="ajax-link" href="<c:url value="/user/showMyVideo"/>"><i
                        class="glyphicon glyphicon-align-justify"></i><span> 我的实验</span></a></li>
                <li >
                    <a class="ajax-link" href="<c:url value="/user/addVideo"/>"><i class="glyphicon glyphicon-plus"></i><span> 上传实验</span></a>
                </li>


                <li class="nav-header hidden-md">数据分析专区</li>
                <li><a class="ajax-link" href="grid.jsp"><i
                        class="glyphicon glyphicon-th"></i><span> 可视化分析</span></a></li>

                </li>
            </ul>

        </div>
    </div>
</div>