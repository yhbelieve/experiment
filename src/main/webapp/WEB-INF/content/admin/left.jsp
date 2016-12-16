<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="sidebar-left" class="span2">
    <div class="nav-collapse sidebar-nav">
        <ul class="nav nav-tabs nav-stacked main-menu">
            <li><a href="index.jsp"><i class="icon-bar-chart"></i><span class="hidden-tablet"> Dashboard</span></a></li>
            <li><a href="messages.jsp"><i class="icon-envelope"></i><span class="hidden-tablet"> Messages</span></a>
            </li>
            <li><a href="tasks.jsp"><i class="icon-tasks"></i><span class="hidden-tablet"> Tasks</span></a></li>
            <li><a href="ui.jsp"><i class="icon-eye-open"></i><span class="hidden-tablet"> UI Features</span></a></li>
            <li><a href="widgets.jsp"><i class="icon-dashboard"></i><span class="hidden-tablet"> Widgets</span></a></li>
            <li>
                <a class="dropmenu" href="#"><i class="icon-folder-close-alt"></i><span
                        class="hidden-tablet"> Dropdown</span><span class="label label-important"> 3 </span></a>
                <ul>
                    <li><a class="submenu" href="submenu.jsp"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 1</span></a>
                    </li>
                    <li><a class="submenu" href="submenu2.jsp"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 2</span></a>
                    </li>
                    <li><a class="submenu" href="submenu3.jsp"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 3</span></a>
                    </li>
                </ul>
            </li>
            <li><a href="form.jsp"><i class="icon-edit"></i><span class="hidden-tablet"> Forms</span></a></li>
            <li><a href="chart.jsp"><i class="icon-list-alt"></i><span class="hidden-tablet"> Charts</span></a></li>
            <li><a href="typography.jsp"><i class="icon-font"></i><span class="hidden-tablet"> Typography</span></a>
            </li>
            <li><a href="gallery.jsp"><i class="icon-picture"></i><span class="hidden-tablet"> Gallery</span></a></li>
            <li><a href="table.jsp"><i class="icon-align-justify"></i><span class="hidden-tablet"> Tables</span></a>
            </li>
            <li><a href="calendar.jsp"><i class="icon-calendar"></i><span class="hidden-tablet"> Calendar</span></a>
            </li>
            <li><a href="file-manager.jsp"><i class="icon-folder-open"></i><span
                    class="hidden-tablet"> File Manager</span></a></li>
            <li><a href="icon.jsp"><i class="icon-star"></i><span class="hidden-tablet"> Icons</span></a></li>
            <li><a href="login.jsp"><i class="icon-lock"></i><span class="hidden-tablet"> Login Page</span></a></li>
        </ul>
    </div>
</div>