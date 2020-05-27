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
                  <li class="breadcrumb-item"><a href="#">主页</a></li>
                  <li aria-current="page" class="breadcrumb-item active">我的收藏</li>
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
                  <a href="orderServlet?action=showMyOrders" class="nav-link"><i class="fa fa-list"></i>我的订单</a>
				  <a href="customer-wishlist.jsp" class="nav-link active"><i class="fa fa-heart"></i> 我的收藏</a>
				  <a href="addressServlet?action=getAddress&nextUrl=customer-account" class="nav-link"><i class="fa fa-user"></i> 我的账户</a>
				  <a href="userServlet?action=loginout" class="nav-link"><i class="fa fa-sign-out"></i> 退出登录</a></ul>
                </div>
              </div>
              <!-- /.col-lg-3-->
              <!-- *** CUSTOMER MENU END ***-->
            </div>
            <div id="wishlist" class="col-lg-9">
              <ul class="breadcrumb">
                <li><a href="#">主页</a></li>
                <li>/我的收藏</li>
              </ul>
              <div class="box">
                <h1>我的收藏</h1>
                
              </div>
              <div class="row products">
                <div class="col-lg-3 col-md-4">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img2/book1.jpg" alt="" class="img-fluid"></a></div>
                     
                         </div>
                       </div><a href="detail.jsp" class="invisible"><img src="img2/book1.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">狼图腾</a></h3>
                      <p class="price"> 
                        <del></del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                  </div>
                  <!-- /.product            -->
                </div>
                <div class="col-lg-3 col-md-4">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img2/book2.jpg" alt="" class="img-fluid"></a></div>
                        
                      </div>
                    </div><a href="detail.jsp" class="invisible"><img src="img2/book2.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">大话西方艺术史</a></h3>
                      <p class="price"> 
                        <del>$280</del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                    <div class="ribbon sale">
                      <div class="theribbon">SALE</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <!-- /.ribbon-->
                    <div class="ribbon new">
                      <div class="theribbon">NEW</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <!-- /.ribbon-->
                    <div class="ribbon gift">
                      <div class="theribbon">GIFT</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <!-- /.ribbon-->
                  </div>
                  <!-- /.product            -->
                </div>
                <div class="col-lg-3 col-md-4">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img2/book3.jpg" alt="" class="img-fluid"></a></div>
                       
                      </div>
                    </div><a href="detail.jsp" class="invisible"><img src="img2/book3.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">儿童艺术博物馆</a></h3>
                      <p class="price"> 
                        <del></del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                  </div>
                  <!-- /.product            -->
                </div>
                <div class="col-lg-3 col-md-4">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img2/book4.jpg" alt="" class="img-fluid"></a></div>
                       
                      </div>
                    </div><a href="detail.jsp" class="invisible"><img src="img2/book4.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">加古里子</a></h3>
                      <p class="price"> 
                        <del></del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                  </div>
                  <!-- /.product            -->
                </div>
                <div class="col-lg-3 col-md-4">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img2/book5.jpg" alt="" class="img-fluid"></a></div>
                       
                      </div>
                    </div><a href="detail.jsp" class="invisible"><img src="img2/book5.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">玫瑰的遭遇</a></h3>
                      <p class="price"> 
                        <del></del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                    <div class="ribbon new">
                      <div class="theribbon">NEW</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <!-- /.ribbon-->
                  </div>
                  <!-- /.product            -->
                </div>
                <div class="col-lg-3 col-md-4">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img2/book6.jpg" alt="" class="img-fluid"></a></div>
                        
                      </div>
                    </div><a href="detail.jsp" class="invisible"><img src="img2/book6.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">学前快读600字</a></h3>
                      <p class="price"> 
                        <del></del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                    <div class="ribbon gift">
                      <div class="theribbon">GIFT</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <!-- /.ribbon-->
                  </div>
                  <!-- /.product            -->
                </div>
                <div class="col-lg-3 col-md-4">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img2/book3.jpg" alt="" class="img-fluid"></a></div>
                           
                          </div>
                        </div><a href="detail.jsp" class="invisible"><img src="img2/book3.jpg" alt="" class="img-fluid"></a>
                        <div class="text">
                          <h3><a href="detail.jsp">儿童艺术博物馆</a></h3>
                      <p class="price"> 
                        <del>$280</del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                    <div class="ribbon sale">
                      <div class="theribbon">SALE</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <!-- /.ribbon-->
                    <div class="ribbon new">
                      <div class="theribbon">NEW</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <!-- /.ribbon-->
                    <div class="ribbon gift">
                      <div class="theribbon">GIFT</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <!-- /.ribbon-->
                  </div>
                  <!-- /.product            -->
                </div>
                <div class="col-lg-3 col-md-4">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img2/book3.jpg" alt="" class="img-fluid"></a></div>
                           
                          </div>
                        </div><a href="detail.jsp" class="invisible"><img src="img2/book3.jpg" alt="" class="img-fluid"></a>
                        <div class="text">
                          <h3><a href="detail.jsp">儿童艺术博物馆</a></h3>
                      <p class="price"> 
                        <del></del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                  </div>
                  <!-- /.product            -->
                </div>
                <!-- /.products-->
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