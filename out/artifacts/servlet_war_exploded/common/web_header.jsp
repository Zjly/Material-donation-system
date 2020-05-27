<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/3/30
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="header mb-5">
    <!--
*** TOPBAR ***
_________________________________________________________
-->
    <div id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offer mb-3 mb-lg-0"><a href="javascript:;" class="btn btn-success btn-sm">助力武汉</a><a href="javascript:;" class="ml-1">  武汉加油，战役必胜！</a></div>
                <div class="col-lg-6 text-center text-lg-right">
                    <ul class="menu list-inline mb-0">
                        <c:if test="${empty sessionScope.user}">
                            <li class="list-inline-item"><a href="#" data-toggle="modal" data-target="#login-modal">登录</a></li>
                            <li class="list-inline-item"><a href="register.jsp">注册</a></li>
                        </c:if>
                        <c:if test="${not empty sessionScope.user}">
                            <li class="list-inline-item" style="color: #ffffff">${sessionScope.user.username}</li>
                            <li class="list-inline-item"><a href="userServlet?action=loginout">退出</a></li>
                        </c:if>
                        <li class="list-inline-item"><a href="contact.jsp">联系我们</a></li>
<%--                        <li class="list-inline-item"><a href="manager/bookServlet?action=page">后台管理</a></li>--%>
                        <li class="list-inline-item"><a href="manage/manager-login.jsp">后台管理</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true" class="modal fade">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">用户登录</h5>
                        <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
                    </div>
                    <div class="modal-body">
                        <form action="userServlet" method="post">
                            <input type="hidden" name="action" value="login" />
                            <div class="form-group">
                                <input name="username" id="email-modal" type="text" placeholder="用户名" class="form-control">
                            </div>
                            <div class="form-group">
                                <input name="password" id="password-modal" type="password" placeholder="密码" class="form-control">
                            </div>
                            <p class="text-center">
                                <button class="btn btn-primary"><i class="fa fa-sign-in"></i> 登录</button>
                            </p>
                        </form>
                        <p class="text-center text-muted">尚未注册?</p>
                        <p class="text-center text-muted"><a href="register.jsp"><strong>立即注册</strong></a>! 在一分钟内即可完成注册，让你获得跟多的优惠选择!</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- *** TOP BAR END ***-->


    </div>
    <nav class="navbar navbar-expand-lg">
        <div class="container"><a href="index.jsp" class="navbar-brand home"><img src="img/logo.png" alt="Obaju logo" class="d-none d-md-inline-block"><img src="img/logo-small.png" alt="Obaju logo" class="d-inline-block d-md-none"><span class="sr-only">Obaju - go to homepage</span></a>
            <div class="navbar-buttons">
                <button type="button" data-toggle="collapse" data-target="#navigation" class="btn btn-outline-secondary navbar-toggler"><span class="sr-only">Toggle navigation</span><i class="fa fa-align-justify"></i></button>
                <button type="button" data-toggle="collapse" data-target="#search" class="btn btn-outline-secondary navbar-toggler"><span class="sr-only">Toggle search</span><i class="fa fa-search"></i></button>

            </div>
            <div id="navigation" class="collapse navbar-collapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a href="index.jsp" class="nav-link active">主 &nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
                    <li class="nav-item"><a href="clientNeedServlet?action=pageByStatus" class="nav-link">需求列表</a></li>
                    <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link">用户中心<b class="caret"></b></a>
                        <ul class="dropdown-menu megamenu1">
                            <li>
                                <div class="row">
                                    <div class="col-md-6 col-lg-6">
                                        <h5>信息管理</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="password-change.jsp" class="nav-link">修改密码</a></li>
                                            <li class="nav-item"><a href="userServlet?action=showUser&nextUrl=customer-account" class="nav-link">我的账户</a></li>
                                            <li class="nav-item"><a href="orderServlet?action=showMyOrders" class="nav-link">助力清单</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-lg-6">
                                        <div class="banner"><a href="#"><img src="img/banner2.jpg" height="400" alt="" class="img img-fluid"></a></div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link">客服中心<b class="caret"></b></a>
                        <ul class="dropdown-menu megamenu2">
                            <li>
                                <div class="row">
                                    <div class="col-md-6 col-lg-6">
                                        <h5>客服中心</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="text.jsp" class="nav-link">关于我们</a></li>
                                            <li class="nav-item"><a href="faq.jsp" class="nav-link">常见问题</a></li>
                                            <li class="nav-item"><a href="contact.jsp" class="nav-link">联系我们</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-lg-6">
                                        <div class="banner"><a href="#"><img src="img/banner2.jpg" alt="" class="img img-fluid"></a></div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
                <div class="navbar-buttons d-flex justify-content-end">
                    <!-- /.nav-collapse-->
<%--                    <div id="search-not-mobile" class="navbar-collapse collapse"></div><a data-toggle="collapse" href="#search" class="btn navbar-btn btn-primary d-none d-lg-inline-block"><span class="sr-only">搜索</span><i class="fa fa-search"></i></a>--%>
                    <div id="launch-overview" class="navbar-collapse collapse d-none d-lg-block"><a href="demand-post.jsp" class="btn btn-primary navbar-btn"><i class="fa fa-sun-o"></i><span>${sessionScope.cart.totalCount}  发布需求</span></a></div>

                </div>
            </div>
        </div>
    </nav>
    <div id="search" class="collapse">
        <div class="container">
            <form role="search" class="ml-auto" action="clientBookServlet" method="get">
                <input type="hidden" name="action" value="searchBooks">
                <div class="input-group">
                    <input type="text" placeholder="Search" name="searchInput" class="form-control">
                    <div class="input-group-append">
                        <button id="searchbtn" type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</header>

