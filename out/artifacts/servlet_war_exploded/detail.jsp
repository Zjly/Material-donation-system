<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>详情界面</title>
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
                  <li class="breadcrumb-item"><a href="index.jsp">首页</a></li>
                  <li class="breadcrumb-item"><a href="javascript:;">需求详情</a></li>
                  <li aria-current="page" class="breadcrumb-item active">${requestScope.Need.name}</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-3 order-2 order-lg-1">
              <!--
              *** MENUS AND FILTERS ***
              _________________________________________________________
              -->
              <div id="listtwo" class="card sidebar-menu mb-4">
                <div class="card-header">
                  <h3 class="h4 panel-title" align="center">目录</h3>
                </div>
                <div class="card-body" align="center">
                  <ul class="nav flex-column nav-pills">
                    <li><a href="JavaScript:;" class="nav-link" onclick="jump1()">&emsp;&emsp;&emsp;回到顶部&emsp;&emsp;&emsp;</a></li>
                    <li><a href="JavaScript:;" class="nav-link" onclick="jump2()">详细信息</a></li>
                    <li><a href="JavaScript:;" class="nav-link" onclick="jump3()">留言评论</a></li>
                  </ul>
                </div>
              </div>
              <!-- *** MENUS AND FILTERS END ***-->
            </div>

            <div class="col-lg-9 order-1 order-lg-2">
              <div id="productMain" class="row">
                <div class="col-md-6">
                  <div data-slider-id="1" class="owl-carousel shop-detail-carousel">
                    <div class="item"> <img src="img3/武汉加油.jpg" alt="${requestScope.Need.imgPath}" class="img-fluid"></div>
                  </div>
                  <!-- /.ribbon-->
                </div>
                <div class="col-md-6">
                  <div class="box">
                    <h2 id="booktitle" class="text-center">${requestScope.Need.theme}</h2>
                    <p class="goToDescription"><a href="#details" class="scroll-to">需求详情介绍</a></p>
                    <p class="price" style="font-size: 14px">
                      需求内容：<span class="aim" style="font-size: 15px;color: #ff8a1f">${requestScope.Need.name}</span>&emsp;
                      需求目标：<span class="badge badge-success" style="font-size: 14px">${requestScope.Need.count}</span>&emsp;</p>
                    <p class="price" style="font-size: 20px">发起人：${requestScope.Need.promoter}</p><br>
                    <p class="text-center buttons"><a href="orderServlet?action=showCheckout&needId=${requestScope.Need.id}" class="btn btn-primary"><i class="fa fa-heart-o"></i>为他助力</a></p>
                  </div>
                </div>
              </div>
              <div id="details" class="box">
                <p></p>
                <h4>主题</h4>
                <p style="font-size: 18px">&emsp;${requestScope.Need.theme}</p>
                <h4>发起人 &amp; 时间</h4>
                <ul>
                  <li>${requestScope.Need.promoter}</li>
                  <li>${requestScope.Need.time}</li>
                </ul>
                <h4>需求内容 &amp; 需求目标</h4>
                <ul>
                  <li>${requestScope.Need.name}</li>
                  <li>${requestScope.Need.count}</li>
                </ul>

                <blockquote>
                  <p><em>${requestScope.Need.describe}</em></p>
                </blockquote><br>
                <hr>
                <h4 align="center">${requestScope.Need.promoter}</h4>
                <p>&emsp;&emsp;${requestScope.promoter.details}</p>
                <hr>

<%--                评论区--%>
                <h4 id="comment-area">${requestScope.Comment.pageTotalCount} 条评论</h4><br>
                <c:forEach items="${requestScope.Comment.items}" var="comment">
                  <div class="row comment">
                    <div class="col-md-12 col-lg-12">
                      <h5>${comment.username}</h5>
                      <p class="posted"><i class="fa fa-clock-o"></i> ${comment.createTime}</p>
                      <p>${comment.comment}</p>
<%--                      <p class="reply"><a href="#"><i class="fa fa-reply"></i> 回复</a></p>--%>
                    </div>
                  </div><hr>
                </c:forEach>

                <!-- /.comment-->

<%--                留言板--%>
                <div id="comment-form">
                  <h4>留下你的祝福！</h4>
                  <form action="clientNeedServlet">
                    <input type="hidden" name="action" value="commentNeed">
                    <input type="hidden" name="needId" value="${requestScope.Need.id}">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="name">名字 <span class="required">*</span></label>
                          <input id="name" type="text" class="form-control" value="${sessionScope.user.username}">
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label for="comment">留言板 <span class="required">*</span></label>
                          <textarea id="comment" name="comment" rows="4" class="form-control"></textarea>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12 text-right">
                        <button class="btn btn-primary" type="submit"><i class="fa fa-comment-o"></i> 留言</button>
                      </div>
                    </div>
                  </form>
                </div>
                <!-- /#comment-form-->
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
    <script>
      function htmlScroll() {                 // 实现目录随屏幕滚动
        var top = document.body.scrollTop || document.documentElement.scrollTop;
        if (elFix.data_top < top) {
          elFix.style.position = 'fixed';
          elFix.style.top = 0;
          elFix.style.left = elFix.data_left;
        }
        else {
          elFix.style.position = 'static';
        }
      }

      function htmlPosition(obj) {
        var o = obj;
        var t = o.offsetTop;
        var l = o.offsetLeft;
        while (o = o.offsetParent) {
          t += o.offsetTop;
          l += o.offsetLeft;
        }
        obj.data_top = t;
        obj.data_left = l;
      }

      var oldHtmlWidth = document.documentElement.offsetWidth;
      window.onresize = function () {
        var newHtmlWidth = document.documentElement.offsetWidth;
        if (oldHtmlWidth == newHtmlWidth) {
          return;
        }
        oldHtmlWidth = newHtmlWidth;
        elFix.style.position = 'static';
        htmlPosition(elFix);
        htmlScroll();
      };
      window.onscroll = htmlScroll;

      var elFix = document.getElementById('listtwo');
      htmlPosition(elFix);
    </script>
    <script type="text/javascript">
      function jump1() {
        window.location.hash = "#productMain";
      }
      function jump2() {
        window.location.hash = "#details";
      }
      function jump3() {
        window.location.hash = "#comment-area";
      }
    </script>
  </body>
</html>