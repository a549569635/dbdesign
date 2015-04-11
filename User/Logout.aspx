<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!--自动跳转到登录页-->
    <meta http-equiv="refresh" content="10;url=https://secure.ihyt.net/login.aspx/">
    <title>退出登录</title>
    <link rel="shortcut icon" href="favico.ico" />
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
    <script src="http://cdn.bootcss.com/jquery/2.1.3/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <style type="text/css">
		  body {font-family:'Microsoft Yahei UI','Microsoft YaHei',SimHei,sans-serif;}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="Default.aspx">海云天</a>
                </div>
               <ul class="nav navbar-nav navbar-right">
                    <li><a href="help.aspx">帮助</a></li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <div class="jumbotron">
                <h2>您已成功退出登录！</h2>
                <p>网页将在10秒钟后自动跳转到登陆页面，如未自动跳转，请点击下方按钮</p>
                <p><a class="btn btn-lg btn-primary" href="https://secure.ihyt.net/login.aspx/">前往登录 &raquo;</a></p>
            </div>
        </div>
    </form>
</body>
</html>
