<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_NAAC_Accreditation.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">NAAC Accreditation</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                    NAAC Accreditation Filename
                    </label>
                      
                      <asp:TextBox ID="txtNAAC_Accreditation_filename" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
               

                <label>
                 NAAC Accreditation File
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploadNAAC_Accreditation_pdffile" class="form-control" placeholder="Convocation file" runat="server" required=""  />
                    </div>
                
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadfile" runat="server" class="btn btn-primary" 
                        Text="Upload File" onclick="btn_uploadfile_Click"  /><br />
                    <asp:Label ID="lbl_path" runat="server" Text=""></asp:Label>
                </div>
              </div>

              <div class="table-responsive">
<asp:GridView ID="gridview_NAAC_accreditation" runat="server" CssClass="table table-striped table-bordered table-hover"   AutoGenerateColumns="False" DataKeyNames="naac_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="naac_id" HeaderText="NAAC Id" ReadOnly="True" 
            SortExpression="naac_id" />
        <asp:BoundField DataField="naac_filename" HeaderText="NAAC FileName" 
            SortExpression="naac_filename" />
        <asp:BoundField DataField="naac_file" HeaderText="NAAC File (PDF)" 
            SortExpression="naac_file" />
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
    DeleteCommand="DELETE FROM [Admin_NAAC_Accreditation] WHERE [naac_id] = @naac_id"
    InsertCommand="INSERT INTO [Admin_NAAC_Accreditation] ([naac_filename], [naac_file]) VALUES (@naac_filename, @naac_file)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [naac_id], [naac_filename], [naac_file] FROM [Admin_NAAC_Accreditation]"
    UpdateCommand="UPDATE [Admin_NAAC_Accreditation] SET [naac_filename] = @naac_filename, [naac_file] = @naac_file WHERE [naac_id] = @naac_id">
    <DeleteParameters>
        <asp:Parameter Name="naac_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="naac_filename" Type="String" />
        <asp:Parameter Name="naac_file" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="naac_filename" Type="String" />
        <asp:Parameter Name="naac_file" Type="String" />
        <asp:Parameter Name="naac_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
              <br />
              <br />
    </form>
</asp:Content>

