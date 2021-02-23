<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Download.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Downloads</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                     Download FileName
                    </label>
                      
                      <asp:TextBox ID="txtdownload_filename" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="150" required=""></asp:TextBox>
                  </div>
               

                <label>
                   Download File
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploaddownload_pdffile" class="form-control" placeholder="download file" runat="server"  required="" />
                    </div>
                
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadfile" runat="server" class="btn btn-primary" 
                        Text="Upload File" onclick="btn_uploadfile_Click"  /><br />
                    <asp:Label ID="lbl_path" runat="server" Text=""></asp:Label>
                </div>
              </div>

              <div class="table-responsive">
<asp:GridView ID="gridview_download" runat="server" CssClass="table table-striped table-bordered table-hover" 
 AutoGenerateColumns="False" DataKeyNames="download_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="download_id" HeaderText="Download Id" ReadOnly="True"
            SortExpression="download_id" />
        <asp:BoundField DataField="download_filename" HeaderText="Download Filename" 
            SortExpression="download_filename" />
        <asp:BoundField DataField="download_file" HeaderText="Download File (PDF)" 
            SortExpression="download_file" />
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
    DeleteCommand="DELETE FROM [Admin_Download] WHERE [download_id] = @download_id"
    InsertCommand="INSERT INTO [Admin_Download] ([download_filename], [download_file]) VALUES (@download_filename, @download_file)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [download_id], [download_filename], [download_file] FROM [Admin_Download]"
    UpdateCommand="UPDATE [Admin_Download] SET [download_filename] = @download_filename, [download_file] = @download_file WHERE [download_id] = @download_id">
    <DeleteParameters>
        <asp:Parameter Name="download_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="download_filename" Type="String" />
        <asp:Parameter Name="download_file" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="download_filename" Type="String" />
        <asp:Parameter Name="download_file" Type="String" />
        <asp:Parameter Name="download_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
              <br />
              <br />



              </form>
</asp:Content>

