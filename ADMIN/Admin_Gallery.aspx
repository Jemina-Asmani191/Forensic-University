<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_master.master" AutoEventWireup="true" CodeFile="Admin_Gallery.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Gallery</h4>
                </div>
                <div class="card-body ">

                <label>
                    Image
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">

                        </span>
                      </div>

                        <asp:FileUpload ID="uploadgallery_image" class="form-control" placeholder="Image" runat="server" required="" />
                  
                
                    </div>


                  <div class="form-group has-label">
                    <label>
                      Image Description
                    </label>

                      <asp:TextBox ID="txtimage_desc" class="form-control" runat="server" 
                          TextMode="MultiLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
                   </div>
                <div class="card-footer text-right">
                 
                    <asp:Button ID="btn_uploadimage" runat="server" class="btn btn-primary" 
                        Text="Upload" onclick="btn_uploadimage_Click" />
                    <asp:Label ID="lbl_path" runat="server" Text=""></asp:Label>
                </div>
              </div>
            <div class="table-responsive">
<asp:GridView ID="GridView_gallery" runat="server" CssClass="table table-striped table-bordered table-hover" 
 AutoGenerateColumns="False" DataKeyNames="gallery_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="gallery_id" HeaderText="Gallery Id" ReadOnly="True" 
            SortExpression="gallery_id" />
        <asp:TemplateField HeaderText="Image">
        <ItemTemplate >
            <img src='../Gallery Image/<%#Eval("gallery_image") %>' height="100px" width="200px" />
        </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="gallery_image" HeaderText="Gallery Image" 
            SortExpression="gallery_image" />
        <asp:BoundField DataField="gallery_desc" HeaderText="Gallery Description" 
            SortExpression="gallery_desc" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
            HeaderText="Edit / Delete" />
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
    DeleteCommand="DELETE FROM [Admin_Gallery] WHERE [gallery_id] = @gallery_id"
    InsertCommand="INSERT INTO [Admin_Gallery] ([gallery_image], [gallery_desc]) VALUES (@gallery_image, @gallery_desc)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [gallery_id], [gallery_image], [gallery_desc] FROM [Admin_Gallery]"
    UpdateCommand="UPDATE [Admin_Gallery] SET [gallery_image] = @gallery_image, [gallery_desc] = @gallery_desc WHERE [gallery_id] = @gallery_id">
    <DeleteParameters>
        <asp:Parameter Name="gallery_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="gallery_image" Type="String" />
        <asp:Parameter Name="gallery_desc" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="gallery_image" Type="String" />
        <asp:Parameter Name="gallery_desc" Type="String" />
        <asp:Parameter Name="gallery_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

<br />
<br />
<br />

</form>
   


</asp:Content>

