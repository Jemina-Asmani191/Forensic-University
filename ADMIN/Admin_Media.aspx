<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_master.master" AutoEventWireup="true" CodeFile="Admin_Media.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">News Corner In Media</h4>
                </div>
                <div class="card-body ">

                <label>
                    Media Image
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploadmedia_image" class="form-control" placeholder="Media Image" runat="server" required=""  />
                    </div>


                  <div class="form-group has-label">
                    <label>
                      Media Image Description
                    </label>
                      
                      <asp:TextBox ID="txtmediaimage_desc" class="form-control" runat="server" 
                          TextMode="MultiLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
                    
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadimage" runat="server" class="btn btn-primary" 
                        Text="Upload" onclick="btn_uploadimage_Click" /><br />
                    <asp:Label ID="lbl_path" runat="server" Text=""></asp:Label>
                </div>
              </div>
   <div class="table-responsive">
<asp:GridView ID="gridview_media" runat="server" CssClass="table table-striped table-bordered table-hover" 
 AutoGenerateColumns="False" DataKeyNames="media_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="media_id" HeaderText="Media Id" ReadOnly="True" 
            SortExpression="media_id" />
       
        <asp:TemplateField HeaderText="Image">
         <ItemTemplate >
            <img src='../Media Image/<%#Eval("media_image") %>' height="70px" />
        </ItemTemplate>    
        </asp:TemplateField>
    
    
        <asp:BoundField DataField="media_image" HeaderText="Media Image" 
            SortExpression="media_image" />
        <asp:BoundField DataField="media_desc" HeaderText="Media Description" 
            SortExpression="media_desc" />
       
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
    DeleteCommand="DELETE FROM [Admin_Media] WHERE [media_id] = @media_id" InsertCommand="INSERT INTO [Admin_Media] ([media_image], [media_desc]) VALUES (@media_image, @media_desc)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [media_id], [media_image], [media_desc] FROM [Admin_Media]"
    UpdateCommand="UPDATE [Admin_Media] SET [media_image] = @media_image, [media_desc] = @media_desc WHERE [media_id] = @media_id">
    <DeleteParameters>
        <asp:Parameter Name="media_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="media_image" Type="String" />
        <asp:Parameter Name="media_desc" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="media_image" Type="String" />
        <asp:Parameter Name="media_desc" Type="String" />
        <asp:Parameter Name="media_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

<br />
<br />
<br />

</form>


</asp:Content>

