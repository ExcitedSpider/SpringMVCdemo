<%--
  Created by IntelliJ IDEA.
  User: Ginger
  Date: 2018/3/31
  Time: 22:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
	<title>首页</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Effective Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Meta tag Keywords -->
	<!-- css files -->
	<%--<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />--%>
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="css/font-awesome.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //web-fonts -->
</head>

<body>
	<div class="video-w3l" data-vide-bg="video/1">
		<!--header-->
		<div class="header-w3l">
			<h1>
				<span>B</span>ooks
				<span>M</span>anagement
				<span>S</span>ystem
			</h1>
		</div>
		<!--//header-->
		<div class="main-content-agile">
			<div class="sub-main-w3">
				<h2>Welcome!</h2>
                    <div class="right-w3l" align="center">
                        <a href="/login" ><button>登陆</button></a>
                    </div>
					<div class="right-w3l" align="center">
                        <a href="/register" ><button>注册</button></a>
					</div>
				<div class="right-w3l" align="center">
					<a href="/admin/index" ><button>管理员登陆</button></a>
				</div>
			</div>
		</div>
		<!--//main-->
		<!--footer-->
		<div class="footer">
			<p>Made by 姜文玉|林权波|刘昊洋|陈国鑫|喻磊|商一帆|冯秋翼|张睦婕
			</p>
		</div>
		<!--//footer-->
	</div>

	<!-- js -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/jquery.vide.min.js"></script>
	<!-- //js -->

</body>
</html>
