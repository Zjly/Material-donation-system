<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                  <li aria-current="page" class="breadcrumb-item active">搜索结果</li>
                </ol>
              </nav>
            </div>

            <div class="col-lg-12">
              <div class="box">
                <h1>搜索结果</h1>
<%--                <p>文艺的开始意味着人类的文艺复兴，人类将重新发现了人和人格的伟大，肯定了人的价值和能力，提出人要养育人格，个性应该智慧</p>--%>
              </div>


              <div id="page" class="row products">

                <c:forEach items="${requestScope.page.items}" var="book">
                  <div class="col-lg-4 col-md-6">
                    <div class="product">
                      <div class="flip-container">
                        <div class="flipper">
                          <div class="front"><a href="detail.jsp"><img src="${book.imgPath}" alt="" class="img-fluid"></a></div>
                          <div class="back"><a href="detail.jsp"><img src="${book.imgPath}" alt="" class="img-fluid"></a></div>
                        </div>
                      </div><a href="detail.jsp" class="invisible"><img src="${book.imgPath}" alt="" class="img-fluid"></a>
                      <div class="text">
                        <h3><a href="detail.jsp">${book.name}</a></h3>
                        <p class="price">
                            ${book.author}<br>
                          <del></del>$${book.price}
                        </p>
                        <p class="buttons"><a href="clientBookServlet?action=getBookDetail&bookId=${book.id}" class="btn btn-outline-secondary">查看详情</a>
                          <a id="${book.id}" href="#" onclick="addToCart(this.id)"  class="btn btn-primary"><i class="fa fa-shopping-cart"></i>加入购物车</a>
                        </p>
                      </div>
                      <!-- /.text-->
                    </div>
                    <!-- /.product            -->
                  </div>
                </c:forEach>

                <!-- /.products-->
              </div>


              <div class="pages">

                <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                  <ul class="pagination">

                    <c:if test="${requestScope.page.pageNo > 1}">
<%--                      <li><a href="${requestScope.page.url}&pageNo=1&pageSize=6">首页</a></li>--%>
                      <li class="page-item"><a href="${requestScope.page.url}&pageNo=1&pageSize=6" aria-label="Previous" class="page-link">
                        <span aria-hidden="true">首页</span><span class="sr-only">首页</span></a></li>

                      <li class="page-item"><a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo-1}&pageSize=6" aria-label="Previous" class="page-link"><span aria-hidden="true">«</span><span class="sr-only">Previous</span></a></li>
                    </c:if>

                    <c:choose>
                      <c:when test="${requestScope.page.pageTotal <= 5}">
                        <c:forEach begin="1" end="${requestScope.page.pageTotal}" var="i">
                          <c:if test="${requestScope.page.pageNo == i}">
                            <li class="page-item active"><a href="#" class="page-link">${i}</a></li>
                          </c:if>
                          <c:if test="${i != requestScope.page.pageNo}">
                            <li class="page-item"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=6" class="page-link">${i}</a></li>
                          </c:if>
                        </c:forEach>
                      </c:when>
                      <c:when test="${requestScope.page.pageTotal > 5}">
                        <c:choose>
                          <%--					当前页码为前三个--%>
                          <c:when test="${requestScope.page.pageNo <= 3}">
                            <c:forEach begin="1" end="5" var="i">
                              <c:if test="${requestScope.page.pageNo == i}">
                                <li class="page-item active"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=6" class="page-link">${i}</a></li>
                              </c:if>
                              <c:if test="${i != requestScope.page.pageNo}">
                                <li class="page-item"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=6" class="page-link">${i}</a></li>
                              </c:if>
                            </c:forEach>
                          </c:when>
                          <%--					当前页码为最后三个--%>
                          <c:when test="${requestScope.page.pageNo > requestScope.page.pageTotal - 3 }">
                            <c:forEach begin="${requestScope.page.pageTotal - 4}" end="${requestScope.page.pageTotal}" var="i">
                              <c:if test="${requestScope.page.pageNo == i}">
                                <li class="page-item active"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=6" class="page-link">${i}</a></li>
                              </c:if>
                              <c:if test="${i != requestScope.page.pageNo}">
                                <li class="page-item"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=6" class="page-link">${i}</a></li>
                              </c:if>
                            </c:forEach>
                          </c:when>
                          <%--					其他页码--%>
                          <c:otherwise>
                            <c:forEach begin="${requestScope.page.pageNo - 2}" end="${requestScope.page.pageNo + 2}" var="i">
                              <c:if test="${requestScope.page.pageNo == i}">
                                <li class="page-item active"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=6" class="page-link">${i}</a></li>
                              </c:if>
                              <c:if test="${i != requestScope.page.pageNo}">
                                <li class="page-item"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=6" class="page-link">${i}</a></li>
                              </c:if>
                            </c:forEach>
                          </c:otherwise>
                        </c:choose>
                      </c:when>
                    </c:choose>

                    <c:if test="${requestScope.page.pageNo < requestScope.page.pageTotal}">
<%--                      <li><a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo+1}&pageSize=6">下一页</a></li>--%>
                      <li class="page-item"><a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo+1}&pageSize=6" aria-label="Next" class="page-link"><span aria-hidden="true">»</span><span class="sr-only">Next</span></a></li>
                      <li class="page-item"><a href="${requestScope.page.url}&pageNo=${requestScope.page.pageTotal}&pageSize=6" aria-label="Next" class="page-link"><span aria-hidden="true">末页</span><span class="sr-only">末页</span></a></li>
                    </c:if>

                  </ul>
                </nav>
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
    <script>
      function addToCart(id) {

        var bookId = id;
        // alert(bookId);
        location.href = "cartServlet?action=addItem&id=" + bookId;
      }

    </script>
  </body>
</html>