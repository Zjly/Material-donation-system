<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>助力详情</title>
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
                  <li aria-current="page" class="breadcrumb-item"><a href="orderServlet?action=showMyOrders">我的助力</a></li>
                  <li aria-current="page" class="breadcrumb-item active">助力编号 # ${requestScope.order.orderId}</li>
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
                  <ul class="nav nav-pills flex-column"><a href="orderServlet?action=showMyOrders" class="nav-link"><i class="fa fa-list"></i> 我的助力</a>
				  <a href="userServlet?action=showUser&nextUrl=customer-account" class="nav-link"><i class="fa fa-user"></i> 我的账户</a>
				  <a href="userServlet?action=loginout" class="nav-link"><i class="fa fa-sign-out"></i> 退出登录</a></ul>
                </div>
              </div>
              <!-- /.col-lg-3-->
              <!-- *** CUSTOMER MENU END ***-->
            </div>
            <div id="customer-order" class="col-lg-9">
              <div class="box">
                <h1>订单 #${requestScope.order.orderId}</h1>
                <p class="lead">创建时间 <strong>${requestScope.order.createTime}</strong>&emsp;
                  &emsp;状态
                  <c:if test="${requestScope.order.status == 0}">
                    <strong>准备中</strong>
                  </c:if>
                  <c:if test="${requestScope.order.status == 1}">
                    <strong>已发货</strong>
                  </c:if>
                  <c:if test="${requestScope.order.status == 2}">
                    <strong>已签收</strong>
                  </c:if>
                </p>
                <p class="text-muted">如果您有什么问题，请 <a href="contact.jsp">联系我们</a>, 您的专属客服24小时在线</p>
                <hr>
                <div class="table-responsive mb-4">
                  <table class="table">
<%--                    <thead>--%>
<%--                      <tr>--%>
<%--                        <th colspan="2">商品</th>--%>
<%--                        <th>数量</th>--%>
<%--                        <th>价格</th>--%>
<%--                        <th>折扣</th>--%>
<%--                        <th>实付</th>--%>
<%--                      </tr>--%>
<%--                    </thead>--%>
                    <tbody>
                        <tr>
                            <td><strong>需求发起人:</strong>&emsp;&emsp;&emsp;&emsp;${requestScope.order.targetName}</td>
                        </tr>
                        <tr>
                            <td><strong>&emsp;需求内容:</strong>&emsp;&emsp;&emsp;&emsp;${requestScope.order.needName}</td>
                        </tr>
                        <tr>
                            <td><strong>&emsp;助力方式:</strong>&emsp;&emsp;&emsp;&emsp;
                                <c:if test="${requestScope.order.type == 1}">
                                    物资助力
                                </c:if>
                                <c:if test="${requestScope.order.type == 2}">
                                    资金助力
                                </c:if>
                            </td>
                        </tr>
                        <c:if test="${requestScope.order.sendType == 1}">
                        <tr>
                            <td><strong>送取货方式:</strong>&emsp;&emsp;&emsp;&emsp;主动送货
                            </td>
                        </tr>
                        </c:if>
                        <c:if test="${requestScope.order.sendType == 2}">
                            <tr>
                                <td><strong>&emsp;送取货方式:</strong>&emsp;&emsp;&emsp;&emsp;上门取货
                                </td>
                            </tr>
                        </c:if>
                        <tr>
                            <td><strong>&emsp;助力数额:</strong>&emsp;&emsp;&emsp;&emsp;${requestScope.order.count}</td>
                        </tr>
                    </tbody>
                    <tfoot>
<%--                      <tr>--%>
<%--                        <th colspan="5" class="text-right">总价</th>--%>
<%--                        <th>$${requestScope.nowOrder.price}</th>--%>
<%--                      </tr>--%>
<%--                      <tr>--%>
<%--                        <th colspan="5" class="text-right">实付</th>--%>
<%--                        <th>$${requestScope.nowOrder.price}</th>--%>
<%--                      </tr>--%>
                    </tfoot>
                  </table>

                </div>
                <!-- /.table-responsive-->
                <div class="row addresses">
                  <div class="col-lg-11">
                    <a href="orderServlet?action=receiverOrder&orderId=${requestScope.order.orderId}"
                       class="btn btn-primary">确认完成</a>
                  </div>

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