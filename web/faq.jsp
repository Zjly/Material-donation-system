<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>常见问题</title>
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
                  <li aria-current="page" class="breadcrumb-item active">常见问题</li>
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
                <h1>常见问题及解决方法</h1>
                <p class="lead">如果您遇到了一些状况可以参考以下问题及解决方法。</p>
                <p>如果仍然无法解决，可以随时联系我们。</p>
                <hr>
                <div id="accordion">
                  <div class="card border-primary mb-3">
                    <div id="headingOne" class="card-header p-0 border-0">
                      <h4 class="mb-0"><a href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="btn btn-primary d-block text-left rounded-0">1.认证问题</a></h4>
                    </div>
                    <div id="collapseOne" aria-labelledby="headingOne" data-parent="#accordion" class="collapse show">
                      <div class="card-body">
                        <p>我们将尽快处理认证信息。</p>
                        <p>你的认证内容请确保无误。</p>
                        <ul>
                          <li>身份信息准确</li>
                          <li>材料信息齐全</li>
                          <li>符合法律效益</li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="card border-primary mb-3">
                    <div id="headingTwo" class="card-header p-0 border-0">
                      <h4 class="mb-0"><a href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" class="btn btn-primary d-block text-left rounded-0">2. 助力问题 </a></h4>
                    </div>
                    <div id="collapseTwo" aria-labelledby="headingTwo" data-parent="#accordion" class="collapse">
                      <div class="card-body">
                        <ul>
                          <li>这是对你信誉的考验。</li><br>
                          <li>请确保你认真阅读了要助力的需求内容。</li><br>
                          <li>如发现有虚假信息请及时向我们反映。</li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="card border-primary">
                    <div id="headingThree" class="card-header p-0 border-0">
                      <h4 class="mb-0"><a href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" class="btn btn-primary d-block text-left rounded-0">3. 其他问题</a></h4>
                    </div>
                    <div id="collapseThree" aria-labelledby="headingThree" data-parent="#accordion" class="collapse">
                      <div class="card-body">
                        <ul>
                          <li>问题一。</li><br>
                          <li>问题二。</li><br>
                          <li>问题三。</li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- /.accordion-->
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