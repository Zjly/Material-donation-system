<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>我的账户</title>
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
				    <a href="javascript:;" class="nav-link active"><i class="fa fa-user"></i> 我的账户</a>
                    <a href="password-change.jsp" class="nav-link"><i class="fa fa-list"></i> 修改密码</a>
				    <a href="userServlet?action=loginout" class="nav-link"><i class="fa fa-sign-out"></i> 退出登录</a></ul>
                </div>
              </div>
              <!-- /.col-lg-3-->
              <!-- *** CUSTOMER MENU END ***-->
            </div>
            <div class="col-lg-9">
              <div class="box">
                  <h1>个人信息</h1>
                  <p class="lead">您可以在这里编辑或修改您的个人信息</p>
              </div>
              <div class="box">
                  <div class="row">
                      <div class="col-md-2">
                          <div>
                          <form action="userServlet?action=updatePortrait" method="post" enctype="multipart/form-data" id="imgform">
                              <img id="image" class="img" src="img3/${requestScope.detail.img_path}" alt="head" onclick="fileSelect()">
                              <input class="a" type="file" name="fileToUpload" id="fileToUpload" style="display:none;">
                          </form>
                          </div>
                          <div>
                          <button id="uploadButton"type="submit" form="imgform" class="btn btn-primary" style="display:none;margin-left: 6px;width: 106px" ></i>确定</button>
                          </div>
                      </div>
                      <div class="col-md-10">
                          <div class="form-group"><br>
                              <h4>${requestScope.detail.name} &emsp;&emsp;
                                  <c:if test="${requestScope.status == 0}">
                                  <span class="badge badge-info">未认证</span>
                                  </c:if>
                                  <c:if test="${requestScope.status == 1}">
                                    <span class="badge badge-success">已认证</span>
                                  </c:if>
                                  <c:if test="${requestScope.status == 2}">
                                      <span class="badge badge-warning">认证失败</span>
                                  </c:if>
                              </h4><br>
                              <p>${requestScope.detail.introduction}</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="box">
                <div class="content py-3">
                    <!-- /.row-->
                    <div class="row">
                      &emsp;&emsp;<div style="float:left;margin-top: 1px;width: 4px;height: 30px; background:#c62b26;"></div>
                      <br><h3>&ensp;详细信息</h3>
                      <div class="col-md-12">
                        <div class="form-group">
                            <br><p>&emsp;创建日期：&emsp;&emsp;&emsp;<strong>${requestScope.detail.time}</strong></p>
    <%--                          <label for="company">邮箱</label>--%>
    <%--                          <c:choose>--%>
    <%--                            <c:when test="${empty requestScope.address.email}">--%>
    <%--                              <input name="email" id="company" type="text" class="form-control"  value="${sessionScope.user.email}">--%>
    <%--                            </c:when>--%>
    <%--                            <c:when test="${not empty requestScope.address.email}">--%>
    <%--                              <input name="email" id="company" type="text" class="form-control"  value="${requestScope.address.email}">--%>
    <%--                            </c:when>--%>
    <%--                          </c:choose>--%>
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                            <p>&emsp;联系电话：&emsp;&emsp;&emsp;<strong>${requestScope.detail.phone}</strong></p>
    <%--                          <label for="phone">电话</label>--%>
    <%--                          <input  name="phone" id="phone" type="text" class="form-control" value="${requestScope.address.phone}">--%>
                        </div>
                      </div>
                    </div>
                    <!-- /.row-->
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                            <p>&emsp;工作邮箱：&emsp;&emsp;&emsp;<strong>${requestScope.detail.email}</strong></p>
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                            <p>&emsp;联系地址：&emsp;&emsp;&emsp;<strong>${requestScope.detail.address}</strong></p>
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                            <p>&emsp;机构简介：&emsp;&emsp;&emsp;<strong>${requestScope.detail.details}</strong></p>
                        </div>
                      </div>


                    </div>
                  </div>
                <div class="col-md-12 text-center">
                    <c:choose>
                      <c:when test="${not empty requestScope.detail}">
                        <input type="hidden" name="action" value="updateAddress">
                        <input type="hidden" name="addressId" value="${requestScope.address.addressId}">
                      </c:when>
                      <c:when test="${empty requestScope.address}">
                        <input type="hidden" name="action" value="addAddress">
                      </c:when>
                    </c:choose>
    <%--                    <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> </button>--%>
                    <button type="submit" class="btn btn-primary" onclick="jump()"><i class="fa fa-save"></i> 修改</button>&emsp;&emsp;
                    <button type="submit" class="btn btn-primary" onclick="jump1()"><i class="fa fa-align-justify"></i> 认证</button>
    <%--                      <a href="info-change.jsp">修改</a>--%>
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
    <script>
        function jump() {
            window.location.href = "userServlet?action=showUser&nextUrl=info-change";
        }
        function jump1() {
            window.location.href = "info-identify.jsp";
        }
        $('.a').change(function(e) {
            document.getElementById("uploadButton").style.display="inline";
            var _URL = window.URL || window.webkitURL;
            var file, img;
            if ((file = this.files[0])) {
                img = new Image();
                img.onload = function() {
                    $('.img').attr('src', this.src);
                    console.log(this.width)
                };
                img.src = _URL.createObjectURL(file);
            }
        });
        function fileSelect() {
            document.getElementById("fileToUpload").click();
        }

    </script>
  </body>
</html>