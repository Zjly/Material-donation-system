<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>关于我们</title>
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
                  <li aria-current="page" class="breadcrumb-item active">系统信息</li>
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
              <div id="text-page" class="box">
                <h1>疫情对口捐赠系统</h1>
                <p class="lead">软件工程实践项目 .</p>
                <p>疫情期间，各大医院医疗物资等资源缺口严重，由此也产生了很多纠纷问题。一些医疗等机构物资救助获取途径少，不可靠途径多，同时普通民众献爱心途径页很少，本系统意在提供一个便捷可靠的对口捐赠途径。</p>
                <h2>核心功能</h2>
                <ol>
                  <li>正规机构发布需求.</li>
                  <li>其他群众有效支援.</li>
                </ol>
                <div class="row">
                  <div class="col-md-4">
                    <p class="text-center"><img src="img/detailsquare.jpg" alt="" class="img-circle img-fluid"></p>
                    <p class="text-center">circle</p>
                  </div>
                  <div class="col-md-4">
                    <p class="text-center"><img src="img/detailsquare.jpg" alt="" class="img-thumbnail img-fluid"></p>
                    <p class="text-center">thumbnail</p>
                  </div>
                  <div class="col-md-4">
                    <p class="text-center"><img src="img/detailsquare.jpg" alt="" class="rounded-circle img-fluid"></p>
                    <p class="text-center">rounded</p>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.col-lg-9-->
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