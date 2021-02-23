<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Behavioral_Program.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Behavioral Science Program</h4>
                </div>
               <div class="card-body ">

                    <div class="form-group has-label">
                    <label>
                      Behavioral Science Program Course
                    </label>
                      
                      <asp:TextBox ID="txtbehavioral_coursename" class="form-control" runat="server" 
                          TextMode="Singleline" MaxLength="50" required="" ></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Behavioral Science Eligibility Criteria
                    </label>
                      
                      <asp:TextBox ID="txtbehavioral_criteria" class="form-control" runat="server" 
                          TextMode="MultiLine" MaxLength="500" required="" ></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Behavioral Science Duration
                    </label>
                      
                      <asp:TextBox ID="txtbehavioral_duration" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="30" required="" ></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Behavioral Science Number Of Seats
                    </label>
                      
                      <asp:TextBox ID="txtbehavioral_seats" class="form-control" runat="server" MaxLength="60" 
                          required="" ></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Behavioral Science Course Fee
                    </label>
                      
                      <asp:TextBox ID="txtbehavioral_coursefee" class="form-control" runat="server" 
                          TextMode="Multiline" MaxLength="300" required="" ></asp:TextBox>
                  </div>
                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_Submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_Submit_Click" />    
                </div>
              </div>

              <div class="table-responsive">
<asp:GridView ID="gridview_behavioral_program" runat="server" CssClass="table table-striped table-bordered table-hover" 
 AutoGenerateColumns="False" DataKeyNames="behavioral_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="behavioral_id" HeaderText="Behavioral Id" ReadOnly="True"
            SortExpression="behavioral_id" />
        <asp:BoundField DataField="behavioral_course" HeaderText="Behavioral Course" 
            SortExpression="behavioral_course" />
        <asp:BoundField DataField="behavioral_eligibility_criteria" HeaderText="Behavioral Eligibility Criteria"
            SortExpression="behavioral_eligibility_criteria" />
        <asp:BoundField DataField="behavioral_duration" HeaderText="Behavioral Duration"
            SortExpression="behavioral_duration" />
        <asp:BoundField DataField="behavioral_seats" HeaderText="Behavioral Seats" 
            SortExpression="behavioral_seats" />
        <asp:BoundField DataField="behavioral_course_fee" HeaderText="Behavioral Course Fee"
            SortExpression="behavioral_course_fee" />
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
    DeleteCommand="DELETE FROM [Admin_Behavioral_Program] WHERE [behavioral_id] = @behavioral_id"
    InsertCommand="INSERT INTO [Admin_Behavioral_Program] ([behavioral_course], [behavioral_eligibility_criteria], [behavioral_duration], [behavioral_seats], [behavioral_course_fee]) VALUES (@behavioral_course, @behavioral_eligibility_criteria, @behavioral_duration, @behavioral_seats, @behavioral_course_fee)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [behavioral_id], [behavioral_course], [behavioral_eligibility_criteria], [behavioral_duration], [behavioral_seats], [behavioral_course_fee] FROM [Admin_Behavioral_Program]"
    UpdateCommand="UPDATE [Admin_Behavioral_Program] SET [behavioral_course] = @behavioral_course, [behavioral_eligibility_criteria] = @behavioral_eligibility_criteria, [behavioral_duration] = @behavioral_duration, [behavioral_seats] = @behavioral_seats, [behavioral_course_fee] = @behavioral_course_fee WHERE [behavioral_id] = @behavioral_id">
    <DeleteParameters>
        <asp:Parameter Name="behavioral_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="behavioral_course" Type="String" />
        <asp:Parameter Name="behavioral_eligibility_criteria" Type="String" />
        <asp:Parameter Name="behavioral_duration" Type="String" />
        <asp:Parameter Name="behavioral_seats" Type="String" />
        <asp:Parameter Name="behavioral_course_fee" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="behavioral_course" Type="String" />
        <asp:Parameter Name="behavioral_eligibility_criteria" Type="String" />
        <asp:Parameter Name="behavioral_duration" Type="String" />
        <asp:Parameter Name="behavioral_seats" Type="String" />
        <asp:Parameter Name="behavioral_course_fee" Type="String" />
        <asp:Parameter Name="behavioral_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
              <br />

<br />
</form>

</asp:Content>

