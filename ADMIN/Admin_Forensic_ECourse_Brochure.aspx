<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Forensic_ECourse_Brochure.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">E-Courses Brochure</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                     E-Course Brochure Name
                    </label>
                      
                      <asp:TextBox ID="txtecourse_brochuere_filename" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="100" required=""></asp:TextBox>
                  </div>
               

                <label>
                  E-course Brochure File
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploadecourse_brochure_pdffile" class="form-control" required="" placeholder="E-course Brochure File" runat="server"   />
                    </div>
                
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadfile" runat="server" class="btn btn-primary" 
                        Text="Upload File" onclick="btn_uploadfile_Click"  /><br />
                    <asp:Label ID="lbl_path" runat="server" Text=""></asp:Label>
                </div>
              </div>
              <div class="table-responsive">
<asp:GridView ID="gridview_forensic_ecourse_brochure" runat="server" CssClass="table table-striped table-bordered table-hover"  
                  AutoGenerateColumns="False" DataKeyNames="ecourse_brochure_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="ecourse_brochure_id" HeaderText="ECourse Brochure Id"
            ReadOnly="True" SortExpression="ecourse_brochure_id" />
        <asp:BoundField DataField="ecourse_brochure_filename" HeaderText="ECourse Brochure Filename"
            SortExpression="ecourse_brochure_filename" />
        <asp:BoundField DataField="ecourse_brochure_file" HeaderText="ECourse Brochure File (PDF)"
            SortExpression="ecourse_brochure_file" />
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
    DeleteCommand="DELETE FROM [Admin_Forensic_ECourse_Brochure] WHERE [ecourse_brochure_id] = @ecourse_brochure_id"
    InsertCommand="INSERT INTO [Admin_Forensic_ECourse_Brochure] ([ecourse_brochure_filename], [ecourse_brochure_file]) VALUES (@ecourse_brochure_filename, @ecourse_brochure_file)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [ecourse_brochure_id], [ecourse_brochure_filename], [ecourse_brochure_file] FROM [Admin_Forensic_ECourse_Brochure]"
    UpdateCommand="UPDATE [Admin_Forensic_ECourse_Brochure] SET [ecourse_brochure_filename] = @ecourse_brochure_filename, [ecourse_brochure_file] = @ecourse_brochure_file WHERE [ecourse_brochure_id] = @ecourse_brochure_id">
    <DeleteParameters>
        <asp:Parameter Name="ecourse_brochure_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ecourse_brochure_filename" Type="String" />
        <asp:Parameter Name="ecourse_brochure_file" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ecourse_brochure_filename" Type="String" />
        <asp:Parameter Name="ecourse_brochure_file" Type="String" />
        <asp:Parameter Name="ecourse_brochure_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
              <br />
              <br />


              </form>

</asp:Content>

