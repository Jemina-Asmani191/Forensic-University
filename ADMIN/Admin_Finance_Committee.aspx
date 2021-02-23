<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Finance_Committee.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




<br />
<br />
<br />
<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Finance Committee</h4>
                </div>
               
               <div class="card-body ">
                    <div class="form-group has-label">
                    <label>
                      Finance Committee Name
                    </label>
                      
                      <asp:TextBox ID="txtfinance_committee_name" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="30" required=""></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Finance Committee Address
                    </label>
                      
                      <asp:TextBox ID="txtfinance_committee_address" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="100" required=""></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Finance Committee Post
                    </label>
                      
                      <asp:TextBox ID="txtcommittee_post" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="30" required=""></asp:TextBox>
                  </div>

                  
                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_Submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_Submit_Click" />    
                </div>
              </div>
<div class="table-responsive">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="finance_id"
        DataSourceID="SqlDataSource2" 
        EmptyDataText="There are no data records to display." AllowPaging="True" 
        CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="10" Width="100%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="finance_id" HeaderText="Finance Committee Id" 
                ReadOnly="True" SortExpression="finance_id" />
            <asp:BoundField DataField="finance_name" HeaderText="Finance Committee Name" 
                SortExpression="finance_name" />
            <asp:BoundField DataField="finance_address" 
                HeaderText="Finance Committee Address" SortExpression="finance_address" />
            <asp:BoundField DataField="finance_post" HeaderText="Finance Committee Post" 
                SortExpression="finance_post" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>"
        DeleteCommand="DELETE FROM [Admin_Finance_Committee] WHERE [finance_id] = @finance_id"
        InsertCommand="INSERT INTO [Admin_Finance_Committee] ([finance_name], [finance_address], [finance_post]) VALUES (@finance_name, @finance_address, @finance_post)"
        ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
        SelectCommand="SELECT [finance_id], [finance_name], [finance_address], [finance_post] FROM [Admin_Finance_Committee]"
        UpdateCommand="UPDATE [Admin_Finance_Committee] SET [finance_name] = @finance_name, [finance_address] = @finance_address, [finance_post] = @finance_post WHERE [finance_id] = @finance_id">
        <DeleteParameters>
            <asp:Parameter Name="finance_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="finance_name" Type="String" />
            <asp:Parameter Name="finance_address" Type="String" />
            <asp:Parameter Name="finance_post" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="finance_name" Type="String" />
            <asp:Parameter Name="finance_address" Type="String" />
            <asp:Parameter Name="finance_post" Type="String" />
            <asp:Parameter Name="finance_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
<br />
              <br />
              <br />



              </form>
</asp:Content>

