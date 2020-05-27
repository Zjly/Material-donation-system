<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>联系客服</title>
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
    <!-- Leaflet CSS - For the map-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.4.0/leaflet.css">
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
                  <li aria-current="page" class="breadcrumb-item active">联系客服</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-3">
              <!--
              *** PAGES MENU ***
              _________________________________________________________
              -->
              <div class="card sidebar-menu mb-4">
                <div class="card-header">
                  <h3 class="h4 card-title">客服中心</h3>
                </div>
                <div class="card-body">
                  <ul class="nav nav-pills flex-column">
                    <li><a href="text.jsp" class="nav-link">系统信息</a></li>
                    <li><a href="contact.jsp" class="nav-link">联系客服</a></li>
                    <li><a href="faq.jsp" class="nav-link">常见问题</a></li>
                  </ul>
                </div>
              </div>
              <!-- *** PAGES MENU END ***-->

            </div>
            <div class="col-lg-9">
              <div id="contact" class="box">
                <h1>联系客服</h1>
                <p class="lead">如果您有任何疑问或是对我们的服务有任何问题可以通过以下方式联系我们。</p>
                <p>我们将会每天24小时为您进行服务。</p>
                <hr>
                <div class="row">
                  <div class="col-md-4">
                    <h3><i class="fa fa-map-marker"></i> 详细地址</h3>
                    <p>&nbsp;&nbsp;&nbsp;中&nbsp;&nbsp;&nbsp;国<br>&nbsp;&nbsp;&nbsp;山东省<br>&nbsp;&nbsp;&nbsp;烟台市<br>&nbsp;&nbsp;&nbsp;开发区<br><strong>&nbsp;&nbsp;&nbsp;幸福大道88号</strong></p>
                  </div>
                  <!-- /.col-sm-4-->
                  <div class="col-md-4">
                    <h3><i class="fa fa-phone"></i> 电话中心</h3>
                    <p class="text-muted">在中国境内拨打本号码是免费的，如果在境外推荐使用电子邮件方式。</p><br>
                    <p><strong>+156 8888 8888</strong></p>
                  </div>
                  <!-- /.col-sm-4-->
                  <div class="col-md-4">
                    <h3><i class="fa fa-envelope"></i> 电子邮件</h3>
                    <p class="text-muted">随时欢迎给我们写信或者发送电子邮件.</p>
                    <ul>
                      <li><strong><a href="mailto:">donatedsystem@whu.edu.cn</a></strong></li>
                      <li><strong>私人邮箱</strong> - <strong><a href="#">  Chuntengyi@whu.edu.cn</a></strong></li>
                    </ul>
                  </div>
                  <!-- /.col-sm-4-->
                </div>
                <!-- /.row-->
              </div>
            </div>
            <!-- /.col-md-9-->
            
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.4.0/leaflet.js"> </script>
    <script src="js/map.js"></script>
  </body>
</html>