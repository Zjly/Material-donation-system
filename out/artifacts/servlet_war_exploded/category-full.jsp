<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>需求浏览</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
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
                  <li aria-current="page" class="breadcrumb-item active">需求列表</li>
                </ol>
              </nav>
              <div class="box">
                <h1>助力武汉</h1>
                <p>疫情面前，我们要保持好心态，重防护、勤消毒，减少出门和聚会，保护好自己和家人，一起共渡难关。同时，向一直奋斗在一线的医护人员致敬，你们辛苦了，武汉加油，中国加油!.</p>
              </div>

              <div id="page" class="row products">
                <c:forEach items="${requestScope.page.items}" var="need">
                  <div class="col-lg-12 col-md-12">
                    <div class="product">
                      <div class="row">
                        <div class="col-lg-4">
                          <a href="detail.jsp"><img src="img3/武汉加油.jpg" alt="" class="img-fluid" style="width: 300px;height: 300px"></a>
                        </div>
                        <div class="col-lg-8 text">
                          <h3><a href="detail.jsp">${need.theme}</a></h3>
                          <p class="price">
                            发起人：<a href="userServlet?action=showOtherUser&userId=${need.userId}&nextUrl=user-account">${need.promoter}</a><br><br>
                          </p>
                          <p class="other" align="center">
                            需求内容：<span class="aim" style="font-size: 15px;color: #ff8a1f">${need.name}</span>&nbsp;&nbsp;
                            需求目标：<span class="aim" style="font-size: 15px;color: #ff8a1f">${need.count}</span>&nbsp;&nbsp;
                            帮助人次：<span class="aim" style="font-size: 15px;color: #ff8a1f">${need.donatedTimes}</span>
                          </p><br>
                          <p class="buttons">
                            <a href="clientNeedServlet?action=getBookDetail&needId=${need.id}" class="btn btn-outline-secondary">查看详情</a>
                            <a id="${need.id}" href="orderServlet?action=showCheckout&needId=${need.id}" class="btn btn-primary"><i class="fa fa-heart"></i>为他助力</a>
                          </p>
                          <p class="launch-time" align="right">${need.time}&nbsp;&nbsp;&nbsp;&nbsp;</p>
                        </div>
                        <!-- /.text-->
                      </div>
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
                                <li class="page-item"><a href="${requestScope.page.url}&pageNo=1" aria-label="Previous" class="page-link">
                                    <span aria-hidden="true">首页</span><span class="sr-only">首页</span></a></li>
                                <li class="page-item"><a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo-1}&pageSize=4" aria-label="Previous" class="page-link"><span aria-hidden="true">«</span><span class="sr-only">Previous</span></a></li>
                            </c:if>

                            <c:choose>
                                <c:when test="${requestScope.page.pageTotal <= 5}">
                                    <c:forEach begin="1" end="${requestScope.page.pageTotal}" var="i">
                                        <c:if test="${requestScope.page.pageNo == i}">
                                            <li class="page-item active"><a href="#" class="page-link">${i}</a></li>
                                        </c:if>
                                        <c:if test="${i != requestScope.page.pageNo}">
                                            <li class="page-item"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=4" class="page-link">${i}</a></li>
                                        </c:if>
                                    </c:forEach>
                                </c:when>
                                <c:when test="${requestScope.page.pageTotal > 5}">
                                    <c:choose>
                                        <%--					当前页码为前三个--%>
                                        <c:when test="${requestScope.page.pageNo <= 3}">
                                            <c:forEach begin="1" end="5" var="i">
                                                <c:if test="${requestScope.page.pageNo == i}">
                                                    <li class="page-item active"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=4" class="page-link">${i}</a></li>
                                                </c:if>
                                                <c:if test="${i != requestScope.page.pageNo}">
                                                    <li class="page-item"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=4" class="page-link">${i}</a></li>
                                                </c:if>
                                            </c:forEach>
                                        </c:when>
                                        <%--					当前页码为最后三个--%>
                                        <c:when test="${requestScope.page.pageNo > requestScope.page.pageTotal - 3 }">
                                            <c:forEach begin="${requestScope.page.pageTotal - 4}" end="${requestScope.page.pageTotal}" var="i">
                                                <c:if test="${requestScope.page.pageNo == i}">
                                                    <li class="page-item active"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=4" class="page-link">${i}</a></li>
                                                </c:if>
                                                <c:if test="${i != requestScope.page.pageNo}">
                                                    <li class="page-item"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=4" class="page-link">${i}</a></li>
                                                </c:if>
                                            </c:forEach>
                                        </c:when>
                                        <%--					其他页码--%>
                                        <c:otherwise>
                                            <c:forEach begin="${requestScope.page.pageNo - 2}" end="${requestScope.page.pageNo + 2}" var="i">
                                                <c:if test="${requestScope.page.pageNo == i}">
                                                    <li class="page-item active"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=4" class="page-link">${i}</a></li>
                                                </c:if>
                                                <c:if test="${i != requestScope.page.pageNo}">
                                                    <li class="page-item"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=4" class="page-link">${i}</a></li>
                                                </c:if>
                                            </c:forEach>
                                        </c:otherwise>
                                    </c:choose>
                                </c:when>
                            </c:choose>

                            <c:if test="${requestScope.page.pageNo < requestScope.page.pageTotal}">
                                <%--                      <li><a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo+1}&pageSize=6">下一页</a></li>--%>
                                <li class="page-item"><a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo+1}&pageSize=4" aria-label="Next" class="page-link"><span aria-hidden="true">»</span><span class="sr-only">Next</span></a></li>
                                <li class="page-item"><a href="${requestScope.page.url}&pageNo=${requestScope.page.pageTotal}&pageSize=4" aria-label="Next" class="page-link"><span aria-hidden="true">末页</span><span class="sr-only">末页</span></a></li>
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
  <script type="text/javascript">
      function addToCart(id) {
          window.location.href = "checkout1.jsp";

      }
  </script>
  </body>
</html>