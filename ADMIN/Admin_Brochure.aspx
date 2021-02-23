<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Brochure.aspx.cs" Inherits="ADMIN_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Brochure</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                    Brochure Filename
                    </label>
                      
                      <asp:TextBox ID="txtbrochure_filename" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
               

                <label>
                 Brochure File
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploadbrochure_pdffile" class="form-control" placeholder="Convocation file" runat="server" required="" />
                    </div>
                
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadfile" runat="server" class="btn btn-primary" 
                        Text="Upload File" onclick="btn_uploadfile_Click"   /><br />
                    <asp:Label ID="lbl_path" runat="server" Text=""></asp:Label>
                </div>
              </div>

<asp:GridView ID="gridview_brochure" runat="server" AutoGenerateColumns="False" DataKeyNames="brochure_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="brochure_id" HeaderText="Brochure Id" ReadOnly="True"
            SortExpression="brochure_id" />
        <asp:BoundField DataField="brochure_filename" HeaderText="Brochure Filename" 
            SortExpression="brochure_filename" />
        <asp:BoundField DataField="brochure_file" HeaderText="Brochure File" 
            SortExpression="brochure_file" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>"
    DeleteCommand="DELETE FROM [Admin_Brochure] WHERE [brochure_id] = @brochure_id"
    InsertCommand="INSERT INTO [Admin_Brochure] ([brochure_filename], [brochure_file]) VALUES (@brochure_filename, @brochure_file)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [brochure_id], [brochure_filename], [brochure_file] FROM [Admin_Brochure]"
    UpdateCommand="UPDATE [Admin_Brochure] SET [brochure_filename] = @brochure_filename, [brochure_file] = @brochure_file WHERE [brochure_id] = @brochure_id">
    <DeleteParameters>
        <asp:Parameter Name="brochure_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="brochure_filename" Type="String" />
        <asp:Parameter Name="brochure_file" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="brochure_filename" Type="String" />
        <asp:Parameter Name="brochure_file" Type="String" />
        <asp:Parameter Name="brochure_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</form>

</asp:Content>

