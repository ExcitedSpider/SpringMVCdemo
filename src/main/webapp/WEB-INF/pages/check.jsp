<%--
  Created by IntelliJ IDEA.
  User: Ginger
  Date: 2018/4/5
  Time: 22:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
		<title>查看借阅书籍</title>
		<style type="text/css">
			table.gridtable
					{
					font-family: verdana,arial,sans-serif;
					font-size:11px;
					color:#333333;
					border-width: 1px;
					border-color: #666666;
					border-collapse: collapse;
					}
			table.gridtable th {
					border-width: 1px;
					padding: 8px;
					border-style: solid;
					border-color: #666666;
					background-color: #dedede;
					}
			table.gridtable td {
					border-width: 1px;
					padding: 8px;
					border-style: solid;
					border-color: #666666;
					background-color: #ffffff;
					}
		</style>
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
		<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
		<!-- Style-CSS -->
		<link rel="stylesheet" href="css/font-awesome.css">
		<!-- Font-Awesome-Icons-CSS -->
		<!-- //css files -->
		<!-- web-fonts -->
		<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
		<!-- //web-fonts -->
	</head>
	<body style="background-image: url(/images/back.jpg);">
		<div class="video-w3l">
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
				<div class="sub-main" align="center">
						<c:forEach var="book" items="${booklist}">
						<td><td>  ID:  <c:out value="${book.id}"/></td><td> name:  <c:out value="${book.bname}"/></td><td> author:  <c:out value="${book.author}" /></td><td> ddl: <c:out value="${book.dueDate}" /></td>
						<td style="display: inline-block;">
							<form action="/book/return" method="get" name="checkbook" >
								<%--返回book实例--%>
							<button value="${book.id}" type="submit" name="id"  >还书</button>
							</form>
						</td></tr>
						</c:forEach>
					<div><a href="/home">返回</a></div>
				</div>
			</div>
			<!--//main-->
			<!--footer-->
			<div class="footer">
				<p>
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
