<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_SCST_Grievance_Redressal.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />
<br />
<form runat="server">
<div class="table-responsive">
    <asp:GridView ID="gridview_scst_grievance_redressal" runat="server" CssClass="table table-striped table-bordered table-hover" 
 
        AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="complain_id" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None" PageSize="10" Width="100%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="complain_id" HeaderText="Complain Id" 
                InsertVisible="False" ReadOnly="True" SortExpression="complain_id" />
            <asp:BoundField DataField="complain_name" HeaderText="Complain Name" 
                SortExpression="complain_name" />
            <asp:BoundField DataField="complain_email" HeaderText="Complain Email" 
                SortExpression="complain_email" />
            <asp:BoundField DataField="complain_desc" HeaderText="Complain Description" 
                SortExpression="complain_desc" />
            <asp:CommandField HeaderText="Edit / Delete" ShowDeleteButton="True" 
                ShowEditButton="True" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Admin_SCST_Grievance_Redressal]">
    </asp:SqlDataSource>



    <br />
    <br />
    <br />


    </form>

</asp:Content>

