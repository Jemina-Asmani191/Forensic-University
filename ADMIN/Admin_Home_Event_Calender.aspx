<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Home_Event_Calender.aspx.cs" Inherits="ADMIN_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Home Page Event Calender</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                     Event Date Number
                    </label>
                      
                      <asp:TextBox ID="txtevent_date" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="2" required=""></asp:TextBox>
                  </div>
               

            <div class="form-group has-label">
                    <label>
                     Event Date Month
                    </label>
                      
                      <asp:TextBox ID="txtevent_month" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="3" required=""></asp:TextBox>
                  </div>

                   <div class="form-group has-label">
                    <label>
                     Event Name
                    </label>
                      
                      <asp:TextBox ID="txtevent_name" class="form-control" runat="server" 
                          TextMode="multiline" MaxLength="500" required=""></asp:TextBox>
                  </div>

                 

                       <div class="form-group has-label">
                    <label>
                     Event venue
                    </label>
                      
                      <asp:TextBox ID="txtevent_venue" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="100" required=""></asp:TextBox>
                  </div>


                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_submit_Click"    /><br />
                    <asp:Label ID="lbl_path1" runat="server" Text=""></asp:Label>
                </div>
              </div>
              <div class="table-responsive">
                  <asp:GridView ID="gridview_home_event_calender" runat="server" CssClass="table table-striped table-bordered table-hover"
                   AutoGenerateColumns="False" DataKeyNames="event_id"
                      DataSourceID="SqlDataSource1" 
                      EmptyDataText="There are no data records to display." AllowPaging="True" 
                      CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="10" Width="100%">
                      <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                      <Columns>
                          <asp:BoundField DataField="event_id" HeaderText="Event Id" ReadOnly="True" 
                              SortExpression="event_id" />
                          <asp:BoundField DataField="event_date" HeaderText="Event Date" 
                              SortExpression="event_date" />
                          <asp:BoundField DataField="event_month" HeaderText="Event Month" 
                              SortExpression="event_month" />
                          <asp:BoundField DataField="event_name" HeaderText="Event Name" 
                              SortExpression="event_name" />
                          <asp:BoundField DataField="event_venue" HeaderText="Event Venue" 
                              SortExpression="event_venue" />
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
                      DeleteCommand="DELETE FROM [Admin_Home_Event_Calender] WHERE [event_id] = @event_id"
                      InsertCommand="INSERT INTO [Admin_Home_Event_Calender] ([event_date], [event_month], [event_name], [event_venue]) VALUES (@event_date, @event_month, @event_name, @event_venue)"
                      ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
                      SelectCommand="SELECT [event_id], [event_date], [event_month], [event_name], [event_venue] FROM [Admin_Home_Event_Calender]"
                      UpdateCommand="UPDATE [Admin_Home_Event_Calender] SET [event_date] = @event_date, [event_month] = @event_month, [event_name] = @event_name, [event_venue] = @event_venue WHERE [event_id] = @event_id">
                      <DeleteParameters>
                          <asp:Parameter Name="event_id" Type="Int32" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="event_date" Type="Decimal" />
                          <asp:Parameter Name="event_month" Type="String" />
                          <asp:Parameter Name="event_name" Type="String" />
                          <asp:Parameter Name="event_venue" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="event_date" Type="Decimal" />
                          <asp:Parameter Name="event_month" Type="String" />
                          <asp:Parameter Name="event_name" Type="String" />
                          <asp:Parameter Name="event_venue" Type="String" />
                          <asp:Parameter Name="event_id" Type="Int32" />
                      </UpdateParameters>
                  </asp:SqlDataSource>
             
              </form>
</asp:Content>

