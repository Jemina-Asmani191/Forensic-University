<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Board_Of_Governor.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />
<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Board Of Governors</h4>
                </div>
               
               <div class="card-body ">
                    <div class="form-group has-label">
                    <label>
                      Governor Name
                    </label>
                      
                      <asp:TextBox ID="txtgovernor_name" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="30" required=""></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Governor Designation
                    </label>
                      
                      <asp:TextBox ID="txtgovernor_designation" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="80" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                      Governor Address
                    </label>
                      
                      <asp:TextBox ID="txtgovernor_address" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="100" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                      Governor Post
                    </label>
                      
                      <asp:TextBox ID="txtgovernor_post" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="20" required=""></asp:TextBox>
                  </div>


                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_Submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_Submit_Click" />    
                </div>
              </div>
              <div class="table-responsive">
<asp:GridView ID="gridview_board_of_governor" runat="server" CssClass="table table-striped table-bordered table-hover" 
 AutoGenerateColumns="False" DataKeyNames="governor_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="governor_id" HeaderText="Governor Id" ReadOnly="True"
            SortExpression="governor_id" />
        <asp:BoundField DataField="governor_name" HeaderText="Governor Name" 
            SortExpression="governor_name" />
        <asp:BoundField DataField="governor_designation" HeaderText="Governor Designation"
            SortExpression="governor_designation" />
        <asp:BoundField DataField="governor_address" HeaderText="Governor Address" 
            SortExpression="governor_address" />
        <asp:BoundField DataField="governor_post" HeaderText="Governor Post" 
            SortExpression="governor_post" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>"
    DeleteCommand="DELETE FROM [Admin_Board_Of_Governor] WHERE [governor_id] = @governor_id"
    InsertCommand="INSERT INTO [Admin_Board_Of_Governor] ([governor_name], [governor_designation], [governor_address], [governor_post]) VALUES (@governor_name, @governor_designation, @governor_address, @governor_post)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [governor_id], [governor_name], [governor_designation], [governor_address], [governor_post] FROM [Admin_Board_Of_Governor]"
    UpdateCommand="UPDATE [Admin_Board_Of_Governor] SET [governor_name] = @governor_name, [governor_designation] = @governor_designation, [governor_address] = @governor_address, [governor_post] = @governor_post WHERE [governor_id] = @governor_id">
    <DeleteParameters>
        <asp:Parameter Name="governor_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="governor_name" Type="String" />
        <asp:Parameter Name="governor_designation" Type="String" />
        <asp:Parameter Name="governor_address" Type="String" />
        <asp:Parameter Name="governor_post" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="governor_name" Type="String" />
        <asp:Parameter Name="governor_designation" Type="String" />
        <asp:Parameter Name="governor_address" Type="String" />
        <asp:Parameter Name="governor_post" Type="String" />
        <asp:Parameter Name="governor_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
              <br />
              <br />

</form>

</asp:Content>

