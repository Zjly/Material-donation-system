<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>我的助力</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <%@ include file="common/base.jsp"%>
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
    <!-- owl carousel-->
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
    <!-- navbar-->
    <%--		这是头部文件引用          --%>
    <%@include file="common/web_header.jsp"%>

    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <!-- breadcrumb-->
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.jsp">主页</a></li>
                  <li aria-current="page" class="breadcrumb-item active">我的助力</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-3">
              <!--
              *** CUSTOMER MENU ***
              _________________________________________________________
              -->
              <div class="card sidebar-menu">
                <div class="card-header">
                  <h3 class="h4 card-title">选项</h3>
                </div>
                <div class="card-body">
                  <ul class="nav nav-pills flex-column">
                    <a href="javascript:;" class="nav-link active"><i class="fa fa-list"></i> 我的助力</a>
				    <a href="userServlet?action=showUser&nextUrl=customer-account" class="nav-link"><i class="fa fa-user"></i> 我的账户</a>
                    <a href="password-change.jsp" class="nav-link"><i class="fa fa-list"></i> 修改密码</a>
				    <a href="userServlet?action=loginout" class="nav-link"><i class="fa fa-sign-out"></i> 退出登录</a></ul>
                </div>
              </div>
              <!-- /.col-lg-3-->
              <!-- *** CUSTOMER MENU END ***-->
            </div>
            <div id="customer-orders" class="col-lg-9">
              <div class="box">
                <h1>助力列表</h1>
                <p class="lead">您的所有助力记录</p>
                <p class="text-muted">如果您有什么问题，请 <a href="contact.jsp">联系我们</a>, 您的专属客服24小时在线</p>
                <hr>
                <div class="table-responsive">
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>编号</th>
                        <th>助力日期</th>
                        <th>助力对象</th>
                        <th>需求内容</th>
                        <th>状态</th>
                        <th>查看</th>
                      </tr>
                    </thead>
                    <tbody>

                    <c:forEach items="${requestScope.orders}" var="order">
                      <tr>
                        <th>#${order.orderId}</th>
                        <td>${order.createTime}</td>
                        <td>${order.targetName}</td>
                        <td>${order.needName}</td>
                        <c:if test="${order.status == 0}">
                          <td><span class="badge badge-info">准备中</span></td>
                        </c:if>
                        <c:if test="${order.status == 2}">
                          <td><span class="badge badge-success">已完成</span></td>
                        </c:if>
                        <td><a href="orderServlet?action=showOrderDetail&orderId=${order.orderId}" class="btn btn-primary btn-sm">详情</a></td>
                      </tr>
                    </c:forEach>


<%--                      <tr>--%>
<%--                        <th># 1735</th>--%>
<%--                        <td>22/06/2013</td>--%>
<%--                        <td>$ 150.00</td>--%>
<%--                        <td><span class="badge badge-danger">Cancelled</span></td>--%>
<%--                        <td><a href="customer-order.jsp" class="btn btn-primary btn-sm">View</a></td>--%>
<%--                      </tr>--%>

                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <%--		这是footer部分引用--%>
    <%@include file="common/web_footer.jsp"%>
    
    

    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
    <script src="js/front.js"></script>
  </body>
</html>