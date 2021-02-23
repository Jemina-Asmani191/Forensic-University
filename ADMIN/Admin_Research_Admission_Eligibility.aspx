<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Research_Admission_Eligibility.aspx.cs" Inherits="ADMIN_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Research and Development Admission and Eligibility</h4>
                </div>
                <div class="card-body ">
                  <div class="form-group has-label">
                    <label>
                     Research and Development Admission and Eligibility Course Name
                    </label>
                      <asp:TextBox ID="txtcourse_name" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="80" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                     Research and Development Admission and Eligibility Course Duration
                    </label>
                      <asp:TextBox ID="txtcourse_duration" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="30" required=""></asp:TextBox>
                  </div>
                    
                    <div class="form-group has-label">
                    <label>
                     Research and Development Admission and Eligibility Course Criteria
                    </label>
                      <asp:TextBox ID="txtcourse_criteria" class="form-control" runat="server" 
                          TextMode="multiline" MaxLength="400" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                      Research and Development Admission and Eligibility No of Seats
                    </label>
                      <asp:TextBox ID="txtcourse_seats" class="form-control" runat="server" 
                          TextMode="Singleline" MaxLength="100" required=""></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Research and Development Admission and Eligibility Course Fees    
                    </label>
                      <asp:TextBox ID="txtcourse_fees" class="form-control" runat="server" 
                          TextMode="Multiline" MaxLength="500" required=""></asp:TextBox>
                  </div>
                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_submit_Click"  />
                </div>
              </div>
              <div class="table-responsive">
<asp:GridView ID="gridview_research_admission_eligibility" runat="server" CssClass="table table-striped table-bordered table-hover" 
                  AutoGenerateColumns="False" DataKeyNames="admission_eligi_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="admission_eligi_id" 
            HeaderText="Admission Eligibility Id" ReadOnly="True"
            SortExpression="admission_eligi_id" />
        <asp:BoundField DataField="admission_eligi_course" HeaderText="Admission Eligibility Course"
            SortExpression="admission_eligi_course" />
        <asp:BoundField DataField="admission_eligi_duration" HeaderText="Admission Eligibility Duration"
            SortExpression="admission_eligi_duration" />
        <asp:BoundField DataField="admission_eligi_criteria" HeaderText="Admission Eligibility Criteria"
            SortExpression="admission_eligi_criteria" />
        <asp:BoundField DataField="admission_eligi_seats" HeaderText="Admission Eligibility seats"
            SortExpression="admission_eligi_seats" />
        <asp:BoundField DataField="admission_eligi_fees" HeaderText="Admission Eligibility fees"
            SortExpression="admission_eligi_fees" />
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
    DeleteCommand="DELETE FROM [Admin_Research_Admission_Eligibility] WHERE [admission_eligi_id] = @admission_eligi_id"
    InsertCommand="INSERT INTO [Admin_Research_Admission_Eligibility] ([admission_eligi_course], [admission_eligi_duration], [admission_eligi_criteria], [admission_eligi_seats], [admission_eligi_fees]) VALUES (@admission_eligi_course, @admission_eligi_duration, @admission_eligi_criteria, @admission_eligi_seats, @admission_eligi_fees)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [admission_eligi_id], [admission_eligi_course], [admission_eligi_duration], [admission_eligi_criteria], [admission_eligi_seats], [admission_eligi_fees] FROM [Admin_Research_Admission_Eligibility]"
    UpdateCommand="UPDATE [Admin_Research_Admission_Eligibility] SET [admission_eligi_course] = @admission_eligi_course, [admission_eligi_duration] = @admission_eligi_duration, [admission_eligi_criteria] = @admission_eligi_criteria, [admission_eligi_seats] = @admission_eligi_seats, [admission_eligi_fees] = @admission_eligi_fees WHERE [admission_eligi_id] = @admission_eligi_id">
    <DeleteParameters>
        <asp:Parameter Name="admission_eligi_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="admission_eligi_course" Type="String" />
        <asp:Parameter Name="admission_eligi_duration" Type="String" />
        <asp:Parameter Name="admission_eligi_criteria" Type="String" />
        <asp:Parameter Name="admission_eligi_seats" Type="String" />
        <asp:Parameter Name="admission_eligi_fees" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="admission_eligi_course" Type="String" />
        <asp:Parameter Name="admission_eligi_duration" Type="String" />
        <asp:Parameter Name="admission_eligi_criteria" Type="String" />
        <asp:Parameter Name="admission_eligi_seats" Type="String" />
        <asp:Parameter Name="admission_eligi_fees" Type="String" />
        <asp:Parameter Name="admission_eligi_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
              <br />
              <br />

</form>

</asp:Content>

