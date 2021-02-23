<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Behavioral_Guest_Faculty.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Behavioral Science Guest Lectures</h4>
                </div>
                <div class="card-body ">
                  <div class="form-group has-label">
                    <label>
                     Behavioral Science Guest Faculty Name
                    </label>
                      <asp:TextBox ID="txtguestfacu_name" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="30" required="" ></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                     Behavioral Science Guest Faculty Designation 
                    </label>
                      <asp:TextBox ID="txtguestfacu_desi" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="200" required="" ></asp:TextBox>
                  </div>
                    
                    <div class="form-group has-label">
                    <label>
                     Behavioral Science Guest Faculty Organization
                    </label>
                      <asp:TextBox ID="txtguestfacu_organi" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="100" required="" ></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                     Behavioral Science Guest Faculty Topic
                    </label>
                      <asp:TextBox ID="txtguestfacu_topic" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="100" required="" ></asp:TextBox>
                  </div>
                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_submit_Click" />
                    
                </div>
              </div>

                <div class="table-responsive">
<asp:GridView ID="gridview_behavioral_guest_faculty" runat="server" CssClass="table table-striped table-bordered table-hover" 
                  AutoGenerateColumns="False" DataKeyNames="guest_faculty_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="guest_faculty_id" HeaderText="Guest Faculty Id" ReadOnly="True"
            SortExpression="guest_faculty_id" />
        <asp:BoundField DataField="guest_faculty_name" HeaderText="Guest Faculty Name" 
            SortExpression="guest_faculty_name" />
        <asp:BoundField DataField="guest_faculty_desi" 
            HeaderText="Guest Faculty Designation" SortExpression="guest_faculty_desi" />
        <asp:BoundField DataField="guest_faculty_organi" HeaderText="Guest Faculty Organisation"
            SortExpression="guest_faculty_organi" />
        <asp:BoundField DataField="guest_faculty_topic" HeaderText="Guest Faculty Topic"
            SortExpression="guest_faculty_topic" />
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
    DeleteCommand="DELETE FROM [Admin_Behavioral_Guest_Faculty] WHERE [guest_faculty_id] = @guest_faculty_id"
    InsertCommand="INSERT INTO [Admin_Behavioral_Guest_Faculty] ([guest_faculty_name], [guest_faculty_desi], [guest_faculty_organi], [guest_faculty_topic]) VALUES (@guest_faculty_name, @guest_faculty_desi, @guest_faculty_organi, @guest_faculty_topic)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [guest_faculty_id], [guest_faculty_name], [guest_faculty_desi], [guest_faculty_organi], [guest_faculty_topic] FROM [Admin_Behavioral_Guest_Faculty]"
    UpdateCommand="UPDATE [Admin_Behavioral_Guest_Faculty] SET [guest_faculty_name] = @guest_faculty_name, [guest_faculty_desi] = @guest_faculty_desi, [guest_faculty_organi] = @guest_faculty_organi, [guest_faculty_topic] = @guest_faculty_topic WHERE [guest_faculty_id] = @guest_faculty_id">
    <DeleteParameters>
        <asp:Parameter Name="guest_faculty_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="guest_faculty_name" Type="String" />
        <asp:Parameter Name="guest_faculty_desi" Type="String" />
        <asp:Parameter Name="guest_faculty_organi" Type="String" />
        <asp:Parameter Name="guest_faculty_topic" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="guest_faculty_name" Type="String" />
        <asp:Parameter Name="guest_faculty_desi" Type="String" />
        <asp:Parameter Name="guest_faculty_organi" Type="String" />
        <asp:Parameter Name="guest_faculty_topic" Type="String" />
        <asp:Parameter Name="guest_faculty_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
              <br />
              <br />

</form>

</asp:Content>

