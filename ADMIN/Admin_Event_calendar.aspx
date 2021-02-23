<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_master.master" AutoEventWireup="true" CodeFile="Admin_Event_calendar.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Event Calendar</h4>
                </div>
                <div class="card-body ">

                <label>
                    Event Calendar Image
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploadevent_image" class="form-control" placeholder="Event Calendar Image" runat="server"  required="" />
                    </div>


                  <div class="form-group has-label">
                    <label>
                      Event Calendar Image Description
                    </label>
                      
                      <asp:TextBox ID="txteventimage_desc" class="form-control" runat="server" 
                          TextMode="MultiLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
                    
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadimage" runat="server" class="btn btn-primary" 
                        Text="Upload" onclick="btn_uploadimage_Click" /><br />
                    <asp:Label ID="lbl_path" runat="server" Text=""></asp:Label>
                </div>
              </div>
              <div class="table-responsive">
<asp:GridView ID="gridview_event_calender" runat="server" CssClass="table table-striped table-bordered table-hover" 
 AutoGenerateColumns="False" DataKeyNames="event_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="event_id" HeaderText="Event Id" ReadOnly="True" 
            SortExpression="event_id" />
        
        <asp:TemplateField HeaderText="Image">
        <ItemTemplate>
            <img src='../Event Image/<%#Eval("event_image") %>' height="70px" />
            
        </ItemTemplate>
        </asp:TemplateField>


        <asp:BoundField DataField="event_image" HeaderText="Event Image" 
            SortExpression="event_image" />
        <asp:BoundField DataField="event_desc" HeaderText="Event Description" 
            SortExpression="event_desc" />
        
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
    DeleteCommand="DELETE FROM [Admin_Event_calendar] WHERE [event_id] = @event_id"
    InsertCommand="INSERT INTO [Admin_Event_calendar] ([event_image], [event_desc]) VALUES (@event_image, @event_desc)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [event_id], [event_image], [event_desc] FROM [Admin_Event_calendar]"
    UpdateCommand="UPDATE [Admin_Event_calendar] SET [event_image] = @event_image, [event_desc] = @event_desc WHERE [event_id] = @event_id">
    <DeleteParameters>
        <asp:Parameter Name="event_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="event_image" Type="String" />
        <asp:Parameter Name="event_desc" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="event_image" Type="String" />
        <asp:Parameter Name="event_desc" Type="String" />
        <asp:Parameter Name="event_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

<br />
<br />
<br />

</form>
    </asp:Content>

