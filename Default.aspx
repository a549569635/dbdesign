<%@ Page MasterPageFile="/Master.master" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    <title>海云天公司内部管理系统——首页</title>
</asp:Content>

<asp:Content ContentPlaceHolderID="content" runat="server">
            <asp:ScriptManager runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="mainPanel" runat="server">
                <ContentTemplate>
                    <asp:Panel class="panel panel-default" runat="server" ID="panel_Home" style="min-height: 700px">
                        <div class="panel-heading">
                            <h3 class="panel-title">首页</h3>
                        </div>
                        <div class="panel-body">
                            
                        </div>
                    </asp:Panel>
                </ContentTemplate>
                </asp:UpdatePanel>
        </asp:Content>