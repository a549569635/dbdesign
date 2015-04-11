<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Inbox.aspx.cs" Inherits="MailInbox" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>海云天公司内部管理系统——首页</title>
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
    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
        
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
                    <a class="navbar-brand" href="/Default.aspx">海云天</a>
				</div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="#">后台入口</a></li>
                        <li><a href="#">经理入口</a></li>
                        <li><a href="#">考勤操作</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><p class="navbar-text" style="margin-left: 5px">你好，<a href="/User/Usercenter.aspx">何钰童</a></p></li>
                        <li><a href="/User/Logout.aspx.cs">退出登录</a></li>
                        <li><a href="/Help.aspx">帮助</a></li>
                    </ul>
                </div>
			</div>
		</nav>
        
<!--主要部分-->
        <div class="container">
            <div class="row" style="min-height: 700px">
<!--左侧边栏-->
                <div class="col-md-3">
                    <div class="jumbotron" style="padding: 16px">
                        <h4 style="margin-top: 0">个人资料</h4>
                        <asp:imagebutton runat="server" ID="img_portrait" src="头像-default.png" alt="用户头像" class="img-thumbnail media-middle"  style="height: 130px; width: 100px; display: block; margin: 16px auto"/>
                        <div class="caption">
                            <dl class="dl-horizontal">
                                <dt style="width: 52px">姓名：</dt>
                                <dd style="margin-left: 64px">何钰童</dd>
                                <dt style="width: 52px">ID：</dt>
                                <dd style="margin-left: 64px">201300130018</dd>
                                <dt style="width: 52px">职务：</dt>
                                <dd style="margin-left: 64px">销售部 实习业务员</dd>
                            </dl>
                        </div>
                    </div>
                    <div class="panel panel-default" style="padding: 4px">
                        <ul class="nav nav-pills nav-stacked">
                            <li role="presentation">
                                <a href="/Default.aspx">首页</a>
                            </li>
                            <li role="presentation">
                                <a href="/Notice/Notice.aspx">公文公告</a>
                            </li>
                            <li role="presentation">
                                <a href="/Mail/Mail.aspx">信箱</a>
                            </li>
                            <li role="presentation">
                                <a href="/Mail/Write.aspx" style="margin-left: 16px">写信</a>
                            </li>
                            <li role="presentation">
                                <a href="/Mail/Drafts.aspx" style="margin-left: 16px">
                                    草稿箱<span class="badge pull-right"><% Response.Write(spanDrafts); %></span>
                                </a>
                            </li>
                            <li role="presentation">
                                <a href="/Mail/Inbox.aspx" style="margin-left: 16px">
                                    收件箱<span class="badge pull-right"><%Response.Write(spanInbox); %></span>
                                </a>
                            </li>
                            <li role="presentation" class="active">
                                <a href="/Mail/Sent.aspx" style="margin-left: 16px">发件箱</a>
                            </li>
                            <li role="presentation">
                                <a href="/User/Addbook.aspx">通讯录</a>
                            </li>
                        </ul>
                    </div>
                </div>
<!--右侧部分-->
                <div class="col-md-9" style="min-height: 700px">
                <asp:UpdatePanel ID="mainPanel" runat="server">
                <ContentTemplate>
                    <asp:Panel class="panel panel-default" runat="server" ID="panel_Inbox" style="min-height: 700px">
                        <div class="panel-heading">
                            <h3 class="panel-title">收件箱</h3>
                        </div>
                        <div class="panel-body">
                            
                        </div>
                    </asp:Panel>
                </ContentTemplate>
                </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </form>
    <footer class="footer" style="margin-top: 32px; width: 100%; min-height: 60px; border-top: 2px solid #c0c0c0">
        <div class="container">
            <p style="margin: 20px 0">Copyright © 2015 海云天 ihyt.net All Rights Reversed.</p>
        </div>
    </footer>
</body>
</html>