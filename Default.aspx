<%@ Page MasterPageFile="~/Master.master" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<%@ MasterType VirtualPath="~/Master.master" %>
<%@ Register Src="~/UCTabDefault.ascx" TagPrefix="uc1" TagName="UCTabDefault" %>

<asp:Content runat="server" ContentPlaceHolderID="contentTab">
    <uc1:UCTabDefault runat="server" ID="UCTabDefault" />
</asp:Content>

<asp:Content ContentPlaceHolderID="content" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="mainPanel" runat="server">
        <ContentTemplate>
            <div class="panel panel-default pane-content">
                <div class="panel-heading">
                    <h3 class="panel-title">首页</h3>
                </div>
                <div class="panel-body">
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
