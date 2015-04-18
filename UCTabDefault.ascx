<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UCTabDefault.ascx.cs" Inherits="UCTabDefault" %>

<div class="panel panel-default" style="padding: 4px">
    <ul class="nav nav-pills nav-stacked">
        <li role="presentation" <%= Request.RawUrl.ToLower().Contains("default.aspx")?"class=\"active\"":""%>>
            <a href="/Default.aspx">首页</a>
        </li>
        <li role="presentation" <%= Request.RawUrl.ToLower().Contains("notice.aspx")?"class=\"active\"":""%>>
            <a href="/Notice/Notice.aspx">公文公告</a>
        </li>
        <li role="presentation" <%= Request.RawUrl.ToLower().Contains("mail.aspx")?"class=\"active\"":""%>>
            <a href="/Mail/Mail.aspx">信箱</a>
        </li>
        <li role="presentation" <%= Request.RawUrl.ToLower().Contains("write.aspx")?"class=\"active\"":""%>>
            <a href="/Mail/Write.aspx" style="margin-left: 16px">写信</a>
        </li>
        <li role="presentation" <%= Request.RawUrl.ToLower().Contains("drafts.aspx")?"class=\"active\"":""%>>
            <a href="/Mail/Drafts.aspx" style="margin-left: 16px">草稿箱<span class="badge pull-right"><% Response.Write(SpanDrafts); %></span>
            </a>
        </li>
        <li role="presentation" <%= Request.RawUrl.ToLower().Contains("inbox.aspx")?"class=\"active\"":""%>>
            <a href="/Mail/Inbox.aspx" style="margin-left: 16px">收件箱<span class="badge pull-right"><%Response.Write(SpanInbox); %></span>
            </a>
        </li>
        <li role="presentation" <%= Request.RawUrl.ToLower().Contains("sent.aspx")?"class=\"active\"":""%>>
            <a href="/Mail/Sent.aspx" style="margin-left: 16px">发件箱</a>
        </li>
        <li role="presentation" <%= Request.RawUrl.ToLower().Contains("addbook.aspx")?"class=\"active\"":""%>>
            <a href="/User/Addbook.aspx">通讯录</a>
        </li>
    </ul>
</div>
