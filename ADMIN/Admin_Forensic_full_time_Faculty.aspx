<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Forensic_full_time_Faculty.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Forensic Science Full Time Faculty</h4>
                </div>
                <div class="card-body ">

                <label>
                    Forensic Science Full Time Faculty Image
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                     
                        </span>
                      </div>
                     
                        <asp:FileUpload ID="uploadfulltimefaculty_image" class="form-control" required="" placeholder="Forensic Science Full Time Faculty" runat="server"   />
                    </div>

                  <div class="form-group has-label">
                    <label>
                     Forensic Science Full Time Faculty Name
                    </label>
                      <asp:TextBox ID="txtfullfacu_name" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="30" required="" ></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                     Forensic Science Full Time Faculty Qualification
                    </label>
                      <asp:TextBox ID="txtfullfacu_quali" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="200" required=""></asp:TextBox>
                  </div>
                    
                    <div class="form-group has-label">
                    <label>
                     Forensic Science Full Time Faculty Designation
                    </label>
                      <asp:TextBox ID="txtfullfacu_desig" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="200" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                     Forensic Science Full Time Faculty EmailId
                    </label>
                      <asp:TextBox ID="txtfullfacu_email" class="form-control" runat="server" 
                          type="Email" MaxLength="50" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                     Forensic Science Full Time Faculty Experience
                    </label>
                      <asp:TextBox ID="txtfullfacu_expr" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="100" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                     Forensic Science Full Time Faculty Specialization
                    </label>
                      <asp:TextBox ID="txtfullfacu_speci" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="100" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                     Forensic Science Full Time Faculty Publication
                    </label>
                      <asp:TextBox ID="txtfullfacu_publi" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="100" required=""></asp:TextBox>
                  </div>

                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_uploadimage" runat="server" class="btn btn-primary" 
                        Text="Upload" onclick="btn_uploadimage_Click" />
                    <asp:Label ID="lbl_path" runat="server" Text="" required=""></asp:Label>
                </div>
              </div>
              <div class="table-responsive">

<asp:GridView ID="gridview_forensic_full_time_faculty" runat="server" 
CssClass="table table-striped table-bordered table-hover"  AutoGenerateColumns="False" DataKeyNames="full_faculty_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="full_faculty_id" HeaderText="Faculty Id" ReadOnly="True"
            SortExpression="full_faculty_id" />
       
        <asp:TemplateField HeaderText="Image">
        <ItemTemplate >
            <img src='../Forensic Fulltime Faculty Image/<%#Eval("full_faculty_image") %>' height="80px" width="100px" />
        </ItemTemplate>
        </asp:TemplateField>

        <asp:BoundField DataField="full_faculty_image" HeaderText="Faculty Image" 
            SortExpression="full_faculty_image" />
        <asp:BoundField DataField="full_faculty_name" HeaderText="Faculty Name" 
            SortExpression="full_faculty_name" />
        <asp:BoundField DataField="full_faculty_qualification" HeaderText="Faculty Qualification"
            SortExpression="full_faculty_qualification" />
        <asp:BoundField DataField="full_faculty_designation" HeaderText="Faculty Designation"
            SortExpression="full_faculty_designation" />
        <asp:BoundField DataField="full_faculty_emailid" HeaderText="Faculty Emailid"
            SortExpression="full_faculty_emailid" />
        <asp:BoundField DataField="full_faculty_experience" HeaderText="Faculty Experience"
            SortExpression="full_faculty_experience" />
        <asp:BoundField DataField="full_faculty_specialization" HeaderText="Faculty Specialization"
            SortExpression="full_faculty_specialization" />
        <asp:BoundField DataField="full_faculty_publication" HeaderText="Faculty Publication"
            SortExpression="full_faculty_publication" />
       
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
    DeleteCommand="DELETE FROM [Admin_Forensic_Full_Faculty] WHERE [full_faculty_id] = @full_faculty_id"
    InsertCommand="INSERT INTO [Admin_Forensic_Full_Faculty] ([full_faculty_image], [full_faculty_name], [full_faculty_qualification], [full_faculty_designation], [full_faculty_emailid], [full_faculty_experience], [full_faculty_specialization], [full_faculty_publication]) VALUES (@full_faculty_image, @full_faculty_name, @full_faculty_qualification, @full_faculty_designation, @full_faculty_emailid, @full_faculty_experience, @full_faculty_specialization, @full_faculty_publication)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [full_faculty_id], [full_faculty_image], [full_faculty_name], [full_faculty_qualification], [full_faculty_designation], [full_faculty_emailid], [full_faculty_experience], [full_faculty_specialization], [full_faculty_publication] FROM [Admin_Forensic_Full_Faculty]"
    UpdateCommand="UPDATE [Admin_Forensic_Full_Faculty] SET [full_faculty_image] = @full_faculty_image, [full_faculty_name] = @full_faculty_name, [full_faculty_qualification] = @full_faculty_qualification, [full_faculty_designation] = @full_faculty_designation, [full_faculty_emailid] = @full_faculty_emailid, [full_faculty_experience] = @full_faculty_experience, [full_faculty_specialization] = @full_faculty_specialization, [full_faculty_publication] = @full_faculty_publication WHERE [full_faculty_id] = @full_faculty_id">
    <DeleteParameters>
        <asp:Parameter Name="full_faculty_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="full_faculty_image" Type="String" />
        <asp:Parameter Name="full_faculty_name" Type="String" />
        <asp:Parameter Name="full_faculty_qualification" Type="String" />
        <asp:Parameter Name="full_faculty_designation" Type="String" />
        <asp:Parameter Name="full_faculty_emailid" Type="String" />
        <asp:Parameter Name="full_faculty_experience" Type="String" />
        <asp:Parameter Name="full_faculty_specialization" Type="String" />
        <asp:Parameter Name="full_faculty_publication" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="full_faculty_image" Type="String" />
        <asp:Parameter Name="full_faculty_name" Type="String" />
        <asp:Parameter Name="full_faculty_qualification" Type="String" />
        <asp:Parameter Name="full_faculty_designation" Type="String" />
        <asp:Parameter Name="full_faculty_emailid" Type="String" />
        <asp:Parameter Name="full_faculty_experience" Type="String" />
        <asp:Parameter Name="full_faculty_specialization" Type="String" />
        <asp:Parameter Name="full_faculty_publication" Type="String" />
        <asp:Parameter Name="full_faculty_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

<br />
<br />
<br />

</form>

</asp:Content>

