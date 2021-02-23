<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Research_Program.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Research and Development Program</h4>
                </div>
               <div class="card-body ">

                    <div class="form-group has-label">
                    <label>
                      Research and Development Program Course
                    </label>
                      
                      <asp:TextBox ID="txtresearch_coursename" class="form-control" runat="server" 
                          TextMode="Singleline" MaxLength="100" required=""></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                     Research and Development Eligibility Criteria
                    </label>
                      
                      <asp:TextBox ID="txtresearch_criteria" class="form-control" runat="server" 
                          TextMode="MultiLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Research and Development Duration
                    </label>
                      
                      <asp:TextBox ID="txtresearch_duration" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="50" required=""></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Research and Development Number Of Seats
                    </label>
                      
                      <asp:TextBox ID="txtresearch_seats" class="form-control" runat="server" MaxLength="100" 
                         required="" ></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Research and Development Program Course Fee
                    </label>
                      
                      <asp:TextBox ID="txtresearch_coursefee" class="form-control" runat="server" 
                          TextMode="Multiline" MaxLength="500" required=""></asp:TextBox>
                  </div>
                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_Submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_Submit_Click" />    
                </div>
              </div>
<div class="table-responsive">
<asp:GridView ID="gridview_research_program" runat="server" CssClass="table table-striped table-bordered table-hover"  AutoGenerateColumns="False" DataKeyNames="research_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="research_id" HeaderText="Research Id" ReadOnly="True"
            SortExpression="research_id" />
        <asp:BoundField DataField="research_course" HeaderText="Research Course" 
            SortExpression="research_course" />
        <asp:BoundField DataField="research_elligi_criteria" HeaderText="Research Elligibility Criteria"
            SortExpression="research_elligi_criteria" />
        <asp:BoundField DataField="research_duration" HeaderText="Research Duration" 
            SortExpression="research_duration" />
        <asp:BoundField DataField="research_seats" HeaderText="Research Seats" 
            SortExpression="research_seats" />
        <asp:BoundField DataField="research_course_fees" HeaderText="Research Course Fees"
            SortExpression="research_course_fees" />
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
    DeleteCommand="DELETE FROM [Admin_Research_Program] WHERE [research_id] = @research_id"
    InsertCommand="INSERT INTO [Admin_Research_Program] ([research_course], [research_elligi_criteria], [research_duration], [research_seats], [research_course_fees]) VALUES (@research_course, @research_elligi_criteria, @research_duration, @research_seats, @research_course_fees)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [research_id], [research_course], [research_elligi_criteria], [research_duration], [research_seats], [research_course_fees] FROM [Admin_Research_Program]"
    UpdateCommand="UPDATE [Admin_Research_Program] SET [research_course] = @research_course, [research_elligi_criteria] = @research_elligi_criteria, [research_duration] = @research_duration, [research_seats] = @research_seats, [research_course_fees] = @research_course_fees WHERE [research_id] = @research_id">
    <DeleteParameters>
        <asp:Parameter Name="research_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="research_course" Type="String" />
        <asp:Parameter Name="research_elligi_criteria" Type="String" />
        <asp:Parameter Name="research_duration" Type="String" />
        <asp:Parameter Name="research_seats" Type="String" />
        <asp:Parameter Name="research_course_fees" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="research_course" Type="String" />
        <asp:Parameter Name="research_elligi_criteria" Type="String" />
        <asp:Parameter Name="research_duration" Type="String" />
        <asp:Parameter Name="research_seats" Type="String" />
        <asp:Parameter Name="research_course_fees" Type="String" />
        <asp:Parameter Name="research_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
              <br />
              <br />
</form>

</asp:Content>

