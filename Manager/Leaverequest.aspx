<%@ Page MasterPageFile="~/Master.master" Language="C#" AutoEventWireup="true" CodeFile="Leaverequest.aspx.cs" Inherits="Manager_Leaverequest" %>

<%@ MasterType VirtualPath="~/Master.master" %>
<%@ Register Src="~/Manager/UCTabManager.ascx" TagPrefix="uc1" TagName="UCTabManager" %>

<asp:Content runat="server" ContentPlaceHolderID="contentTab">
    <uc1:UCTabManager runat="server" ID="UCTabManager" />
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conStr %>" SelectCommand="SELECT * FROM [leaverequest] WHERE ([mgrid] = @mgrid) ORDER BY [leaveid] DESC">
        <SelectParameters>
            <asp:SessionParameter Name="mgrid" SessionField="loginID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <asp:UpdatePanel ID="mainPanel" runat="server">
        <ContentTemplate>
            <div class="panel panel-default pane-content">
                <div class="panel-heading">
                    <h3 class="panel-title">请假审批</h3>
                </div>
                <div class="panel-body">
                    <asp:GridView ID="GridView" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="leaveid" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="leaveid" HeaderText="leaveid" SortExpression="leaveid" InsertVisible="False" ReadOnly="True" >
                                
                            </asp:BoundField>
                            <asp:BoundField DataField="empid" HeaderText="empid" SortExpression="empid" />
                            <asp:BoundField DataField="mgrid" HeaderText="mgrid" SortExpression="mgrid" />
                            <asp:BoundField DataField="reason" HeaderText="reason" SortExpression="reason" />
                            <asp:BoundField DataField="subtime" HeaderText="subtime" SortExpression="subtime" />
                            <asp:BoundField DataField="starttime" HeaderText="starttime" SortExpression="starttime" >
                            </asp:BoundField>
                            <asp:BoundField DataField="endtime" HeaderText="endtime" SortExpression="endtime" >
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="approved" HeaderText="approved" SortExpression="approved">
                            </asp:CheckBoxField>
                            <asp:BoundField DataField="approvaltime" HeaderText="approvaltime" SortExpression="approvaltime" >
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
