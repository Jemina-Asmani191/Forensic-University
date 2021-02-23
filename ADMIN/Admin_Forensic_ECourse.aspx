<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Forensic_ECourse.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br />
<br />
<br />
<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Forensic E-Course</h4>
                </div>
               
               <div class="card-body ">
                    <div class="form-group has-label">
                    <label>
                      Forensic E-Course Course Name
                    </label>
                      
                      <asp:TextBox ID="txtecourse_name" class="form-control" runat="server" 
                          TextMode="multiline" MaxLength="300" required=""></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Forensic E-Course Duration
                    </label>
                      
                      <asp:TextBox ID="txtecourse_duration" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="80" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                      Forensic E-Course Eligibility Criteria
                    </label>
                      
                      <asp:TextBox ID="txtecourse_eligibilty_criteria" class="form-control" runat="server" 
                          TextMode="multiline" MaxLength="500" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                      Forensic E-Course No. Of Seats
                    </label>
                      
                      <asp:TextBox ID="txtecourse_seats" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="2" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                      Forensic E-Course Fees
                    </label>
                      
                      <asp:TextBox ID="txtecourse_fees" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="150" required=""></asp:TextBox>
                  </div>

                  
                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_Submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_Submit_Click"  />    
                </div>
              </div>
              <div class="table-responsive">

<asp:GridView ID="gridview_forensic_ecourse" runat="server" CssClass="table table-striped table-bordered table-hover" 
 AutoGenerateColumns="False" DataKeyNames="ecourse_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="ecourse_id" HeaderText="E-Course Id" ReadOnly="True" 
            SortExpression="ecourse_id" />
        <asp:BoundField DataField="ecourse_name" HeaderText="E-Course Name" 
            SortExpression="ecourse_name" />
        <asp:BoundField DataField="ecourse_duration" HeaderText="E-Course Duration" 
            SortExpression="ecourse_duration" />
        <asp:BoundField DataField="ecourse_ellig_crit" 
            HeaderText="E-Course Eligibility Criteria" 
            SortExpression="ecourse_ellig_crit" />
        <asp:BoundField DataField="ecourse_seats" HeaderText="No of Seats" 
            SortExpression="ecourse_seats" />
        <asp:BoundField DataField="ecourse_fees" 
            HeaderText="Course Fee(in Total) + Application Fee" 
            SortExpression="ecourse_fees" />
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
    DeleteCommand="DELETE FROM [Admin_Forensic_ECourse] WHERE [ecourse_id] = @ecourse_id"
    InsertCommand="INSERT INTO [Admin_Forensic_ECourse] ([ecourse_name], [ecourse_duration], [ecourse_ellig_crit], [ecourse_seats], [ecourse_fees]) VALUES (@ecourse_name, @ecourse_duration, @ecourse_ellig_crit, @ecourse_seats, @ecourse_fees)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [ecourse_id], [ecourse_name], [ecourse_duration], [ecourse_ellig_crit], [ecourse_seats], [ecourse_fees] FROM [Admin_Forensic_ECourse]"
    UpdateCommand="UPDATE [Admin_Forensic_ECourse] SET [ecourse_name] = @ecourse_name, [ecourse_duration] = @ecourse_duration, [ecourse_ellig_crit] = @ecourse_ellig_crit, [ecourse_seats] = @ecourse_seats, [ecourse_fees] = @ecourse_fees WHERE [ecourse_id] = @ecourse_id">
    <DeleteParameters>
        <asp:Parameter Name="ecourse_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ecourse_name" Type="String" />
        <asp:Parameter Name="ecourse_duration" Type="String" />
        <asp:Parameter Name="ecourse_ellig_crit" Type="String" />
        <asp:Parameter Name="ecourse_seats" Type="Decimal" />
        <asp:Parameter Name="ecourse_fees" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ecourse_name" Type="String" />
        <asp:Parameter Name="ecourse_duration" Type="String" />
        <asp:Parameter Name="ecourse_ellig_crit" Type="String" />
        <asp:Parameter Name="ecourse_seats" Type="Decimal" />
        <asp:Parameter Name="ecourse_fees" Type="String" />
        <asp:Parameter Name="ecourse_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
              <br />
              <br />


              </form>


</asp:Content>

