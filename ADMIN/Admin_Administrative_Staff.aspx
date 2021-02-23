<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Administrative_Staff.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Administrative Staff</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                    Administrative Name
                    </label>
                      
                      <asp:TextBox ID="txtadministrative_staff_name" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="30" required="" ></asp:TextBox>
                  </div>
                
                 <div class="form-group has-label">
                    <label>
                    Administrative Designation
                    </label>
                      
                      <asp:TextBox ID="txtadministrative_staff_designation" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="30" required="" ></asp:TextBox>
                  </div>
                
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_submit_Click"  /><br />
                    <asp:Label ID="lbl_path" runat="server" Text=""></asp:Label>
                </div>
              </div>
<div class="table-responsive">
<asp:GridView ID="gridview_administrative_staff" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="administrative_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="administrative_id" HeaderText="Administrative Id" ReadOnly="True"
            SortExpression="administrative_id" />
        <asp:BoundField DataField="administrative_name" HeaderText="Administrative Name"
            SortExpression="administrative_name" />
        <asp:BoundField DataField="administrative_designation" HeaderText="Administrative Designation"
            SortExpression="administrative_designation" />
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
    DeleteCommand="DELETE FROM [Admin_Administrative_Staff] WHERE [administrative_id] = @administrative_id"
    InsertCommand="INSERT INTO [Admin_Administrative_Staff] ([administrative_name], [administrative_designation]) VALUES (@administrative_name, @administrative_designation)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [administrative_id], [administrative_name], [administrative_designation] FROM [Admin_Administrative_Staff]"
    UpdateCommand="UPDATE [Admin_Administrative_Staff] SET [administrative_name] = @administrative_name, [administrative_designation] = @administrative_designation WHERE [administrative_id] = @administrative_id">
    <DeleteParameters>
        <asp:Parameter Name="administrative_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="administrative_name" Type="String" />
        <asp:Parameter Name="administrative_designation" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="administrative_name" Type="String" />
        <asp:Parameter Name="administrative_designation" Type="String" />
        <asp:Parameter Name="administrative_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
              <br />
              <br />

    </form>
</asp:Content>

