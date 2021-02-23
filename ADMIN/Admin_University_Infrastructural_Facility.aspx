<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_University_Infrastructural_Facility.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">University Infrastructural Facilities</h4>
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

                        <asp:FileUpload ID="uploaduniversity_infrastructural_facilty_image" class="form-control" placeholder="Image" required="" runat="server"   />
                  
                
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
                        Text="Upload" onclick="btn_uploadimage_Click"  />
                    <asp:Label ID="lbl_path" runat="server" Text=""></asp:Label>
                </div>
              </div>
              <div class="table-responsive">
<asp:GridView ID="gridview_university_infrastructural_facility" runat="server" CssClass="table table-striped table-bordered table-hover" 
                  AutoGenerateColumns="False" DataKeyNames="university_facility_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="university_facility_id" HeaderText="University Facility Id"
            ReadOnly="True" SortExpression="university_facility_id" />
       
        <asp:TemplateField HeaderText="Image">
        <ItemTemplate >
            <img src='../University Infrastructural Facility Image/<%#Eval("university_facility_image") %>' height="70px" />
        </ItemTemplate>
        </asp:TemplateField>


        <asp:BoundField DataField="university_facility_image" HeaderText="University Facility Image"
            SortExpression="university_facility_image" />
        <asp:BoundField DataField="university_facility_desc" HeaderText="University Facility Description"
            SortExpression="university_facility_desc" />
       
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
    DeleteCommand="DELETE FROM [Admin_University_Infrastructural_Facility] WHERE [university_facility_id] = @university_facility_id"
    InsertCommand="INSERT INTO [Admin_University_Infrastructural_Facility] ([university_facility_image], [university_facility_desc]) VALUES (@university_facility_image, @university_facility_desc)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [university_facility_id], [university_facility_image], [university_facility_desc] FROM [Admin_University_Infrastructural_Facility]"
    UpdateCommand="UPDATE [Admin_University_Infrastructural_Facility] SET [university_facility_image] = @university_facility_image, [university_facility_desc] = @university_facility_desc WHERE [university_facility_id] = @university_facility_id">
    <DeleteParameters>
        <asp:Parameter Name="university_facility_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="university_facility_image" Type="String" />
        <asp:Parameter Name="university_facility_desc" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="university_facility_image" Type="String" />
        <asp:Parameter Name="university_facility_desc" Type="String" />
        <asp:Parameter Name="university_facility_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
              <br />
              <br />

</form>

</asp:Content>

