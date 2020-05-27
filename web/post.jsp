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
                  <li class="breadcrumb-item"><a href=index.jsp>主页</a></li>
                  <li class="breadcrumb-item"><a href="blog.jsp">精品美文</a></li>
                  <li aria-current="page" class="breadcrumb-item active">美文赏析</li>
                </ol>
              </nav>
            </div>
            <div id="blog-post" class="col-lg-9">
              <div class="box">
                <h1 id="pagetitle">《匆匆》</h1>
                <p class="author-date">选自 <strong>《朱自清散文集》</strong> |  April 10, 2020</p>
                <p class="lead">朱自清的散文诗《匆匆》写于一九二二年三月二十八日。时是“五四”落潮期，现实不断给作者以失望。但是诗人在彷徨中并不甘心沉沦，他站在他的“中和主义”立场上执着地追求着。</p>
                <div id="post-content">
                  <p>  燕子去了，有再来的时候；杨柳枯了，有再青的时候；桃花谢了，有再开的时候。但是，聪明的，你告诉我，我们的日子为什么一去不复返呢？——是有人偷了他们罢：那是谁？又藏在何处呢？是他们自己逃走了罢：现在又到了哪里呢？</p>
                  <p>我不知道他们给了我多少日子；但我的手确乎是渐渐空虚了。在默默里算着，八千多日子已经从我手中溜去；像针尖上一滴水滴在大海里，我的日子滴在时间的流里，没有声音，也没有影子。我不禁头涔涔而泪潸潸了。</p>
                  <p>去的尽管去了，来的尽管来着；去来的中间，又怎样地匆匆呢？早上我起来的时候，小屋里射进两三方斜斜的太阳。太阳他有脚啊，轻轻悄悄地挪移了；我也茫茫然跟着旋转。于是——洗手的时候，日子从水盆里过去；吃饭的时候，日子从饭碗里过去；默默时，便从凝然的双眼前过去。我觉察他去的匆匆了，伸出手遮挽时，他又从遮挽着的手边过去，天黑时，我躺在床上，他便伶伶俐俐地从我身上跨过，从我脚边飞去了。等我睁开眼和太阳再见，这算又溜走了一日。我掩着面叹息。但是新来的日子的影儿又开始在叹息里闪过了。</p>
                  <p>在逃去如飞的日子里，在千门万户的世界里的我能做些什么呢？只有徘徊罢了，只有匆匆罢了；在八千多日的匆匆里，除徘徊外，又剩些什么呢？过去的日子如轻烟，被微风吹散了，如薄雾，被初阳蒸融了；我留着些什么痕迹呢？我何曾留着像游丝样的痕迹呢？我赤裸裸来到这世界，转眼间也将赤裸裸的回去罢？但不能平的，为什么偏要白白走这一遭啊？</p>
                  <p>你聪明的，告诉我，我们的日子为什么一去不复返呢？</p>
                  <p><img src="img/blog2.jpg" alt="Example blog post alt" class="img-fluid"></p>
                  <h2 id="famouscom">名家点评</h2>
                  <blockquote class="blockquote">
                    <p>现代杰出的散文家、诗人、学者、民主战士朱自清于1922年3月28日创作的散文《匆匆》，作为短短600余字的散文， 题为《匆匆》， 却非“匆匆” 之作， 饱含着深刻的文学意蕴。从历史内容层面读《匆匆》， 掠过“五四” 知识青年忙于追求进步的匆匆身影； 从哲学意味层读《匆匆》， 饱含时间流逝的思辨； 从审美意蕴层读《匆匆》， 感受情景交融的意境， 丰富的意象。这是一篇耐人寻味的佳作。&emsp;&emsp;&emsp;  --曾玉</p>
                  </blockquote>
                </div>
                <!-- /#post-content-->
                <div id="comments">
                  <h4>精彩评论</h4>
                  <div class="row comment">
                    <div class="col-md-9 col-lg-10">
                      <h5>时间如梦</h5>
                      <p class="posted"><i class="fa fa-clock-o"></i> September 23, 2019</p>
                      <p>&nbsp;&nbsp;&nbsp;&nbsp;&emsp;读了《匆匆》这篇文章，我知道了时间如此宝贵，他会在我们不经意之间悄悄溜走。《匆匆》这篇文章叙述了时间的一点一滴的消失在时间的河里，一去不复返。告诉了我们时间如金，要珍惜时间，不要虚度光阴。</p>

                    </div>
                  </div>
                  <!-- /.comment-->
                  <div class="row comment last">
                    <div class="col-md-9 col-lg-10">
                      <h5>匿名</h5>
                      <p class="posted"><i class="fa fa-clock-o"></i> April 2, 2020</p>
                      <p>&emsp;&emsp;时间是最平凡的，也是最宝贵的。金钱买不到他，地位也留不住他。"时间是构成一个人生命的材料。”每个人的生命是有限的，同样，属于一个热闹的时间也是有限的，他一分一秒，稍纵即逝!</p>

                    </div>
                  </div>
                  <!-- /.comment-->
                </div>
                <!-- /#comments-->

              </div>
              <!-- /.box-->
            </div>
            <!-- /#blog-post-->
            <div class="col-lg-3">
              <!--
              *** BLOG MENU ***
              _________________________________________________________
              -->
              <div id="listtwo" class="card sidebar-menu mb-4">
                <div class="card-header">
                  <h3 class="h4 panel-title">目录</h3>
                </div>
                <div class="card-body">
                  <ul class="nav flex-column nav-pills">
                    <li><a href="#pagetitle" class="nav-link">美文赏析</a></li>
                    <li><a href="#famouscom" class="nav-link">名家点评</a></li>
                    <li><a href="#comments" class="nav-link">精彩评论</a></li>
                  </ul>
                </div>
              </div>
              <!-- /.col-lg-3-->
              <!-- *** BLOG MENU END ***-->

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
      }
      window.onscroll = htmlScroll;

      var elFix = document.getElementById('listtwo');
      htmlPosition(elFix);
    </script>
  </body>
</html>