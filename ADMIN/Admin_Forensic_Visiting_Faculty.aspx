<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Forensic_Visiting_Faculty.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Forensic Science Visiting Faculty</h4>
                </div>
                <div class="card-body ">
                  <div class="form-group has-label">
                    <label>
                     Forensic Science Visiting Faculty Name
                    </label>
                      <asp:TextBox ID="txtvisifacu_name" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="30" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                     Forensic Science Visiting Faculty Designation
                    </label>
                      <asp:TextBox ID="txtvisifacu_desi" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="50" required=""></asp:TextBox>
                  </div>
                    
                    <div class="form-group has-label">
                    <label>
                     Forensic Science Visiting Faculty Organization
                    </label>
                      <asp:TextBox ID="txtvisifacu_organi" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="50" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                     Forensic Science Visiting Faculty Qualification
                    </label>
                      <asp:TextBox ID="txtvisifacu_quali" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="20" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                     Forensic Science Visiting Faculty Specialization
                    </label>
                      <asp:TextBox ID="txtvisifacu_speci" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="30" required=""></asp:TextBox>
                  </div>
                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_submit_Click" />
                    
                </div>
              </div>
              <div class="table-responsive">

<asp:GridView ID="gridview_forensic_visiting_faculty" runat="server" CssClass="table table-striped table-bordered table-hover" 
 AutoGenerateColumns="False" DataKeyNames="visiting_faculty_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="visiting_faculty_id" HeaderText="Visiting Faculty Id"
            ReadOnly="True" SortExpression="visiting_faculty_id" />
        <asp:BoundField DataField="visiting_faculty_name" HeaderText="Visiting Faculty Name"
            SortExpression="visiting_faculty_name" />
        <asp:BoundField DataField="visiting_faculty_desig" HeaderText="Visiting Faculty Designation"
            SortExpression="visiting_faculty_desig" />
        <asp:BoundField DataField="visiting_faculty_organi" HeaderText="Visiting Faculty Organisation"
            SortExpression="visiting_faculty_organi" />
        <asp:BoundField DataField="visiting_faculty_qualifi" HeaderText="Visiting Faculty Qualification"
            SortExpression="visiting_faculty_qualifi" />
        <asp:BoundField DataField="visiting_faculty_specia" HeaderText="Visiting Faculty Specialization"
            SortExpression="visiting_faculty_specia" />
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
    DeleteCommand="DELETE FROM [Admin_Forensic_Visiting_Faculty] WHERE [visiting_faculty_id] = @visiting_faculty_id"
    InsertCommand="INSERT INTO [Admin_Forensic_Visiting_Faculty] ([visiting_faculty_name], [visiting_faculty_desig], [visiting_faculty_organi], [visiting_faculty_qualifi], [visiting_faculty_specia]) VALUES (@visiting_faculty_name, @visiting_faculty_desig, @visiting_faculty_organi, @visiting_faculty_qualifi, @visiting_faculty_specia)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [visiting_faculty_id], [visiting_faculty_name], [visiting_faculty_desig], [visiting_faculty_organi], [visiting_faculty_qualifi], [visiting_faculty_specia] FROM [Admin_Forensic_Visiting_Faculty]"
    UpdateCommand="UPDATE [Admin_Forensic_Visiting_Faculty] SET [visiting_faculty_name] = @visiting_faculty_name, [visiting_faculty_desig] = @visiting_faculty_desig, [visiting_faculty_organi] = @visiting_faculty_organi, [visiting_faculty_qualifi] = @visiting_faculty_qualifi, [visiting_faculty_specia] = @visiting_faculty_specia WHERE [visiting_faculty_id] = @visiting_faculty_id">
    <DeleteParameters>
        <asp:Parameter Name="visiting_faculty_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="visiting_faculty_name" Type="String" />
        <asp:Parameter Name="visiting_faculty_desig" Type="String" />
        <asp:Parameter Name="visiting_faculty_organi" Type="String" />
        <asp:Parameter Name="visiting_faculty_qualifi" Type="String" />
        <asp:Parameter Name="visiting_faculty_specia" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="visiting_faculty_name" Type="String" />
        <asp:Parameter Name="visiting_faculty_desig" Type="String" />
        <asp:Parameter Name="visiting_faculty_organi" Type="String" />
        <asp:Parameter Name="visiting_faculty_qualifi" Type="String" />
        <asp:Parameter Name="visiting_faculty_specia" Type="String" />
        <asp:Parameter Name="visiting_faculty_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

<br />
<br />
<br />

</form>


</asp:Content>

