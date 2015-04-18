<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UCTabManager.ascx.cs" Inherits="Manager_UCTabManager" %>
<div class="panel panel-default" style="padding: 4px">
    <ul class="nav nav-pills nav-stacked">
        <li role="presentation" <%= Request.RawUrl.ToLower().Contains("mail.aspx")?"class=\"active\"":""%>>
            <a href="/Mail/Mail.aspx">部员管理</a>
        </li>
        <li role="presentation" <%= Request.RawUrl.ToLower().Contains("write.aspx")?"class=\"active\"":""%>>
            <a href="/Mail/Write.aspx" style="margin-left: 16px">奖金发放</a>
        </li>
        <li role="presentation" <%= Request.RawUrl.ToLower().Contains("leaverequest.aspx")?"class=\"active\"":""%>>
            <a href="/Manager/Leaverequest.aspx" style="margin-left: 16px">
                请假审批<span class="badge pull-right">2</span>
            </a>
        </li>
        <li role="presentation" <%= Request.RawUrl.ToLower().Contains("sent.aspx")?"class=\"active\"":""%>>
            <a href="/Mail/Sent.aspx" style="margin-left: 16px">查看考勤</a>
        </li>
        <li role="presentation" <%= Request.RawUrl.ToLower().Contains("notice.aspx")?"class=\"active\"":""%>>
            <a href="/Notice/Notice.aspx">公告管理</a>
        </li>
        <li role="presentation" <%= Request.RawUrl.ToLower().Contains("write.aspx")?"class=\"active\"":""%>>
            <a href="/Mail/Write.aspx" style="margin-left: 16px">发布公告</a>
        </li>
        <li role="presentation" <%= Request.RawUrl.ToLower().Contains("addbook.aspx")?"class=\"active\"":""%>>
            <a href="/User/Addbook.aspx">职务管理</a>
        </li>
        <li role="presentation" <%= Request.RawUrl.ToLower().Contains("inbox.aspx")?"class=\"active\"":""%>>
            <a href="/Mail/Inbox.aspx" style="margin-left: 16px">新增职务</a>
        </li>
        <li role="presentation" <%= Request.RawUrl.ToLower().Contains("default.aspx")?"class=\"active\"":""%>>
            <a href="/Default.aspx">部门管理</a>
        </li>
    </ul>
</div>