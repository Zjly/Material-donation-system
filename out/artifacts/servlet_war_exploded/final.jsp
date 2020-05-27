<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>结果查看</title>
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
                  <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                  <li aria-current="page" class="breadcrumb-item active">finally</li>
                </ol>
              </nav>
              <div id="error-page" class="row">
                <div class="col-md-6 mx-auto">
                  <div class="box text-center py-5">
                    <p class="text-center"><img src="img/logo.png" alt="Obaju template"></p>
                    <h3>助力成功!本次助力编号：${sessionScope.orderId}</h3>
                    <c:if test="${sessionScope.type == 2}">
                      <h4 class="text-muted">本次助力您选择资金助力方式，付款码如下：</h4>
                      <c:if test="${sessionScope.pay_way == 1 }">
                        <img src="img/支付宝.jpg" alt="支付宝">
                      </c:if>
                      <c:if test="${sessionScope.paymethod == 2}">
                        <img src="img/微信.jpg" alt="微信">
                      </c:if>
                    </c:if>

                    <c:if test="${sessionScope.type == 1}">
                      <h4 class="text-muted">本次助力您选择物资助力方式，详情如下：</h4>
                      <p class="text-center">送/取货方式：
                        <c:if test="${sessionScope.sendType == 1}">
                          <strong>主动送货</strong>
                          <p><strong>送货地址1：</strong>${sessionScope.real_address}</p>
                          <p><strong>送货地址2：</strong>${sessionScope.company_address}</p>
                        </c:if>
                        <c:if test="${sessionScope.sendType == 2}">
                          <strong>上门取货</strong>
                          <p><strong>送货地址：</strong>${sessionScope.user_address}</p>
                        </c:if>
                      </p>
                    </c:if>
                    <p class="buttons"><a href="index.jsp" class="btn btn-primary"><i class="fa fa-home"></i> 回到首页</a></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

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