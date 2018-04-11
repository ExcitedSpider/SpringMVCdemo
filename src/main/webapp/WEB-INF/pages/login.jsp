<%--
  Created by IntelliJ IDEA.
  User: Ginger
  Date: 2018/3/31
  Time: 22:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>登录界面</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Effective Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"/>
	 
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<script type="text/javascript">
        //注册时检查输入项
        function allIsNull(){
            var name = document.registerForm.uname.value;
            var pwd = document.registerForm.upass.value;

            if(name=="")
            {
                alert("请输入姓名!");
                document.registerForm.uname.focus();
                return false;
            }
            if(pwd=="")
            {
                alert("请输入密码!");
                document.registerForm.upass.focus();
                return false;
            }

            document.registerForm.submit();
            return true;
        }

    </script>
	<!-- Meta tag Keywords -->
	<!-- css files -->
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
				<h2>Login Here</h2>
				<form action="login" method="get" name="registerForm" >
					<div class="pom-agile">
						<span class="fa fa-user-o" aria-hidden="true"></span>
						<input placeholder="Username" class="user" name="uname" value="${uname}" type="text" required="">
					</div>
					<div class="pom-agile">
                        <span class="fa fa-key" aria-hidden="true"></span>
                        <%--判断是否要记住密码--%>
                        <%--<c:if  test="${book.borrower == -1 }">--%>
                            <%--<button value="${remember}" type="submit" name="id"  >借书</button>--%>
                        <%--</c:if>--%>
						<%--<c:if  test="${remember} == null " >--%>
                            <%--<input placeholder="Password" class="pass" type="password" maxlength="20" name="upass" value="显示" required="">--%>
                        <%--</c:if>--%>
						<input placeholder="Password" class="pass" type="password" maxlength="20" name="upass"  required="">
					</div>
					<div class="sub-w3l">
						<div class="sub-agile">
							<input type="checkbox" id="brand1" value="true" name="remember">
							<label for="brand1">
								<span></span>Remember me</label>
						</div>
						<a href="https://1-riverfish.github.io">Forgot Password?</a>
						<div class="clear"></div>
					</div>
					<div class="right-w3l">
						<input type="submit" value="Log in" onclick="allIsNull()" />
					</div>
				</form>
			</div>
		</div>
		<!--//main-->
		
		<!--//footer-->
	</div>

	<!-- js -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/jquery.vide.min.js"></script>
	<!-- //js -->

</body>
</html>
