<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_University_Officer.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">University Officer</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                    University Officer Name
                    </label>
                      
                      <asp:TextBox ID="txtuniversity_officer_name" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="50" required=""></asp:TextBox>
                  </div>
                
                 <div class="form-group has-label">
                    <label>
                    University Officer Designation
                    </label>
                      
                      <asp:TextBox ID="txtuniversity_officer_designation" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="100" required=""></asp:TextBox>
                  </div>
                
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_submit_Click"   /><br />
                    <asp:Label ID="lbl_path" runat="server" Text=""></asp:Label>
                </div>
              </div>
              <div class="table-responsive">
<asp:GridView ID="gridview_university_officer" runat="server" CssClass="table table-striped table-bordered table-hover"  AutoGenerateColumns="False" DataKeyNames="officer_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="officer_id" HeaderText="Officer Id" ReadOnly="True" 
            SortExpression="officer_id" />
        <asp:BoundField DataField="officer_name" HeaderText="Officer Name" 
            SortExpression="officer_name" />
        <asp:BoundField DataField="officer_designation" HeaderText="Officer Designation"
            SortExpression="officer_designation" />
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
    DeleteCommand="DELETE FROM [Admin_University_Officer] WHERE [officer_id] = @officer_id"
    InsertCommand="INSERT INTO [Admin_University_Officer] ([officer_name], [officer_designation]) VALUES (@officer_name, @officer_designation)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [officer_id], [officer_name], [officer_designation] FROM [Admin_University_Officer]"
    UpdateCommand="UPDATE [Admin_University_Officer] SET [officer_name] = @officer_name, [officer_designation] = @officer_designation WHERE [officer_id] = @officer_id">
    <DeleteParameters>
        <asp:Parameter Name="officer_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="officer_name" Type="String" />
        <asp:Parameter Name="officer_designation" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="officer_name" Type="String" />
        <asp:Parameter Name="officer_designation" Type="String" />
        <asp:Parameter Name="officer_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
              <br />
              <br />

              </form>

</asp:Content>

