<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_master.master" AutoEventWireup="true" CodeFile="Admin_Students_Achievements.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Students Achievements</h4>
                </div>
                <div class="card-body ">

                <label>
                    Students Achievements Image
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploadachievement_image" class="form-control" required="" placeholder="Students Achievements Image" runat="server"   />
                    </div>


                  <div class="form-group has-label">
                    <label>
                      Achievement Image Description
                    </label>
                      
                      <asp:TextBox ID="txtachievementimage_desc" class="form-control" runat="server" 
                          TextMode="MultiLine" required=""></asp:TextBox>
                  </div>
                    
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadimage" runat="server" class="btn btn-primary" 
                        Text="Upload" onclick="btn_uploadimage_Click" /><br />
                    <asp:Label ID="lbl_path" runat="server" Text=""></asp:Label>
                </div>
              </div>
<div class="table-responsive">
<asp:GridView ID="gridview_students_achievements" runat="server" CssClass="table table-striped table-bordered table-hover"  AutoGenerateColumns="False" DataKeyNames="achievement_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="achievement_id" HeaderText="Achievement Id" ReadOnly="True"
            SortExpression="achievement_id" />
       
       
        <asp:TemplateField HeaderText="Image">
         <ItemTemplate >
            <img src='../Students Achievement Image/<%#Eval("achievement_image") %>' height="70px" />
        </ItemTemplate>
        </asp:TemplateField>
    
    
        <asp:BoundField DataField="achievement_image" HeaderText="Achievement Image" 
            SortExpression="achievement_image" />
        <asp:BoundField DataField="achievement_desc" 
            HeaderText="Achievement Description" SortExpression="achievement_desc" />
       
       
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
    DeleteCommand="DELETE FROM [Admin_Students_Achievement] WHERE [achievement_id] = @achievement_id"
    InsertCommand="INSERT INTO [Admin_Students_Achievement] ([achievement_image], [achievement_desc]) VALUES (@achievement_image, @achievement_desc)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [achievement_id], [achievement_image], [achievement_desc] FROM [Admin_Students_Achievement]"
    UpdateCommand="UPDATE [Admin_Students_Achievement] SET [achievement_image] = @achievement_image, [achievement_desc] = @achievement_desc WHERE [achievement_id] = @achievement_id">
    <DeleteParameters>
        <asp:Parameter Name="achievement_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="achievement_image" Type="String" />
        <asp:Parameter Name="achievement_desc" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="achievement_image" Type="String" />
        <asp:Parameter Name="achievement_desc" Type="String" />
        <asp:Parameter Name="achievement_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

<br />
<br />
<br />
</form>

</asp:Content>

