<%--
  Created by IntelliJ IDEA.
  User: 冯秋翼
  Date: 2018/4/9
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>搜索书籍</title>
    <title>搜索书籍</title>
    <script>
        //注册时检查输入项
        function allIsNull(){
            var bname = document.delete_book_action.bname.value;
            if(bname=="")
            {
                alert("请输入书名!");
                document.delete_book_action.bname.focus();
                return false;
            }
            document.delete_book_action.submit();
            return true;
        }
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
    <style type="text/css">
        body {
            font-family: 'Open Sans', sans-serif;
        }
        .video-w3l {
            padding: 0;
            background: rgba(0, 0, 0, 0.28);
            min-height:1200px;
            display: grid;
        }
        /*-- header --*/
        .header-w3l {
            padding-top: 2em;
        }
        .header-w3l h1 {
            font-size: 3.5em;
            color: #fff;
            letter-spacing: 10px;
            font-weight: 300;
            text-align: center;
            text-shadow: 4px 5px 8px #101010;
            font-style: italic;
        }
        .header-w3l h1 span {
            color: #FF5722;
        }
        /*-- //header --*/
        /*-- main --*/
        .sub-main {
            width: 60%;
            margin:auto;
            -webkit-box-shadow: 0px 0px 20px 0px rgba(0,0,0,0.75);
            -moz-box-shadow: 0px 0px 20px 0px rgba(0,0,0,0.75);
            box-shadow: 0px 0px 20px 0px rgba(0,0,0,0.75);
            padding: 50px;
        }
        .sub-main h2 {
            color: #fff;
            font-size: 1.8em;
            letter-spacing: 1px;
            margin-bottom: 1em;
            text-align: center;
            font-weight: 500;
            font-style: italic;
        }
        .sub-main-w3 i {
            margin-left: 10px;
        }
        .pom-agile {
            padding: 11px 15px;
            background: #fff;
            margin-bottom: 23px;
            border: 1px solid #060606;
        }
        .pom-agile input[type="text"], .pom-agile input[type="password"] {
            outline: none;
            font-size: .9em;
            border: none;
            background: transparent;
            width: 93%;
            color: #000;
            font-family: 'Open Sans', sans-serif;
            letter-spacing: 1px;
        }
        .right-w3l input[type="submit"] {
            color: #fff;
            background: #FF5722;
            border: none;
            padding: 12px 58px;
            margin-top: 30px;
            outline: none;
            text-transform: uppercase;
            font-size: .9em;
            cursor: pointer;
            letter-spacing: 1px;
            font-family: 'Open Sans', sans-serif;
            -webkit-transition: 0.5s all;
            -o-transition: 0.5s all;
            -moz-transition: 0.5s all;
            -ms-transition: 0.5s all;
            transition: 0.5s all;
        }
        .right-w3l input[type="submit"]:hover {
            background: #000;
            -webkit-transition: 0.5s all;
            -o-transition: 0.5s all;
            -moz-transition: 0.5s all;
            -ms-transition: 0.5s all;
            transition: 0.5s all;
        }
        .bar6 {background: #F9F0DA;}
        .bar6 input {
            border: 2px solid #c5464a;
            border-radius: 5px;
            background: transparent;
            top: 0;
            right: 0;
        }
        .bar6 button {
            background: #c5464a;
            border-radius: 0 5px 5px 0;
            width: 60px;
            top: 0;
            right: 0;
        }
        .bar6 button:before {
            content: "搜索";
            font-size: 13px;
            color: #F9F0DA;
        }
    </style>
    <!-- Font-Awesome-Icons-CSS -->
    <!-- //css files -->
    <!-- web-fonts -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <!-- //web-fonts -->
</head>
<body>
<div class="video-w3l" style="background-image: url(/images/back.jpg);">
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
        <div class="sub-main">
            <div class="search bar6">
                <form action="/admin/delete_book_search_action" method="post" name="delete_book_action">
                    <input class="textSize" type="text" name="bname" value="请输入要删除的书籍">
                    <input type="button" value="查询书籍" onclick="allIsNull()" />
                </form>
            </div>
            <c:forEach var="book" items="${booklist}">
                <tr>
                    <td>ID  <c:out value="${book.id}"/></td><td>name <c:out value="${book.bname}"/></td><td>author <c:out value="${book.author}" /></td><td><c:out value="${book.publisher}" /></td>
                    <form action="/admin/delete_book_action" method="post" name="borrowbook" >
                            <%--<button value="${book.id}" type="submit" name="id"  >借书</button>--%>
                        <td>"${book.borrower}"</td> <button value="${book.id}" type="submit" name="id"  >删除</button>
                    </form>
                </tr>
            </c:forEach>
    <a href="/admin/index"><button>返回</button></a>
</body>
</html>