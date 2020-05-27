
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>用户登录</title>
	
	<%@ include file="common/base.jsp"%>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>

	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Bootstrap CSS-->
	<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
	<style type="text/css">
		#yanzheng{
			vertical-align: middle;
			width: 190px;
		}
		img{
			vertical-align: middle;
			width: 100px;
			height: 40px;
			float: right;
			margin-bottom: 20px;
			margin-top: 1px;
		}
	</style>

</head>
<body>

<div class="main">

	<h1 hidden>   登录/注册</h1>
	<div class="w3_login">
		<div class="w3_login_module">
			<div class="module form-module">
				<div class="toggle">
					<i class="fa fa-times fa-pencil"></i>
					<div class="tooltip">点击切换</div>
				</div>
				<div class="form">
					<h2>登录账号</h2>
					<form action="userServlet" method="post">
						<input type="hidden" name="action" value="login" />
						<input type="text" name="username" placeholder="用户名" value="${requestScope.loginUsername}"/>
						<input type="password" name="password" placeholder="密码" />
						<span id="loginError" style="color: #ff2035">
							${empty requestScope.errorMsg ?"":requestScope.errorMsg}
						</span>
						<input type="submit" value="登录" />
					</form>
				</div>
				<div class="form">
					<h2>创建一个账号</h2>
					<form action="userServlet" method="post">
						<input type="hidden" name="action" value="regist" />
						<input type="text" name="username" placeholder="用户名" required=" " value="${requestScope.loginUsername}"/>
						<input type="password" name="password" placeholder="密码" required=" " />
						<input type="password" name="genpassword" placeholder="确认密码" required=""/>
						<input type="email" name="email" placeholder="Email" required=" " />
						<input type="text" name="phone" placeholder="电话" required=" " />
						<input type="text" name="nickname" placeholder="昵称" value=""/>
						<div class="row">
							<div class="col-md-6">
								<input id="yanzheng" type="text" name="itxt" placeholder="验证码"/>
							</div>
							<div class="col-md-6">
								<img id="code_img" src="kaptcha.jpg" alt="yanzhengma">
							</div>
						</div>

						<span id="registError" style="color: #ff2035">
                            &nbsp; &nbsp;${empty requestScope.msg ?"":requestScope.msg}
                        </span>
						<input type="submit" value="注册" />
					</form>
				</div>
				<div class="cta"></div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
$('.toggle').click(function(){
	$(this).children('i').toggleClass('fa-pencil');
	$('.form').animate({height: "toggle",'padding-top': 'toggle','padding-bottom': 'toggle',opacity: "toggle"}, "slow");
});
</script>
<script type="text/javascript">
	$(function () {
		//验证码单击事件
		$("#code_img").click(function () {
			this.src = "${bathPath}kaptcha.jpg?d=" + new Date();
		})
	})
</script>
</body>
</html>