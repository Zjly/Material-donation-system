<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>助力清单</title>
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
                  <li id="currentpage" aria-current="page" class="breadcrumb-item active">助力步骤</li>
                </ol>
              </nav>
            </div>

            <%--            主要内容，局部切换--%>
            <div id="checkout" class="col-lg-9">
              <div id="area" class="box">
              </div>
            </div>

            <%--            助力清单--%>
            <div class="col-lg-3">
              <div id="order-summary" class="box">
                <div class="box-header">
                  <h3 class="mb-0">助力清单</h3>
                </div>
                <p class="text-muted">这里是您的助力清单。</p>
                <div class="table-responsive">
                  <table class="table">
                    <tbody>
                    <tr>
                      <td>需求主题</td>
                      <th>${requestScope.need.theme}</th>
                    </tr>
                    <tr>
                      <td>发起人</td>
                      <th>${requestScope.need.promoter}</th>
                    </tr>
                    <tr>
                      <td>需求内容</td>
                      <th>${requestScope.need.name}</th>
                    </tr>
                    <tr>
                      <td>需求目标</td>
                      <th>${requestScope.need.count}</th>
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
    </div>
    <!--
    *** FOOTER ***
    _________________________________________________________
    -->

    <!-- 界面一 -->
    <div id="checkout1" class="col-lg-9">
      <div id="area1" class="box" style="display: none;">
        <!--<form method="get" action="checkout2.jsp">-->
        <form method="get">
          <h1>填写相关信息</h1>
          <div class="nav flex-column flex-md-row nav-pills text-center">
            <a href="javascript:;" class="nav-link flex-sm-fill text-sm-center active"> <i class="fa fa-map-marker">                  </i>相关信息</a>
            <a href="#" class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-truck">                       </i>助力方式</a>
            <a href="#" class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-eye">                      </i>其他内容</a>
            <a href="#" class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-money">                     </i>其他内容</a>
          </div>
          <div class="content py-3">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="firstname">昵称</label>
                  <input name="receiver" id="firstname" type="text" class="form-control" value="${requestScope.user.username}">
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="lastname">真实姓名</label>
                  <input name="representativeReceiver" id="lastname" placeholder="可匿名" type="text" class="form-control" value="${requestScope.address.representativeReceiver}">
                </div>
              </div>
            </div>
            <!-- /.row-->
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="company">邮箱</label>
                  <input name="email" id="company" type="text" class="form-control"  value="${requestScope.address.email}">
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="phone">电话</label>
                  <input  name="phone" id="phone" type="text" class="form-control" value="${requestScope.address.phone}">
                </div>
              </div>
            </div><hr>
            <!-- /.row-->
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="name">助力详情</label>
                  <input name="name" id="name" value="" type="text" class="form-control">
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="count">助力数额</label>
                  <input name="count" id="count" value="" type="text" class="form-control">
                </div>
              </div>
            </div>
          </div>
          <div class="box-footer d-flex justify-content-between">
            <a href="index.jsp" class="btn btn-outline-secondary"><i class="fa fa-chevron-left"></i>返回</a>
            <button id="nextTrans" class="btn btn-primary" onclick="nextpage2()">选择配送方式<i class="fa fa-chevron-right"></i></button>
          </div>
        </form>
      </div>
      <!-- /.box-->
    </div>
    <!-- 界面二 -->
    <div id="checkout2" class="col-lg-9">
      <div id="area2" class="box" style="display: none">
        <form>
          <h1>选择助力方式</h1>
          <div class="nav flex-column flex-sm-row nav-pills">
            <a href="JavaScript:;" class="nav-link flex-sm-fill text-sm-center" onclick="uppage1()"><i class="fa fa-map-marker">                  </i>相关信息</a>
            <a href="javascript:;" class="nav-link flex-sm-fill text-sm-center active"> <i class="fa fa-truck">                       </i>助力方式</a>
            <a href="#" class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-eye">                      </i>其他内容</a>
            <a href="#" class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-money">                     </i>其他内容</a>
          </div>
          <div class="content py-3">
            <div class="row">
              <div class="col-md-6">
                <div class="box shipping-method">
                  <h3 align="center">物资助力</h3>
                  <p align="center">根据需求提供相关物资!</p>
                  <div class="box-footer text-center">
                    <input type="radio" name="delivery" value="1">
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="box shipping-method">
                  <h3 align="center">资金助力</h3>
                  <p align="center">提供一定的财力支援！</p>
                  <div class="box-footer text-center">
                    <input type="radio" name="delivery" value="2">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="box-footer d-flex justify-content-between">
            <button type="submit" class="btn btn-primary" onclick="uppage1()"><i class="fa fa-chevron-left" onclick="uppage1()"></i>个人信息</button>
            <!-- <a id="page2topage1" href="checkout1.jsp" class="btn btn-outline-secondary" onclick="uppage1()"><i class="fa fa-chevron-left"></i>详细地址</a> -->
            <button id="page2topage3" type="submit" class="btn btn-primary" onclick="nextpage3()">下一步<i class="fa fa-chevron-right"></i></button>
          </div>
        </form>
      </div>
      <!-- /.box-->
    </div>
    <%--    如果选择物资助力，跳转此处--%>
    <div id="checkout31" class="col-lg-9">
      <div id="area31" class="box" style="display: none">
        <form>
          <h1>选择送货方式</h1>
          <div class="nav flex-column flex-sm-row nav-pills">
            <a href="JavaScript:;" class="nav-link flex-sm-fill text-sm-center" onclick="uppage1()"><i class="fa fa-map-marker">                  </i>相关信息</a>
            <a href="JavaScript:;" class="nav-link flex-sm-fill text-sm-center" onclick="uppage2()"> <i class="fa fa-truck">                       </i>助力方式</a>
            <a href="javascript:;" class="nav-link flex-sm-fill text-sm-center active"> <i class="fa fa-eye">                      </i>送货方式</a>
            <a href="#" class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-money">                     </i>审查地址</a>
          </div>
          <div class="content py-3">
            <div class="row">
              <div class="col-md-6">
                <div class="box shipping-method">
                  <h3 align="center">主动送货</h3>
                  <p align="center">用户可自行将货物送到指定地址</p>
                  <div class="box-footer text-center">
                    <input type="radio" name="delivery-method" value="1">
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="box shipping-method">
                  <h3 align="center">上门取货</h3>
                  <p align="center">工作人员上门取货代为送货</p>
                  <div class="box-footer text-center">
                    <input type="radio" name="delivery-method" value="2">
                  </div>
                </div>
              </div>
              <%--              <div class="col-md-6">--%>
              <%--                <div class="box shipping-method">--%>
              <%--                  <h4>京东快递</h4>--%>
              <%--                  <p>京东众包,“递”造新生活！</p>--%>
              <%--                  <div class="box-footer text-center">--%>
              <%--                    <input type="radio" name="delivery" value="3">--%>
              <%--                  </div>--%>
              <%--                </div>--%>
              <%--              </div>--%>
            </div>
          </div>
          <div class="box-footer d-flex justify-content-between">
            <button type="submit" class="btn btn-primary" onclick="uppage2()"><i class="fa fa-chevron-left"></i>助力方式</button>
            <button id="page31topage4" type="submit" class="btn btn-primary" onclick="nextpage41()">下一步<i class="fa fa-chevron-right"></i></button>
          </div>
        </form>
      </div>
      <!-- /.box-->
    </div>
    <%--    选择物资助力，填写地址--%>
    <div id="checkout41" class="col-lg-9">
      <div id="area41" class="box" style="display: none;">
        <!--<form method="get" action="checkout2.jsp">-->
        <form method="get" action="orderServlet">
          <input type="hidden" name="action" value="createOrder">
          <input type="hidden" id="transform-way" name="type" value="">
          <input type="hidden" id="transform-method" name="sendType" value="">
          <input type="hidden" id="donate-count1" name="count" value="">
          <input type="hidden" name="needId" value="${requestScope.need.id}">
          <h1>核实取/送货地址</h1>
          <div class="nav flex-column flex-md-row nav-pills text-center">
            <a href="JavaScript:;" class="nav-link flex-sm-fill text-sm-center" onclick="uppage1()"> <i class="fa fa-map-marker">                  </i>相关信息</a>
            <a href="JavaScript:;" class="nav-link flex-sm-fill text-sm-center" onclick="uppage2()"> <i class="fa fa-truck">                       </i>助力方式</a>
            <a href="JavaScript:;" class="nav-link flex-sm-fill text-sm-center" onclick="uppage31()"> <i class="fa fa-eye">                      </i>送货方式</a>
            <a href="javascript:;" class="nav-link flex-sm-fill text-sm-center active"> <i class="fa fa-money">                     </i>审查地址</a>
          </div>
          <div class="content py-3">
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="user-address">取货地址</label>
                  <input name="user-address" id="user-address" type="text" placeholder="请尽可能详细，以便于我们能够找到你" class="form-control" value="${requestScope.address.receiver}">
                </div>
              </div>
            </div><hr>
            <!-- /.row-->
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="company-address">送货地址1（货物转送站）</label>
                  <select name="company-address" id="company-address" class="form-control">
                    <option value="---请选择---">---请选择---</option>
                    <option value="湖北省武汉市武昌区武汉大学文理学部4号教学楼">湖北省武汉市武昌区武汉大学文理学部4号教学楼</option>
                    <option value="山东省烟台市芝罘区机场路黄务街道办事处">山东省烟台市芝罘区机场路黄务街道办事处</option>
                    <option value="四川省成都市天府新区远大中央公园">四川省成都市天府新区远大中央公园</option>
                    <option value="陕西省西安市长安区西安邮电大学长安校区">陕西省西安市长安区西安邮电大学长安校区</option>
                  </select>
