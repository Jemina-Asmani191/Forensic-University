<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Forensic_Science_Program.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Forensic Science Programs</h4>
                </div>
               <div class="card-body ">

                    <div class="form-group has-label">
                    <label>
                      Forensic Science Program Course
                    </label>
                      
                      <asp:TextBox ID="txtfore_coursename" class="form-control" runat="server" 
                          TextMode="Singleline" MaxLength="50" required=""></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Forensic Science Eligibility Criteria
                    </label>
                      
                      <asp:TextBox ID="txtfore_criteria" class="form-control" runat="server" 
                          TextMode="MultiLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Forensic Science Duration
                    </label>
                      
                      <asp:TextBox ID="txtfore_duration" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="10" required=""></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Forensic Science Number Of Seats
                    </label>
                      
                      <asp:TextBox ID="txtfore_seats" class="form-control" runat="server" MaxLength="20" 
                          required=""></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Forensic Science Course Fee
                    </label>
                      
                      <asp:TextBox ID="txtfore_coursefee" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="20" required=""></asp:TextBox>
                  </div>
                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_Submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_Submit_Click" />    
                </div>
              </div>
              <div class="table-responsive">
<asp:GridView ID="gridview_forensic_science_program" runat="server" CssClass="table table-striped table-bordered table-hover"  AutoGenerateColumns="False" DataKeyNames="forensic_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="forensic_id" HeaderText="Forensic Id" ReadOnly="True"
            SortExpression="forensic_id" />
        <asp:BoundField DataField="forensic_coursename" HeaderText="Forensic Course Name"
            SortExpression="forensic_coursename" />
        <asp:BoundField DataField="forensic_eligibility_criteria" HeaderText="Forensic Eligibility Criteria"
            SortExpression="forensic_eligibility_criteria" />
        <asp:BoundField DataField="forensic_duration" HeaderText="Forensic Duration" 
            SortExpression="forensic_duration" />
        <asp:BoundField DataField="forensic_seats" HeaderText="Forensic Seats" 
            SortExpression="forensic_seats" />
        <asp:BoundField DataField="forensic_course_fee" HeaderText="Forensic Course Fee"
            SortExpression="forensic_course_fee" />
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
    DeleteCommand="DELETE FROM [Admin_Forensic_Program] WHERE [forensic_id] = @forensic_id"
    InsertCommand="INSERT INTO [Admin_Forensic_Program] ([forensic_coursename], [forensic_eligibility_criteria], [forensic_duration], [forensic_seats], [forensic_course_fee]) VALUES (@forensic_coursename, @forensic_eligibility_criteria, @forensic_duration, @forensic_seats, @forensic_course_fee)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [forensic_id], [forensic_coursename], [forensic_eligibility_criteria], [forensic_duration], [forensic_seats], [forensic_course_fee] FROM [Admin_Forensic_Program]"
    UpdateCommand="UPDATE [Admin_Forensic_Program] SET [forensic_coursename] = @forensic_coursename, [forensic_eligibility_criteria] = @forensic_eligibility_criteria, [forensic_duration] = @forensic_duration, [forensic_seats] = @forensic_seats, [forensic_course_fee] = @forensic_course_fee WHERE [forensic_id] = @forensic_id">
    <DeleteParameters>
        <asp:Parameter Name="forensic_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="forensic_coursename" Type="String" />
        <asp:Parameter Name="forensic_eligibility_criteria" Type="String" />
        <asp:Parameter Name="forensic_duration" Type="String" />
        <asp:Parameter Name="forensic_seats" Type="String" />
        <asp:Parameter Name="forensic_course_fee" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="forensic_coursename" Type="String" />
        <asp:Parameter Name="forensic_eligibility_criteria" Type="String" />
        <asp:Parameter Name="forensic_duration" Type="String" />
        <asp:Parameter Name="forensic_seats" Type="String" />
        <asp:Parameter Name="forensic_course_fee" Type="String" />
        <asp:Parameter Name="forensic_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

<br />
<br />
<br />

</form>



</asp:Content>

