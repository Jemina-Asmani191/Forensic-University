<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_master.master" AutoEventWireup="true" CodeFile="Admin_ContactUs.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br />
<br />
<br />
<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Contact US</h4>
                </div>
               
               <div class="card-body ">
                    <div class="form-group has-label">
                    <label>
                      Contact Department
                    </label>
                      
                      <asp:TextBox ID="txtcontact_department" class="form-control" runat="server" 
                          TextMode="Singleline" MaxLength="100" required=""></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Contact Number
                    </label>
                      
                      <asp:TextBox ID="txtcontact_number" class="form-control" runat="server" 
                          TextMode="Phone" MaxLength="10" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                      Email
                    </label>
                      
                      <asp:TextBox ID="txtemail" class="form-control" runat="server" 
                          TextMode="Email" MaxLength="30" required=""></asp:TextBox>
                  </div>

                   <div class="form-group has-label">
                    <label>
                     Department Description
                    </label>
                      
                      <asp:TextBox ID="txtdept_desc" class="form-control" runat="server" 
                          TextMode="Multiline" MaxLength="300" required=""></asp:TextBox>
                  </div>


                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_Submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_Submit_Click" />    
                </div>
              </div>
             <div class="table-responsive">
<asp:GridView ID="gridview_contactus" runat="server" CssClass="table table-striped table-bordered table-hover"  AutoGenerateColumns="False" DataKeyNames="contact_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="contact_id" HeaderText="Contact Id" ReadOnly="True" 
            SortExpression="contact_id" />
        <asp:BoundField DataField="contact_department" HeaderText="Contact Department" 
            SortExpression="contact_department" />
        <asp:BoundField DataField="contact_number" HeaderText="Contact Number" 
            SortExpression="contact_number" />
        <asp:BoundField DataField="contact_email" HeaderText="Contact Email" 
            SortExpression="contact_email" />
        <asp:BoundField DataField="contact_description" HeaderText="Contact Description"
            SortExpression="contact_description" />
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
    DeleteCommand="DELETE FROM [Admin_ContactUs] WHERE [contact_id] = @contact_id"
    InsertCommand="INSERT INTO [Admin_ContactUs] ([contact_department], [contact_number], [contact_email], [contact_description]) VALUES (@contact_department, @contact_number, @contact_email, @contact_description)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [contact_id], [contact_department], [contact_number], [contact_email], [contact_description] FROM [Admin_ContactUs]"
    UpdateCommand="UPDATE [Admin_ContactUs] SET [contact_department] = @contact_department, [contact_number] = @contact_number, [contact_email] = @contact_email, [contact_description] = @contact_description WHERE [contact_id] = @contact_id">
    <DeleteParameters>
        <asp:Parameter Name="contact_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="contact_department" Type="String" />
        <asp:Parameter Name="contact_number" Type="Decimal" />
        <asp:Parameter Name="contact_email" Type="String" />
        <asp:Parameter Name="contact_description" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="contact_department" Type="String" />
        <asp:Parameter Name="contact_number" Type="Decimal" />
        <asp:Parameter Name="contact_email" Type="String" />
        <asp:Parameter Name="contact_description" Type="String" />
        <asp:Parameter Name="contact_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
<br />
<br />
</form>

</asp:Content>

