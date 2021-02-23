<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_NIRF.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">NIRF</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                     NIRF Filename
                    </label>
                      
                      <asp:TextBox ID="txtNIRF_filename" class="form-control" runat="server" 
                          TextMode="SingleLine" required=""></asp:TextBox>
                  </div>
                

                <label>
                   NIRF File
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploadNIRF_pdffile" class="form-control" placeholder="NIRF file" runat="server" required=""  />
                    </div>
                </div>
                
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadfile" runat="server" class="btn btn-primary" 
                        Text="Upload File" onclick="btn_uploadfile_Click" /><br />
                    <asp:Label ID="lbl_path" runat="server" Text=""></asp:Label>
                </div>
              </div>
   <div class="table-responsive">
<asp:GridView ID="gridview_NIRF" runat="server" CssClass="table table-striped table-bordered table-hover"  AutoGenerateColumns="False" DataKeyNames="nirf_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="nirf_id" HeaderText="NIRF Id" ReadOnly="True" 
            SortExpression="nirf_id" />
        <asp:BoundField DataField="nirf_filename" HeaderText="NIRF Filename" 
            SortExpression="nirf_filename" />
        <asp:BoundField DataField="nirf_file" HeaderText="NIRF  File (PDF)" 
            SortExpression="nirf_file" />
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
    DeleteCommand="DELETE FROM [Admin_NIRF] WHERE [nirf_id] = @nirf_id" InsertCommand="INSERT INTO [Admin_NIRF] ([nirf_filename], [nirf_file]) VALUES (@nirf_filename, @nirf_file)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [nirf_id], [nirf_filename], [nirf_file] FROM [Admin_NIRF]"
    UpdateCommand="UPDATE [Admin_NIRF] SET [nirf_filename] = @nirf_filename, [nirf_file] = @nirf_file WHERE [nirf_id] = @nirf_id">
    <DeleteParameters>
        <asp:Parameter Name="nirf_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="nirf_filename" Type="String" />
        <asp:Parameter Name="nirf_file" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nirf_filename" Type="String" />
        <asp:Parameter Name="nirf_file" Type="String" />
        <asp:Parameter Name="nirf_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

<br />
<br />
<br />

</form>


</asp:Content>