<%--                  <input  name="company-address" id="company-address" placeholder="转送站，送至此处可代替继续送达" type="text" class="form-control" value="${requestScope.address.phone}">--%>
                </div>
              </div>
            </div>
            <!-- /.row-->
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="real-address">送货地址2（目标用户实际所在地址）</label>
                  <input name="real-address" id="real-address" placeholder="目标用户实际地址" value="${requestScope.checkdetail.address}" type="text" class="form-control">
                </div>
              </div>
            </div>
          </div>
          <div class="box-footer d-flex justify-content-between">
            <button type="submit" class="btn btn-primary" onclick="uppage31()"><i class="fa fa-chevron-left"></i>送货方式</button>
            <c:choose>
              <c:when test="${not empty requestScope.address}">
                <input type="hidden" name="action" value="updateAddress">
                <input type="hidden" name="addressId" value="${requestScope.address.addressId}">
              </c:when>
              <c:when test="${empty requestScope.address}">
                <input type="hidden" name="action" value="addAddress">
              </c:when>
            </c:choose>
            <button id="btnlast" type="submit" class="btn btn-success">确认提交</button>
          </div>

        </form>
      </div>
      <!-- /.box-->
    </div>
    <!-- 界面三 -->
    <div id="checkout3" class="col-lg-9">
      <div id="area3" class="box" style="display: none;">
        <form method="get" action="checkout3.jsp">
          <h1>审核订单内容</h1>
          <div class="nav flex-column flex-sm-row nav-pills"><a href="JavaScript:;" class="nav-link flex-sm-fill text-sm-center" onclick="uppage1()"> <i class="fa fa-map-marker">                  </i>配送地址</a><a href="JavaScript:;" class="nav-link flex-sm-fill text-sm-center" onclick="uppage2()"> <i class="fa fa-truck">                       </i>配送方式</a><a href="#" class="nav-link flex-sm-fill text-sm-center active"> <i class="fa fa-eye">                      </i>订单审核</a><a href="#" class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-money">                     </i>支付方法</a></div>
          <div class="content">
            <div class="table-responsive">
              <table class="table">
                <thead>
                  <tr>
                    <th>商品</th>
                    <th colspan="2">书名</th>
                    <th>数量</th>
                    <th>价格</th>
                    <th>优惠</th>
                    <th>金额</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach items="${sessionScope.cart.items}" var="entry">
                  <tr>
                    <td><img src="img/${entry.value.name}.jpg" alt="${entry.value.name}"></td>
                    <td colspan="2">${entry.value.name}</td>
                    <td>${entry.value.count}</td>
                    <td>$${entry.value.price}</td>
                    <td>$0.00</td>
                    <td id="prizes">$${entry.value.totalPrice}</td>

                  </tr>
                </c:forEach>

                </tbody>
                <tfoot>
                  <tr>
                    <th colspan="5">共${sessionScope.cart.totalCount}件商品</th>
                    <th colspan="2">总计：$${sessionScope.cart.totalPrice}元</th>
                  </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.table-responsive-->
          </div>
          <!-- /.content-->
          <div class="box-footer d-flex justify-content-between">
            <button type="submit" class="btn btn-primary" onclick="uppage2()"><i class="fa fa-chevron-left" onclick="uppage2()"></i>配送方式</button>
            <!-- <a href="checkout3.jsp" class="btn btn-outline-secondary"><i class="fa fa-chevron-left"></i>Back to payment method</a> -->
            <button type="submit" class="btn btn-primary" onclick="nextpage4()">选择支付方式<i class="fa fa-chevron-right"></i></button>
          </div>
        </form>
      </div>
      <!-- /.box-->
    </div>
    <!-- 界面四 -->
    <div id="checkout4" class="col-lg-9">
      <div id="area4" class="box" style="display: none;">
        <form method="get" action="orderServlet">
          <input type="hidden" name="action" value="createOrder">
          <input type="hidden" id="transform" name="sendType" value="">
          <input type="hidden" id="donate-count2" name="count" value="">
          <input type="hidden" name="needId" value="${requestScope.need.id}">
          <h1>选择支付方式</h1>
          <div class="nav flex-column flex-sm-row nav-pills">
            <a href="JavaScript:;" class="nav-link flex-sm-fill text-sm-center" onclick="uppage1()"> <i class="fa fa-map-marker">                  </i>相关信息</a>
            <a href="JavaScript:;" class="nav-link flex-sm-fill text-sm-center" onclick="uppage2()"> <i class="fa fa-truck">                       </i>助力方式</a>
            <a href="JavaScript:;" class="nav-link flex-sm-fill text-sm-center" disabled> <i class="fa fa-money">                      </i>其他内容</a>
            <a href="javascript:;" class="nav-link flex-sm-fill text-sm-center active"> <i class="fa fa-eye">                     </i>支付方法</a>
          </div>
          <div class="content py-3">
            <div class="row">
              <div class="col-md-6">
                <div class="box payment-method">
                  <h4>支付宝</h4>
                  <p>使用最多。</p>
                  <div class="box-footer text-center">
                    <input type="radio" name="payment" value="1">
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="box payment-method">
                  <h4>微信</h4>
                  <p>方便快捷</p>
                  <div class="box-footer text-center">
                    <input type="radio" name="payment" value="2">
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="box payment-method">
                  <h4>银行卡</h4>
                  <p>其他选择。</p>
                  <div class="box-footer text-center">
                    <input type="radio" name="payment" value="3">
                  </div>
                </div>
              </div>
            </div>
            <!-- /.row-->
          </div>
          <!-- /.content-->

          <div class="box-footer d-flex justify-content-between">
            <button type="submit" class="btn btn-primary" onclick="uppage2()"><i class="fa fa-chevron-left" onclick="uppage3()"></i>助力方式</button>
            <!-- <a href="checkout2.jsp" class="btn btn-outline-secondary"><i class="fa fa-chevron-left"></i>配送方式</a> -->
            <button id="btnlast1" type="submit" class="btn btn-success">确认支付</button>
          </div>
        </form>
        <!-- /.box-->
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
    <script>                                                    //四个局部界面的更换
      document.getElementById("area").innerHTML = document.getElementById("area1").innerHTML;
      function nextpage2(){
        document.getElementById("currentpage").innerText = "助力方式";
        document.getElementById("donate-count1").value = document.getElementById("count").value;
        document.getElementById("donate-count2").value = document.getElementById("count").value;
        document.getElementById("area").innerHTML = document.getElementById("area2").innerHTML;
      }
      function uppage1(){
        document.getElementById("currentpage").innerText = "个人信息";
        document.getElementById("area").innerHTML = document.getElementById("area1").innerHTML;
      }
      function nextpage3(){
        var deliverys = document.getElementsByName("delivery");
        document.getElementById("transform-way").value = "0";
        document.getElementById("transform").value = "0";
        for (i=0;i < deliverys.length;i++){
          if(deliverys[i].checked){
            if (deliverys[i].value === "1"){  //选择送货
              document.getElementById("transform-way").value = deliverys[i].value;  //1表示送货，2表示支付 （1 物资）
              document.getElementById("area").innerHTML = document.getElementById("area31").innerHTML;
              document.getElementById("currentpage").innerText = "送货方式";
            }else if (deliverys[i].value === "2"){  //选择支付
              document.getElementById("transform").value = deliverys[i].value;  //1表示送货，2表示支付(2 支付）
              document.getElementById("area").innerHTML = document.getElementById("area4").innerHTML;
              document.getElementById("currentpage").innerText = "支付方式";
            }
          }
        }
        var num1 = document.getElementById("transform-way").value;
        var num2 = document.getElementById("transform").value;
        if (num1 !== "1" && num2 !== "2"){
          document.getElementById("area").innerHTML = document.getElementById("area2").innerHTML;
        }
      }
      function uppage2(){
        document.getElementById("currentpage").innerText = "助力方式";
        document.getElementById("area").innerHTML = document.getElementById("area2").innerHTML;
      }
      function uppage31(){
        document.getElementById("currentpage").innerText = "送货方式";
        document.getElementById("area").innerHTML = document.getElementById("area31").innerHTML;
      }
      function nextpage4(){
        document.getElementById("currentpage").innerText = "支付方法";
        document.getElementById("area").innerHTML = document.getElementById("area4").innerHTML;
      }
      function nextpage41(){
        var deliverys = document.getElementsByName("delivery-method");
        for (i=0;i < deliverys.length;i++){
          if (deliverys[i].checked){
            document.getElementById("transform-method").value = deliverys[i].value; //1表示主动送货；2表示上门取货
          }
        }
        document.getElementById("currentpage").innerText = "审查地址";
        document.getElementById("area").innerHTML = document.getElementById("area41").innerHTML;
      }
      function uppage3(){
        document.getElementById("currentpage").innerText = "其他";
        document.getElementById("area").innerHTML = document.getElementById("area3").innerHTML;
      }
    </script>
    <script type="text/javascript">
      // $(function () {
      //   $("#btnlast").click(function () {
      //     location.href = "orderServlet?action=createOrder";
      //   })
      // })
    </script>
  </body>
</html>