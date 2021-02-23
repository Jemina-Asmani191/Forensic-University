<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Academic_Council.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br />
<br />
<br />
<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Academic Council</h4>
                </div>
               
               <div class="card-body ">
                    <div class="form-group has-label">
                    <label>
                      Academic Council Name
                    </label>
                      
                      <asp:TextBox ID="txtacademic_council_name" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="30" required="" ></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Academic Council Designation
                    </label>
                      
                      <asp:TextBox ID="txtacademic_council_designation" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="300" required="" ></asp:TextBox>
                  </div>

                   <div class="form-group has-label">
                    <label>
                      Academic Council Post
                    </label>
                      
                      <asp:TextBox ID="txtpost" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="30" required="" ></asp:TextBox>
                  </div>


                  
                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_Submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_Submit_Click1" />    
                </div>
              </div>
 <div class="table-responsive">
           
<asp:GridView ID="gridview_academic_council" runat="server"   
         CssClass="table table-striped table-bordered table-hover"  
         AutoGenerateColumns="False" DataKeyNames="council_id"
    DataSourceID="SqlDataSource1" 
         EmptyDataText="There are no data records to display." AllowPaging="True" 
         CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="council_id" HeaderText="Academic Council Id" 
            ReadOnly="True" SortExpression="council_id" />
        <asp:BoundField DataField="council_name" HeaderText="Academic Council Name" 
            SortExpression="council_name" />
        <asp:BoundField DataField="council_designation" HeaderText="Academic Council Designation"
            SortExpression="council_designation" />
        <asp:BoundField DataField="council_post" HeaderText="Academic Council Post" 
            SortExpression="council_post" />
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
    DeleteCommand="DELETE FROM [Admin_Academic_Council] WHERE [council_id] = @council_id"
    InsertCommand="INSERT INTO [Admin_Academic_Council] ([council_name], [council_designation], [council_post]) VALUES (@council_name, @council_designation, @council_post)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [council_id], [council_name], [council_designation], [council_post] FROM [Admin_Academic_Council]"
    UpdateCommand="UPDATE [Admin_Academic_Council] SET [council_name] = @council_name, [council_designation] = @council_designation, [council_post] = @council_post WHERE [council_id] = @council_id">
    <DeleteParameters>
        <asp:Parameter Name="council_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="council_name" Type="String" />
        <asp:Parameter Name="council_designation" Type="String" />
        <asp:Parameter Name="council_post" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="council_name" Type="String" />
        <asp:Parameter Name="council_designation" Type="String" />
        <asp:Parameter Name="council_post" Type="String" />
        <asp:Parameter Name="council_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
              <br />
              <br />


              </form>


</asp:Content>

