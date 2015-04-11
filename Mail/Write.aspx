<%@ Page MasterPageFile="/Master.master" Language="C#" AutoEventWireup="true" CodeFile="Write.aspx.cs" Inherits="MailWrite" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    <title>写信</title>
</asp:Content>

<asp:Content ContentPlaceHolderID="content" runat="server">
    <!--主要部分-->
    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="mainPanel" runat="server">
        <ContentTemplate>
            <asp:Panel class="panel panel-default" runat="server" ID="panel_Write" Style="min-height: 700px">
                <div class="panel-heading">
                    <h3 class="panel-title">写信</h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <label>收件人员工号：</label>
                        <asp:TextBox ID="toID" runat="server" OnTextChanged="toID_Check"  AutoPostBack="true" required autofocus></asp:TextBox>
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
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

