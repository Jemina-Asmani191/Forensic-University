<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_master.master" AutoEventWireup="true" CodeFile="Admin_Visitors_At_The_IFSU.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Visitors at the IFSU</h4>
                </div>
                <div class="card-body ">

                <label>
                    Visitors Image
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploadvisitor_image" class="form-control" placeholder="Visitors Image" runat="server" required=""   />
                    </div>


                  <div class="form-group has-label">
                    <label>
                      Visitors Image Description
                    </label>
                      
                      <asp:TextBox ID="txtvisitorsimage_desc" class="form-control" runat="server" 
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

<asp:GridView ID="gridview_visitors_at_the_IFSU" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="visitor_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="visitor_id" HeaderText="Visitor Id" ReadOnly="True" 
            SortExpression="visitor_id" />
       
        <asp:TemplateField HeaderText="Image">
        <ItemTemplate >
            <img src='../Visitor Image/<%#Eval("visitor_image") %>' height="70px" />
        </ItemTemplate>
        </asp:TemplateField>
    
        <asp:BoundField DataField="visitor_image" HeaderText="Visitor Image" 
            SortExpression="visitor_image" />
        <asp:BoundField DataField="visitor_desc" HeaderText="Visitor Description" 
            SortExpression="visitor_desc" />
       
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
    DeleteCommand="DELETE FROM [Admin_Visitors] WHERE [visitor_id] = @visitor_id"
    InsertCommand="INSERT INTO [Admin_Visitors] ([visitor_image], [visitor_desc]) VALUES (@visitor_image, @visitor_desc)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [visitor_id], [visitor_image], [visitor_desc] FROM [Admin_Visitors]"
    UpdateCommand="UPDATE [Admin_Visitors] SET [visitor_image] = @visitor_image, [visitor_desc] = @visitor_desc WHERE [visitor_id] = @visitor_id">
    <DeleteParameters>
        <asp:Parameter Name="visitor_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="visitor_image" Type="String" />
        <asp:Parameter Name="visitor_desc" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="visitor_image" Type="String" />
        <asp:Parameter Name="visitor_desc" Type="String" />
        <asp:Parameter Name="visitor_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

<br />
<br />
<br />

</form>


</asp:Content>

