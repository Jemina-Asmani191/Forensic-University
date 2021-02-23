<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Research_Guest_Lectures.aspx.cs" Inherits="ADMIN_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Research and Development Program Guest Lectures</h4>
                </div>
                <div class="card-body ">
                  <div class="form-group has-label">
                    <label>
                     Research and Development Guest Lectures Name
                    </label>
                      <asp:TextBox ID="txtguestfacu_name" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="100" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                     Research and Development Guest Lectures Designation
                    </label>
                      <asp:TextBox ID="txtguestfacu_desi" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="100" required=""></asp:TextBox>
                  </div>
                    
                    <div class="form-group has-label">
                    <label>
                     Research and Development Guest Lectures Organization
                    </label>
                      <asp:TextBox ID="txtguestfacu_organi" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="100" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                     Behavioral Science Guest Lectures Topic
                    </label>
                      <asp:TextBox ID="txtguestfacu_topic" class="form-control" runat="server" 
                          TextMode="Multiline" MaxLength="200" required=""></asp:TextBox>
                  </div>
                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_submit_Click"  />
                </div>
              </div>
              <div class="table-responsive">

<asp:GridView ID="gridview_guest_lectures" runat="server" CssClass="table table-striped table-bordered table-hover"  AutoGenerateColumns="False" DataKeyNames="guest_facul_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="guest_facul_id" 
            HeaderText="Research Guest Faculty Id" ReadOnly="True"
            SortExpression="guest_facul_id" />
        <asp:BoundField DataField="guest_facul_name" 
            HeaderText="Research Guest Faculty Name" SortExpression="guest_facul_name" />
        <asp:BoundField DataField="guest_facul_designa" HeaderText="Research Guest Faculty Designation"
            SortExpression="guest_facul_designa" />
        <asp:BoundField DataField="guest_facul_organisa" HeaderText="Research Guest Faculty Organization"
            SortExpression="guest_facul_organisa" />
        <asp:BoundField DataField="guest_facul_topic" 
            HeaderText="Research Guest Faculty Topic" SortExpression="guest_facul_topic" />
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
    DeleteCommand="DELETE FROM [Admin_Research_Guest_Lectures] WHERE [guest_facul_id] = @guest_facul_id"
    InsertCommand="INSERT INTO [Admin_Research_Guest_Lectures] ([guest_facul_name], [guest_facul_designa], [guest_facul_organisa], [guest_facul_topic]) VALUES (@guest_facul_name, @guest_facul_designa, @guest_facul_organisa, @guest_facul_topic)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [guest_facul_id], [guest_facul_name], [guest_facul_designa], [guest_facul_organisa], [guest_facul_topic] FROM [Admin_Research_Guest_Lectures]"
    UpdateCommand="UPDATE [Admin_Research_Guest_Lectures] SET [guest_facul_name] = @guest_facul_name, [guest_facul_designa] = @guest_facul_designa, [guest_facul_organisa] = @guest_facul_organisa, [guest_facul_topic] = @guest_facul_topic WHERE [guest_facul_id] = @guest_facul_id">
    <DeleteParameters>
        <asp:Parameter Name="guest_facul_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="guest_facul_name" Type="String" />
        <asp:Parameter Name="guest_facul_designa" Type="String" />
        <asp:Parameter Name="guest_facul_organisa" Type="String" />
        <asp:Parameter Name="guest_facul_topic" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="guest_facul_name" Type="String" />
        <asp:Parameter Name="guest_facul_designa" Type="String" />
        <asp:Parameter Name="guest_facul_organisa" Type="String" />
        <asp:Parameter Name="guest_facul_topic" Type="String" />
        <asp:Parameter Name="guest_facul_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
              <br />
              <br />

</form>

</asp:Content>

