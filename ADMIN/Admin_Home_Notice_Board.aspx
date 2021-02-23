<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Home_Notice_Board.aspx.cs" Inherits="ADMIN_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Home Page Notice Board</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                     Notice Board Description 
                    </label>
                      
                      <asp:TextBox ID="txthome_notice_desc" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
               

            <div class="form-group has-label">
                    <label>
                     Notice Board Href
                    </label>
                      
                      <asp:TextBox ID="txthome_notice_href" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="500" required=""></asp:TextBox>
                  </div>

                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_submit_Click"   /><br />
                    <asp:Label ID="lbl_path1" runat="server" Text=""></asp:Label>
                </div>
              </div>
              <div class="table-responsive">
                  <asp:GridView ID="gridview_home_notice_board" runat="server" CssClass="table table-striped table-bordered table-hover"
                      AutoGenerateColumns="False" DataKeyNames="notice_id"
                      DataSourceID="SqlDataSource1" 
                      EmptyDataText="There are no data records to display." AllowPaging="True" 
                      CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="10" Width="100%">
                      <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                      <Columns>
                          <asp:BoundField DataField="notice_id" HeaderText="Notice Board Id" 
                              ReadOnly="True" SortExpression="notice_id" />
                          <asp:BoundField DataField="notice_desc" HeaderText="Notice Board Description" 
                              SortExpression="notice_desc" />
                          <asp:BoundField DataField="notice_href" HeaderText="Notice Board Href" 
                              SortExpression="notice_href" />
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
                      DeleteCommand="DELETE FROM [Admin_Home_Notice_Board] WHERE [notice_id] = @notice_id"
                      InsertCommand="INSERT INTO [Admin_Home_Notice_Board] ([notice_desc], [notice_href]) VALUES (@notice_desc, @notice_href)"
                      ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
                      SelectCommand="SELECT [notice_id], [notice_desc], [notice_href] FROM [Admin_Home_Notice_Board]"
                      UpdateCommand="UPDATE [Admin_Home_Notice_Board] SET [notice_desc] = @notice_desc, [notice_href] = @notice_href WHERE [notice_id] = @notice_id">
                      <DeleteParameters>
                          <asp:Parameter Name="notice_id" Type="Int32" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="notice_desc" Type="String" />
                          <asp:Parameter Name="notice_href" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="notice_desc" Type="String" />
                          <asp:Parameter Name="notice_href" Type="String" />
                          <asp:Parameter Name="notice_id" Type="Int32" />
                      </UpdateParameters>
                  </asp:SqlDataSource>
</form>
</asp:Content>

