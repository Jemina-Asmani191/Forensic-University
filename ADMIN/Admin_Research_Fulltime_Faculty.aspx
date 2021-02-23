<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Research_Fulltime_Faculty.aspx.cs" Inherits="ADMIN_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Research and development Full Time Faculty</h4>
                </div>
                <div class="card-body ">

                <label>
                    Research and development Full Time Faculty Image
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                     
                        </span>
                      </div>
                     
                        <asp:FileUpload ID="uploadfulltimefaculty_image" class="form-control" required="" placeholder="Research and development Full Time Faculty" runat="server"   />
                    </div>

                  <div class="form-group has-label">
                    <label>
                     Research and development Full Time Faculty Name
                    </label>
                      <asp:TextBox ID="txtfullfacu_name" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="30" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                     Research and development Full Time Faculty Qualification
                    </label>
                      <asp:TextBox ID="txtfullfacu_quali" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="50" required=""></asp:TextBox>
                  </div>
                    
                    <div class="form-group has-label">
                    <label>
                     Research and development Full Time Faculty Designation
                    </label>
                      <asp:TextBox ID="txtfullfacu_desig" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="100" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                     Research and development Full Time Faculty EmailId
                    </label>
                      <asp:TextBox ID="txtfullfacu_email" class="form-control" runat="server" 
                          type="Email" MaxLength="50" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                     Research and development Full Time Faculty Experience
                    </label>
                      <asp:TextBox ID="txtfullfacu_expr" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="100" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                     Research and development Full Time Faculty Specialization
                    </label>
                      <asp:TextBox ID="txtfullfacu_speci" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="100" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                     Research and development Full Time Faculty Publication
                    </label>
                      <asp:TextBox ID="txtfullfacu_publi" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="100" required=""></asp:TextBox>
                  </div>

                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_uploadimage" runat="server" class="btn btn-primary" 
                        Text="Upload" onclick="btn_uploadimage_Click1"  />
                    <asp:Label ID="lbl_path" runat="server" Text=""></asp:Label>
                </div>
              </div>


<asp:GridView ID="gridview_research_fulltime_faculty" runat="server" 
                  AutoGenerateColumns="False" DataKeyNames="full_faculty_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="full_faculty_id" HeaderText="Full  Faculty Id" ReadOnly="True"
            SortExpression="full_faculty_id" />
        <asp:TemplateField HeaderText="Image">
        <ItemTemplate>
        <img src='../Research Fulltime Faculty Image/<%#Eval("full_faculty_image") %>' height="70px" />
        </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="full_faculty_image" HeaderText="Full Faculty Image" 
            SortExpression="full_faculty_image" />
        <asp:BoundField DataField="full_faculty_name" HeaderText="Full Faculty Name" 
            SortExpression="full_faculty_name" />
        <asp:BoundField DataField="full_faculty_quali" 
            HeaderText="Full Faculty Qualification" SortExpression="full_faculty_quali" />
        <asp:BoundField DataField="full_faculty_desig" 
            HeaderText="Full Faculty Designation" SortExpression="full_faculty_desig" />
        <asp:BoundField DataField="full_faculty_emailid" HeaderText="Full Faculty Email Id"
            SortExpression="full_faculty_emailid" />
        <asp:BoundField DataField="full_faculty_expr" 
            HeaderText="Full Faculty Exprience" SortExpression="full_faculty_expr" />
        <asp:BoundField DataField="full_faculty_speci" 
            HeaderText="Full Faculty Specification" SortExpression="full_faculty_speci" />
        <asp:BoundField DataField="full_faculty_publica" HeaderText="Full Faculty Publication"
            SortExpression="full_faculty_publica" />
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
    DeleteCommand="DELETE FROM [Admin_Research_FullTime_Faculty] WHERE [full_faculty_id] = @full_faculty_id"
    InsertCommand="INSERT INTO [Admin_Research_FullTime_Faculty] ([full_faculty_image], [full_faculty_name], [full_faculty_quali], [full_faculty_desig], [full_faculty_emailid], [full_faculty_expr], [full_faculty_speci], [full_faculty_publica]) VALUES (@full_faculty_image, @full_faculty_name, @full_faculty_quali, @full_faculty_desig, @full_faculty_emailid, @full_faculty_expr, @full_faculty_speci, @full_faculty_publica)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [full_faculty_id], [full_faculty_image], [full_faculty_name], [full_faculty_quali], [full_faculty_desig], [full_faculty_emailid], [full_faculty_expr], [full_faculty_speci], [full_faculty_publica] FROM [Admin_Research_FullTime_Faculty]"
    UpdateCommand="UPDATE [Admin_Research_FullTime_Faculty] SET [full_faculty_image] = @full_faculty_image, [full_faculty_name] = @full_faculty_name, [full_faculty_quali] = @full_faculty_quali, [full_faculty_desig] = @full_faculty_desig, [full_faculty_emailid] = @full_faculty_emailid, [full_faculty_expr] = @full_faculty_expr, [full_faculty_speci] = @full_faculty_speci, [full_faculty_publica] = @full_faculty_publica WHERE [full_faculty_id] = @full_faculty_id">
    <DeleteParameters>
        <asp:Parameter Name="full_faculty_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="full_faculty_image" Type="String" />
        <asp:Parameter Name="full_faculty_name" Type="String" />
        <asp:Parameter Name="full_faculty_quali" Type="String" />
        <asp:Parameter Name="full_faculty_desig" Type="String" />
        <asp:Parameter Name="full_faculty_emailid" Type="String" />
        <asp:Parameter Name="full_faculty_expr" Type="String" />
        <asp:Parameter Name="full_faculty_speci" Type="String" />
        <asp:Parameter Name="full_faculty_publica" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="full_faculty_image" Type="String" />
        <asp:Parameter Name="full_faculty_name" Type="String" />
        <asp:Parameter Name="full_faculty_quali" Type="String" />
        <asp:Parameter Name="full_faculty_desig" Type="String" />
        <asp:Parameter Name="full_faculty_emailid" Type="String" />
        <asp:Parameter Name="full_faculty_expr" Type="String" />
        <asp:Parameter Name="full_faculty_speci" Type="String" />
        <asp:Parameter Name="full_faculty_publica" Type="String" />
        <asp:Parameter Name="full_faculty_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
<br />
<br />

</form>


</asp:Content>

