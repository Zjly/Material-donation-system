<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>用户信息</title>
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
    <style type="text/css">
      #image{
        width: 120px;
        height: 120px;
        border: 2px solid #7e8795;
        border-radius: 50%;
      }
    </style>
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
                  <li aria-current="page" class="breadcrumb-item active">用户信息</li>
                </ol>
              </nav>
            </div>

            <div class="col-lg-12">
              <div class="box">
                <form action="userServlet" method="get">
                  <input type="hidden" name="action" value="updateUser">
                  <div class="row">
                    <div class="col-lg-2">
                      <img id="image" src="img3/${requestScope.detail.img_path}" alt="image">
                    </div>

                    <div class="col-md-10">
                      <h4><br>${requestScope.detail.name}</h4><br>
                      <p>${requestScope.detail.introduction}</p>
                    </div>
                  </div>
                  <!-- /.row-->
                </form>
              </div>
              <div class="box">
                <div style="float:left;margin-top: 40px;width: 4px;height: 43px; background:#c62b26;"></div>
                <h3 class="mt-5">&ensp;详细信息</h3>
                <form>
                  <div class="content py-3">
                    <p>&emsp;创建日期：&emsp;&emsp;&emsp;<strong>${requestScope.detail.time}</strong></p>
                    <p>&emsp;联系电话：&emsp;&emsp;&emsp;<strong>${requestScope.detail.phone}</strong></p>
                    <p>&emsp;工作邮箱：&emsp;&emsp;&emsp;<strong>${requestScope.detail.email}</strong></p>
                    <p>&emsp;联系地址：&emsp;&emsp;&emsp;<strong>${requestScope.detail.address}</strong></p>
                    <p>&emsp;机构简介：&emsp;&emsp;&emsp;<strong>${requestScope.detail.details}</strong></p>
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