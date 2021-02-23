<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Advisory_Committee.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br />
<br />
<br />
<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Advisory Committee</h4>
                </div>
               
               <div class="card-body ">
                    <div class="form-group has-label">
                    <label>
                      Advisory Name
                    </label>
                      
                      <asp:TextBox ID="txtadvisory_name" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="30" required=""></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Advisory Designation
                    </label>
                      
                      <asp:TextBox ID="txtadvisory_designation" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="300" required="" ></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Advisory Post
                    </label>
                      
                      <asp:TextBox ID="txtpost" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="30" required="" ></asp:TextBox>
                  </div>

                  
                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_Submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_Submit_Click"  />    
                </div>
              </div>

 <div class="table-responsive">
     <asp:GridView ID="gridview_advisory_commity" runat="server" 
         CssClass="table table-striped table-bordered table-hover" 
         AutoGenerateColumns="False" DataKeyNames="advisory_id"
         DataSourceID="SqlDataSource2" 
         EmptyDataText="There are no data records to display." AllowPaging="True" 
         CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="10">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
         <Columns>
             <asp:BoundField DataField="advisory_id" HeaderText="Advisory Id" ReadOnly="True"
                 SortExpression="advisory_id" />
             <asp:BoundField DataField="advisory_name" HeaderText="Advisory Name" 
                 SortExpression="advisory_name" />
             <asp:BoundField DataField="advisory_designation" HeaderText="Advisory Designation"
                 SortExpression="advisory_designation" />
             <asp:BoundField DataField="advisory_post" HeaderText="Advisory Post" 
                 SortExpression="advisory_post" />
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
         DeleteCommand="DELETE FROM [Admin_Advisory_Committee] WHERE [advisory_id] = @advisory_id"
         InsertCommand="INSERT INTO [Admin_Advisory_Committee] ([advisory_name], [advisory_designation], [advisory_post]) VALUES (@advisory_name, @advisory_designation, @advisory_post)"
         ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
         SelectCommand="SELECT [advisory_id], [advisory_name], [advisory_designation], [advisory_post] FROM [Admin_Advisory_Committee]"
         UpdateCommand="UPDATE [Admin_Advisory_Committee] SET [advisory_name] = @advisory_name, [advisory_designation] = @advisory_designation, [advisory_post] = @advisory_post WHERE [advisory_id] = @advisory_id">
         <DeleteParameters>
             <asp:Parameter Name="advisory_id" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="advisory_name" Type="String" />
             <asp:Parameter Name="advisory_designation" Type="String" />
             <asp:Parameter Name="advisory_post" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="advisory_name" Type="String" />
             <asp:Parameter Name="advisory_designation" Type="String" />
             <asp:Parameter Name="advisory_post" Type="String" />
             <asp:Parameter Name="advisory_id" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>
 </div>

<br />
              <br />
              <br />


</form>

</asp:Content>

