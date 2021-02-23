<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_EReasourse.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Student Corner E Resourse</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                     E-Resourse Filename
                    </label>
                      
                      <asp:TextBox ID="txteresourse_filename" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
                

                <label>
                   E-Resourse File
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploaderesourse_pdffile" class="form-control" placeholder="E-Resourse file" runat="server" required=""  />
                    </div>
                </div>
                
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadfile" runat="server" class="btn btn-primary" 
                        Text="Upload File" onclick="btn_uploadfile_Click" /><br />
                    <asp:Label ID="lbl_path" runat="server" Text=""></asp:Label>
                </div>
              </div>
              <div class="table-responsive">
<asp:GridView ID="gridview_Ereasourse" runat="server" CssClass="table table-striped table-bordered table-hover" 
 AutoGenerateColumns="False" DataKeyNames="eresourse_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="eresourse_id" HeaderText="EResourse Id" ReadOnly="True"
            SortExpression="eresourse_id" />
        <asp:BoundField DataField="eresourse_filename" HeaderText="EResourse Filename" 
            SortExpression="eresourse_filename" />
        <asp:BoundField DataField="eresourse_file" HeaderText="EResourse File (PDF)" 
            SortExpression="eresourse_file" />
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
    DeleteCommand="DELETE FROM [Admin_EResourse] WHERE [eresourse_id] = @eresourse_id"
    InsertCommand="INSERT INTO [Admin_EResourse] ([eresourse_filename], [eresourse_file]) VALUES (@eresourse_filename, @eresourse_file)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [eresourse_id], [eresourse_filename], [eresourse_file] FROM [Admin_EResourse]"
    UpdateCommand="UPDATE [Admin_EResourse] SET [eresourse_filename] = @eresourse_filename, [eresourse_file] = @eresourse_file WHERE [eresourse_id] = @eresourse_id">
    <DeleteParameters>
        <asp:Parameter Name="eresourse_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="eresourse_filename" Type="String" />
        <asp:Parameter Name="eresourse_file" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="eresourse_filename" Type="String" />
        <asp:Parameter Name="eresourse_file" Type="String" />
        <asp:Parameter Name="eresourse_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

<br />
<br />
<br />

</form>


</asp:Content>

