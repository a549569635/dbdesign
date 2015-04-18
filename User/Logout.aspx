<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="User.Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>退出登录</title>
    <link rel="shortcut icon" href="/favico.ico" />
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/default.css" />
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script>
        var time = 5;

        window.onload = function countback() {
            setInterval(function() { setText() }, 1000);
        }

        function setText() {
            if (time == 0) {
                clearInterval();
                window.location.href = "/User/Login.aspx";
            } else {
                time--;
                document.getElementById("time").innerHTML = time;
            }
        }
    </script>
</head>
<body>
    <nav class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="/Default.aspx">海云天</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/Help.aspx">帮助</a></li>
            </ul>
        </div>
    </nav>
    <div class="container">
        <div class="jumbotron">
            <h2>您已成功退出登录！</h2>
            <p>网页将在<mark id="time">5</mark>秒钟后自动跳转到登陆页面，如未自动跳转，请点击下方按钮</p>
            <p><a class="btn btn-lg btn-primary" href="/User/Login.aspx/">前往登录 &raquo;</a></p>
        </div>
    </div>
    <footer class="footer">
        <div class="container">
            <p class="footer-text">Copyright © 2015 海云天 ihyt.net All Rights Reversed.</p>
        </div>
    </footer>
</body>
</html>
