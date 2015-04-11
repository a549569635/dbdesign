<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Usercenter.aspx.cs" Inherits="Usercenter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人中心</title>
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
        
<!--顶部导航栏-->
		<nav class="navbar navbar-default navbar-static-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
					</button>
                    <a class="navbar-brand" href="default.aspx">海云天</a>
				</div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="#">后台入口</a></li>
                        <li><a href="#">经理入口</a></li>
                        <li><a href="#">考勤操作</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><p class="navbar-text">你好，<a href="/User/Usercenter.aspx">何钰童</a></p></li>
                        <li><a href="logout.aspx">退出登录</a></li>
                        <li><a href="help.aspx">帮助</a></li>
                    </ul>
                </div>
			</div>
		</nav>

<!--主要部分-->
        <div class="container">
            <div class="row">
<!--右侧边栏-->
                <div class="col-md-3">
                    <div class="jumbotron">
                        <p>
                            <h2>个人资料</h2>
                        </p>
                    </div>
                </div>
<!--左侧部分-->
                <div class="col-md-9">
                    
                </div>
            </div>
        </div>
    </form>
</body>
</html>
