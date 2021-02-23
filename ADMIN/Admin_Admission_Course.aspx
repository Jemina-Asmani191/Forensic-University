<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Admission_Course.aspx.cs" Inherits="ADMIN_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br />
<br />
<br />
<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Admission Courses</h4>
                </div>
               
               <div class="card-body ">
                    <div class="form-group has-label">
                    <label>
                      Course Name   
                    </label>
                      
                      <asp:TextBox ID="txtcourse_name" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="100" required="" ></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Course duration
                    </label>
                      
                      <asp:TextBox ID="txtcourse_duration" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="20" required="" ></asp:TextBox>
                  </div>

                   <div class="form-group has-label">
                    <label>
                      Course Fees
                    </label>
                      
                      <asp:TextBox ID="txtcourse_fees" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="20" required="" ></asp:TextBox>
                  </div>


                  
                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_Submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_Submit_Click"  />    
                </div>
              </div>
 <div class="table-responsive">
     <asp:GridView ID="gridview_course_admission" runat="server"  
         CssClass="table table-striped table-bordered table-hover"   
         AutoGenerateColumns="False" DataKeyNames="course_id"
         DataSourceID="SqlDataSource1" 
         EmptyDataText="There are no data records to display." AllowPaging="True" 
         CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
         <Columns>
             <asp:BoundField DataField="course_id" HeaderText="Course Id" ReadOnly="True" 
                 SortExpression="course_id" />
             <asp:BoundField DataField="course_name" HeaderText="Course Name" 
                 SortExpression="course_name" />
             <asp:BoundField DataField="course_duration" HeaderText="Course Duration" 
                 SortExpression="course_duration" />
             <asp:BoundField DataField="course_fee" HeaderText="Course Fees" 
                 SortExpression="course_fee" />
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
         DeleteCommand="DELETE FROM [Admission_Course] WHERE [course_id] = @course_id"
         InsertCommand="INSERT INTO [Admission_Course] ([course_name], [course_duration], [course_fee]) VALUES (@course_name, @course_duration, @course_fee)"
         ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
         SelectCommand="SELECT [course_id], [course_name], [course_duration], [course_fee] FROM [Admission_Course]"
         UpdateCommand="UPDATE [Admission_Course] SET [course_name] = @course_name, [course_duration] = @course_duration, [course_fee] = @course_fee WHERE [course_id] = @course_id">
         <DeleteParameters>
             <asp:Parameter Name="course_id" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="course_name" Type="String" />
             <asp:Parameter Name="course_duration" Type="String" />
             <asp:Parameter Name="course_fee" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="course_name" Type="String" />
             <asp:Parameter Name="course_duration" Type="String" />
             <asp:Parameter Name="course_fee" Type="String" />
             <asp:Parameter Name="course_id" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>
</form>
</asp:Content>

