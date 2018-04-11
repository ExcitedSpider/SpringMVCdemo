<%--
  Created by IntelliJ IDEA.
  User: 冯秋翼
  Date: 2018/4/9
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>添加书籍</title>
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
        .sub-main-w3 {
        width: 60%;
        margin:auto;
        -webkit-box-shadow: 0px 0px 20px 0px rgba(0,0,0,0.75);
        -moz-box-shadow: 0px 0px 20px 0px rgba(0,0,0,0.75);
        box-shadow: 0px 0px 20px 0px rgba(0,0,0,0.75);
        padding: 50px;
        }
        .sub-main-W3 h2 {
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
        .right-w3l button {
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
        .right-w3l button:hover {
        background: #000;
        -webkit-transition: 0.5s all;
        -o-transition: 0.5s all;
        -moz-transition: 0.5s all;
        -ms-transition: 0.5s all;
        transition: 0.5s all;
        }
        .sub-w3l a {
        float: right;
        font-size: .9em;
        color: #fff;
        letter-spacing: 1px;
        }
        table.gridtable {
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
                <div class="sub-main-w3">
                    <form action="add_book_action" method="post" name="add_book_form">
                        <table border="1 " bgcolor="aqua" align="center" class="gridtable">
                            <tr>
                                <td>书名:</td><td><input class="textSize" type="text" name="bname"></td>
                            </tr>
                            <tr>
                                <td>作者:</td><td><input class="textSize" type="text" name="author"></td>
                            </tr>
                            <tr>
                                <td>出版社:</td><td><input class="textSize" type="text" name="publisher"></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center" ><button type="submit" >添加</button></td>
                            </tr>
                        </table>
                    </form>
                    <%--这个地方不太确定--%>
                    <a href="/admin/index"><button>返回</button></a>
                </div>
            </div>
            <!--//main-->
            <!--footer-->
            <!--//footer-->
        </div>

    <!--<form action="add_book_action" method="post" name="add_book_form">
        <table border="1 " bgcolor="aqua" align="center">
            <tr>
                <td>书名:</td><td><input class="textSize" type="text" name="bname"></td>
            </tr>

            <tr>
                <td>作者:</td><td><input class="textSize" type="text" name="author"></td>
            </tr>

            <tr>
                <td>出版社:</td><td><input class="textSize" type="text" name="publisher"></td>
            </tr>
            <tr>
                <td colspan="2" align="center" ><button type="submit" >添加</button></td>
            </tr>
        </table>
    </form>
<a href="index">返回</a> -->
</body>
</html>
