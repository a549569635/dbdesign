<%@ Page MasterPageFile="~/Master.master" Language="C#" AutoEventWireup="true" CodeFile="Write.aspx.cs" Inherits="Mail.MailWrite" %>
<%@ MasterType VirtualPath="~/Master.master" %>
<%@ Register Src="~/UCTabDefault.ascx" TagPrefix="uc1" TagName="UCTabDefault" %>


<asp:Content runat="server" ContentPlaceHolderID="contentTab">
    <uc1:UCTabDefault runat="server" ID="UCTabDefault" />
</asp:Content>

<asp:Content ContentPlaceHolderID="content" runat="server">
    <!--主要部分-->
    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="mainPanel" runat="server">
        <ContentTemplate>
            <div class="panel panel-default pane-content">
                <div class="panel-heading">
                    <h3 class="panel-title">写信</h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <label>收件人员工号：</label>
                        <asp:TextBox ID="toID" runat="server" OnTextChanged="toID_Check"  AutoPostBack="true" autofocus></asp:TextBox>
                        <asp:Label ID="toID_Tip" runat="server" Text="" Visible="False"/>
                    </div>
                    <div class="row">
                        <label>标题：</label>
                        <asp:TextBox ID="mesTitle" runat="server"/>
                        <asp:Label ID="mesTitle_Tip" runat="server" Text="" Visible="False"/>
                    </div>
                    <div class="row">
                        <label>正文：</label>
                        <asp:TextBox ID="mesContent" runat="server"/>
                    </div>
                    <div class="row">
                        <label>附件：</label>
                        <div class="row">
                            <div class="row">
                                <asp:Label ID="attachName" runat="server" Text=""/>
                            </div>
                            <div class="row">
                                <asp:FileUpload ID="attachUpload" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <asp:Button ID="submit" runat="server" Text="发送" Enabled="False"/>
                        <asp:Button ID="reset" runat="server" Text="重置" />
                        <asp:Button ID="saveDraft" runat="server" Text="保存草稿" />
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

