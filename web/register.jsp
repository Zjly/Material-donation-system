<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>网上书店</title>
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
                  <li aria-current="page" class="breadcrumb-item active">注册/登录</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-6">
              <div class="box">
                <h1>注册</h1>
                <p class="lead">还没有加入我们?</p>
                <p>更贴心的服务，更低的价格，更高的品质</p>
                <p class="text-muted">如果您有什么问题请<a href="contact.jsp">联系我们</a>, 您的专属客服24小时在线</p>
                <hr>
                <form action="userServlet" method="post">
                  <input type="hidden" name="action" value="regist" />
                  <div class="form-group">
                    <label for="name">用户名</label>
                    <span id="registError" style="color: #ff2035">
                      &nbsp; &nbsp;${empty requestScope.msg ?"":requestScope.msg}
                    </span>
                    <input name="username" id="name" type="text" class="form-control" value="${requestScope.username}">
                  </div>
                  <div class="form-group">
                    <label for="registemail">邮箱</label>
                    <input name="email" id="registemail" type="text" class="form-control" value="${requestScope.email}">
                  </div>
                  <div class="form-group">
                    <label for="rpassword">密码</label>
                    <input name="password" id="rpassword" type="password" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="genpassword">确认密码</label>
                    <input name="genpassword" id="genpassword" type="password" class="form-control">
                  </div>
                  <div class="text-center">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-user-md"></i> 提交</button>
                  </div>
                </form>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="box">
                <h1>登录</h1>
                <p class="lead">已经加入我们</p>
                <p class="text-muted">感谢您的支持与陪伴！我们竭力为您提供更优质的服务</p>
                <hr>
                <form action="userServlet" method="post">
                  <input type="hidden" name="action" value="login" />
                  <div class="form-group">
                    <label for="username">用户名</label>&emsp; &emsp; &emsp; &emsp;
                    <span id="loginError" style="color: #ff2035">
                      ${empty requestScope.errorMsg ?"输入用户名和密码进行登录":requestScope.errorMsg}
                    </span>
                    <input name="username" id="username" type="text" class="form-control" value="${requestScope.loginUsername}">
                  </div>
                  <div class="form-group">
                    <label for="password">密码</label>
                    <input name="password" id="password" type="password" class="form-control">
                  </div>
                  <div class="text-center">
                    <button id="btn1" type="submit" class="btn btn-primary"><i class="fa fa-sign-in"></i> 登录</button>
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