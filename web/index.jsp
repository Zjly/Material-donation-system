<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>疫情对口捐赠系统</title>
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
		<!-- Tweaks for older IEs-->
	</head>
	<body>
		<!-- navbar-->
        <%--		这是头部文件引用          --%>
		<%@include file="common/web_header.jsp"%>

		<div id="all">
			<div id="content">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<!-- 这是主页轮播图-->
							<div id="main-slider" class="owl-carousel owl-theme">
								<div class="item"><img src="img3/slider1.jpg" alt="" class="img-fluid"></div>
								<div class="item"><img src="img3/slider2.jpg" alt="" class="img-fluid"></div>
								<div class="item"><img src="img3/slider3.jpg" alt="" class="img-fluid"></div>
								<div class="item"><img src="img3/slider4.jpg" alt="" class="img-fluid"></div>
							</div>

						</div>
					</div>
				</div>
				<!--
        *** ADVANTAGES HOMEPAGE ***
        _________________________________________________________
        -->
				<div id="advantages">
					<div class="container">
						<div class="row mb-4">
							<div class="col-md-4">
								<div class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
									<div class="icon"><i class="fa fa-heart"></i></div>
									<h3><a href="javascript:;">防疫小贴士1</a></h3>
									<p class="mb-0">强防护、不恐慌，信科学、不传谣。</p>
								</div>
							</div>
							<div class="col-md-4">
								<div class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
									<div class="icon"><i class="fa fa-tags"></i></div>
									<h3><a href="javascript:;">防疫小贴士2</a></h3>
									<p class="mb-0">依法科学有序防控，坚决遏制疫情扩散。</p>
								</div>
							</div>
							<div class="col-md-4">
								<div class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
									<div class="icon"><i class="fa fa-thumbs-up"></i></div>
									<h3><a href="javascript:;">防疫小贴士3</a></h3>
									<p class="mb-0">戴口罩，福星高照；不串门，福气临门!</p>
								</div>
							</div>
						</div>
						<!-- /.row-->
					</div>
					<!-- /.container-->
				</div>
				<!-- /#advantages-->
				<!--
        *** HOT PRODUCT SLIDESHOW ***
        _________________________________________________________
        -->
				<div id="hot">
					<div class="box py-4">
						<div class="container">
							<div class="row">
								<div class="col-md-12">
									<h2 class="mb-0">抗疫英雄人物</h2>
								</div>
							</div>
						</div>
					</div>
					<div class="container">
						<div class="product-slider owl-carousel owl-theme">
							<div class="item">
								<div class="product">
									<div class="flip-container">
										<div class="flipper">
											<div class="front"><img src="img/liwenliang.jpg" alt="李文亮" class="img-fluid"></div>
											<div class="back"><img src="img/liwenliang.jpg" alt="李文亮" class="img-fluid"></div>
										</div>
									</div><img src="img/liwenliang.jpg" alt="李文亮" class="img-fluid">
									<div class="text">
										<h3>李文亮</h3>
										<p class="price">
											不该离去的吹哨人
										</p>
									</div>
									<!-- /.text-->
								</div>
								<!-- /.product-->
							</div>
							<div class="item">
								<div class="product">
									<div class="flip-container">
										<div class="flipper">
											<div class="front"><img src="img/zhongnanshan.jpg" alt="终南山" class="img-fluid"></div>
											<div class="back"><img src="img/zhongnanshan.jpg" alt="终南山" class="img-fluid"></div>
										</div>
									</div><img src="img/zhongnanshan.jpg" alt="终南山" class="img-fluid">
									<div class="text">
										<h3>终南山院士</h3>
										<p class="price">
											无畏的抗疫先锋
										</p>
									</div>
									<!-- /.text-->
								</div>
								<!-- /.product-->
							</div>
							<div class="item">
								<div class="product">
									<div class="flip-container">
										<div class="flipper">
											<div class="front"><img src="img/lilanjuan.jpg" alt="李兰娟" class="img-fluid"></div>
											<div class="back"><img src="img/lilanjuan.jpg" alt="李兰娟" class="img-fluid"></div>
										</div>
									</div><img src="img/lilanjuan.jpg" alt="李兰娟" class="img-fluid">
									<div class="text">
										<h3>李兰娟院士</h3>
										<p class="price">
											勇敢的巾帼英雄
										</p>
									</div>
									<!-- /.text-->
								</div>
								<!-- /.product-->
							</div>
							<div class="item">
								<div class="product">
									<div class="flip-container">
										<div class="flipper">
											<div class="front"><img src="img/zhangwenhong.jpg" alt="张文宏" class="img-fluid"></div>
											<div class="back"><img src="img/zhangwenhong.jpg" alt="张文宏" class="img-fluid"></div>
										</div>
									</div><img src="img/zhangwenhong.jpg" alt="张文宏" class="img-fluid">
									<div class="text">
										<h3>张文宏</h3>
										<p class="price">
											“最硬核”医生
										</p>
									</div>
									<!-- /.text-->
								</div>
								<!-- /.product-->
							</div>
							<div class="item">
								<div class="product">
									<div class="flip-container">
										<div class="flipper">
											<div class="front"><img src="img/zhangdingyu.jpg" alt="张定于" class="img-fluid"></div>
											<div class="back"><img src="img/zhangdingyu.jpg" alt="张定于" class="img-fluid"></div>
										</div>
									</div><img src="img/zhangdingyu.jpg" alt="张定于" class="img-fluid">
									<div class="text">
										<h3>张定于院长</h3>
										<p class="price">
											疫情中的绝境医生
										</p>
									</div>
									<!-- /.text-->
									<div class="ribbon new">

										<div class="ribbon-background"></div>
									</div>
									<!-- /.ribbon-->
								</div>
								<!-- /.product-->
							</div>
							<!-- /.product-slider-->
						</div>
						<!-- /.container-->
					</div>
					<!-- /#hot-->
					<!-- *** HOT END ***-->
				</div>

				<!--
        *** BLOG HOMEPAGE ***
        _________________________________________________________
        -->
				<div class="box text-center">
					<div class="container">
						<div class="col-md-12">
							<h3 class="text-uppercase">精选用户留言</h3>
							<p class="lead mb-0"> 为疫区人员祈福，向医护人员致敬。 </p>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="col-md-12">
						<div id="blog-homepage" class="row">
							<div class="col-sm-6">
								<div class="post">
									<h4>致白衣天使们</h4>
									<p class="author-category">用户： <strong>龙龙龙龙。</strong></p>
									<hr>
									<p class="intro">&emsp;&emsp;从感染到发作需要一段时间，每位病人来到你们面前，都是带着健康的渴望，与病毒作战。认真接收每一名病人，从检查到治疗，每一个环节都认真、一丝不苟。尤其是ICU病房，与死神作战，让每位病人生还，战胜死神，面对病毒的纠缠，决不手软，为你们点赞。</p>

								</div>
							</div>
							<div class="col-sm-6">
								<div class="post">
									<h4><a href="post.jsp">致援鄂医疗队</a></h4>
									<p class="author-category">用户： <strong>中华小当家</strong></p>
									<hr>
									<p class="intro">&emsp;&emsp;幸得有您，山河无恙。援鄂医疗队扛着红色党旗，身披白色战袍，怀揣赤子之心，牢记党和人民的重托，不畏困难砥砺前行，不辱使命战胜疫情，<英勇奋战在疫情防></英勇奋战在疫情防>控战场。时代需要英雄，时势造就英雄，他们就是这个时代最伟大的英雄。致敬，逆行者；致敬，时代英雄！</p>

								</div>
							</div>
						</div>
						<!-- /#blog-homepage-->
					</div>
				</div>
				<!-- /.container-->
				<!-- *** BLOG HOMEPAGE END ***-->
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
