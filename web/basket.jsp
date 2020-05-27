<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>其他</title>
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

    <!-- 主体部分 -->
    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <!-- breadcrumb-->
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.jsp">主页</a></li>
                  <li aria-current="page" class="breadcrumb-item active">购物车</li>
                </ol>
              </nav>
            </div>
            <div id="basket" class="col-lg-9">
              <div class="box">
                <form method="post" action="checkout1.jsp" >
                  <h1>购物车</h1>
                  <c:if test="${empty sessionScope.cart.items}">
                    <p class="text-muted">当前购物车为空！</p>
                  </c:if>
                  <c:if test="${not empty sessionScope.cart.items}">
                    <p class="text-muted">当前有${sessionScope.cart.totalCount}件商品在购物车中</p>
                  </c:if>
                  <div class="table-responsive">
                    <table class="table">
                      <thead>
                        <tr>
                          <th colspan="2">主题</th>
                          <th>发起人</th>
                          <th>发起目标</th>
                          <th>联系电话</th>
                          <th colspan="2">状态</th>
                        </tr>
                      </thead>

                      <tbody>
<%--                      <c:forEach items="${sessionScope.cart.items}" var="entry">--%>
                        <tr>
                          <td>助力武汉</td>
                          <td><a href="#">${entry.value.name}</a></td>
                          <td>
                            武汉大学人民医院
<%--                            <input id="updateItem" type="text" value="${entry.value.count}" bookId="${entry.value.id}" class="form-control" min="1">--%>
                          </td>
                          <td>医疗物资</td>
                          <td>15629083323</td>
                          <td>进行中</td>
                          <td><a class="deleteItem" href="cartServlet?action=deleteItem&id=${entry.value.id}"><i class="fa fa-trash-o"></i></a></td>
                        </tr>
<%--                      </c:forEach>--%>
                      </tbody>

                      <c:if test="${not empty sessionScope.cart.items}">
                      <tfoot>
                        <tr>
                          <th colspan="5">共${sessionScope.cart.totalCount}件商品</th>
                          <th colspan="2">总计：$${sessionScope.cart.totalPrice}元</th>
                        </tr>
                      </tfoot>
                      </c:if>

                    </table>
                  </div>
                  <!-- /.table-responsive-->
                  <div class="box-footer d-flex justify-content-between flex-column flex-lg-row">
                    <div class="left"><a href="index.jsp" class="btn btn-outline-secondary"><i class="fa fa-chevron-left"></i> 浏览网站</a></div>

<%--                    <c:if test="${not empty sessionScope.cart.items}">--%>
                      <div class="right">
                        <!-- <button class="btn btn-outline-secondary"><i class="fa fa-refresh"></i> 更新购物车</button> -->
                        <button type="submit" class="btn btn-primary">开始助力 <i class="fa fa-chevron-right"></i></button>
                      </div>
<%--                    </c:if>--%>

                  </div>
                </form>
              </div>
              <!-- /.box-->

            </div>
            <!-- /.col-lg-9-->
            <div class="col-lg-3">
              <div id="order-summary" class="box">
                <div class="box-header">
                  <h3 class="mb-0">购物清单</h3>
                </div>
                <p class="text-muted">这里是您的购物总清单。</p>
                <div class="table-responsive">
                  <table class="table">
                    <tbody>
                      <tr>
                        <td>订单总计</td>
                        <th>$${sessionScope.cart.totalPrice}</th>
                      </tr>
                      <tr>
                        <td>小费</td>
                        <th>$<span id="tax">0.00</span></th>
                      </tr>
                      <tr class="total">
                        <td>Total</td>
                        <th>$${sessionScope.cart.totalPrice}</th>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>

            <!-- /.col-md-3-->
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
    <script type="text/javascript">
      $(function () {
        $("a.deleteItem").click(function () {
          return  confirm("确定要删【" + $(this).parent().parent().find("td:eq(1)").text() +"】除吗")
        });

        $("#updateItem").change(function () {
          var name = $(this).parent().parent().find("td:eq(1)").text();
          var count = this.value;
          var id = $(this).attr("bookId");
          if(confirm("将"+ name +"商品修改数量为：" + count + "?")){
            location.href = "cartServlet?action=updateCount&count=" + count + "&id=" + id;
          }else {
            this.value = this.defaultValue;
          }
        })
      })

    </script>
    <script>

    </script>

  </body>
</html>