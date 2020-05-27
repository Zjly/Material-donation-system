<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>修改密码</title>
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
                  <li aria-current="page" class="breadcrumb-item active">我的账户</li>
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
                    <a href="orderServlet?action=showMyOrders" class="nav-link"><i class="fa fa-list"></i> 我的助力</a>
				    <a href="userServlet?action=showUser&nextUrl=customer-account" class="nav-link"><i class="fa fa-user"></i> 我的账户</a>
                    <a href="javascript:;" class="nav-link active"><i class="fa fa-list"></i> 修改密码</a>
				    <a href="userServlet?action=loginout" class="nav-link"><i class="fa fa-sign-out"></i> 退出登录</a></ul>
                </div>
              </div>
              <!-- /.col-lg-3-->
              <!-- *** CUSTOMER MENU END ***-->
            </div>
            <div class="col-lg-9">
              <div class="box">
                <h1>修改密码</h1><br>

                <form action="userServlet" method="get">
                  <input type="hidden" name="action" value="updateUser">
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="username">用户名</label>
                        <input id="username" name="username" type="text" class="form-control" value="${sessionScope.user.username}">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="password_old">旧密码</label>
                        <input id="password_old" name="password_old" type="text" class="form-control" value="">
                      </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="password_1">新密码</label>
                        <input id="password_1" name="password_1" type="password" class="form-control" value="">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="password_2">重新输入新密码</label>
                        <input id="password_2" name="password_2" type="password" class="form-control" value="">
                      </div>
                    </div>
                  </div>
                  <!-- /.row-->
                  <div class="col-md-12 text-center">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> 确认</button>
                    <span id="msg" style="color: #ff3445">${requestScope.msg}</span>
                  </div>
                </form>


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