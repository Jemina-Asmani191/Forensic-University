<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_UGC_Recognition.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">UGC Recognition</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                     UGC Recognition Filename
                    </label>
                      
                      <asp:TextBox ID="txtugc_recognition_filename" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
               

                <label>
                   UGC Recognition File
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploadugc_recodnition_pdffile" class="form-control" placeholder="Convocation file" required="" runat="server"   />
                    </div>
                
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadfile" runat="server" class="btn btn-primary" 
                        Text="Upload File" onclick="btn_uploadfile_Click" /><br />
                    <asp:Label ID="lbl_path" runat="server" Text=""></asp:Label>
                </div>
              </div>
              <div class="table-responsive">
<asp:GridView ID="gridview_UGC_recognition" runat="server" CssClass="table table-striped table-bordered table-hover"  AutoGenerateColumns="False" DataKeyNames="ugc_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="ugc_id" HeaderText="UGC Id" ReadOnly="True" 
            SortExpression="ugc_id" />
        <asp:BoundField DataField="ugc_filename" HeaderText="UGC Filename" 
            SortExpression="ugc_filename" />
        <asp:BoundField DataField="ugc_file" HeaderText="UGC File (PDF)" 
            SortExpression="ugc_file" />
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
    DeleteCommand="DELETE FROM [Admin_UGC_Recognition] WHERE [ugc_id] = @ugc_id"
    InsertCommand="INSERT INTO [Admin_UGC_Recognition] ([ugc_filename], [ugc_file]) VALUES (@ugc_filename, @ugc_file)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [ugc_id], [ugc_filename], [ugc_file] FROM [Admin_UGC_Recognition]"
    UpdateCommand="UPDATE [Admin_UGC_Recognition] SET [ugc_filename] = @ugc_filename, [ugc_file] = @ugc_file WHERE [ugc_id] = @ugc_id">
    <DeleteParameters>
        <asp:Parameter Name="ugc_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ugc_filename" Type="String" />
        <asp:Parameter Name="ugc_file" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ugc_filename" Type="String" />
        <asp:Parameter Name="ugc_file" Type="String" />
        <asp:Parameter Name="ugc_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>


<br />
              <br />
              <br />
              </form>



</asp:Content>

