<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_master.master" AutoEventWireup="true" CodeFile="Admin_Academic_Calendar.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />
<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Academic Calendar</h4>
                </div>
               
               <div class="card-body ">
                    <div class="form-group has-label">
                    <label>
                      Academic Date
                    </label>
                      
                      <asp:TextBox ID="txtacedate" class="form-control" runat="server" 
                          TextMode="Date" required=""></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Academic calendar Description
                    </label>
                      
                      <asp:TextBox ID="txtacademic_desc" class="form-control" runat="server" 
                          TextMode="MultiLine" MaxLength="500"  required="" ></asp:TextBox>
                  </div>

                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_Submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_Submit_Click" />    
                </div>
              </div>
             
  <div class="table-responsive">
  <asp:GridView ID="gridview_academic_calender" runat="server" 
          CssClass="table table-striped table-bordered table-hover"  
          AutoGenerateColumns="False" DataKeyNames="academic_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" 
          GridLines="None" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
       <%-- <asp:BoundField DataField="academic_date" HeaderText="academic_date" SortExpression="academic_date" />--%>

        <asp:BoundField DataField="academic_id" HeaderText="Academic Id" ReadOnly="True"
            SortExpression="academic_id" />

       <asp:TemplateField HeaderText="Academic Date">
        <ItemTemplate>
            <asp:Label ID="label1" runat="server" DataFormatString="{0:dd-MMM-yyyy}" HtmlEncode="false" Text='<%#Eval("academic_date","{0:dd-MMM-yyyy}")  %>'></asp:Label>
         
        </ItemTemplate>
       
       </asp:TemplateField>
        <asp:BoundField DataField="academic_desc" HeaderText="Academic Description" 
            SortExpression="academic_desc" />
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
    DeleteCommand="DELETE FROM [Admin_Academic_Calendar] WHERE [academic_id] = @academic_id"
    InsertCommand="INSERT INTO [Admin_Academic_Calendar] ([academic_date], [academic_desc]) VALUES (@academic_date, @academic_desc)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [academic_id], [academic_date], [academic_desc] FROM [Admin_Academic_Calendar]"
    UpdateCommand="UPDATE [Admin_Academic_Calendar] SET [academic_desc] = @academic_desc WHERE [academic_id] = @academic_id">
    <DeleteParameters>
        <asp:Parameter Name="academic_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter DbType="Date" Name="academic_date" />
        <asp:Parameter Name="academic_desc" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter DbType="Date" Name="academic_date" />
        <asp:Parameter Name="academic_desc" Type="String" />
        <asp:Parameter Name="academic_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

<br />
<br />
<br />
</form>

</asp:Content>

