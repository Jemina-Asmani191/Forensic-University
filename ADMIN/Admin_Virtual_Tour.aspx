<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Virtual_Tour.aspx.cs" Inherits="ADMIN_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Virtual Tour</h4>
                </div>
                <div class="card-body ">

                <label>
                    Image
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">

                        </span>
                      </div>

                        <asp:FileUpload ID="uploadvirtual_tour_image" class="form-control" placeholder="Image" runat="server" required=""  />
                  
                
                    </div>


                
                   </div>
                <div class="card-footer text-right">
                 
                    <asp:Button ID="btn_uploadimage" runat="server" class="btn btn-primary" 
                        Text="Upload" onclick="btn_uploadimage_Click"  />
                    <asp:Label ID="lbl_path" runat="server" Text=""></asp:Label>
                </div>
              </div>
            <div class="table-responsive">
                <asp:GridView ID="gridview_virtual_tour" runat="server" CssClass="table table-striped table-bordered table-hover"
                    AutoGenerateColumns="False" DataKeyNames="tour_id"
                    DataSourceID="SqlDataSource2" 
                    EmptyDataText="There are no data records to display." AllowPaging="True" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="10" Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="tour_id" HeaderText="tour_id" ReadOnly="True" SortExpression="tour_id" />
                         <asp:TemplateField HeaderText="Image">
        <ItemTemplate >
            <img src='../Virtual Tour/<%#Eval("tour_image") %>' height="100px" width="200px" />
        </ItemTemplate>
        </asp:TemplateField>
                        <asp:BoundField DataField="tour_image" HeaderText="tour_image" SortExpression="tour_image" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>"
                    DeleteCommand="DELETE FROM [Admin_Virtual_Tour] WHERE [tour_id] = @tour_id" InsertCommand="INSERT INTO [Admin_Virtual_Tour] ([tour_image]) VALUES (@tour_image)"
                    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
                    SelectCommand="SELECT [tour_id], [tour_image] FROM [Admin_Virtual_Tour]" UpdateCommand="UPDATE [Admin_Virtual_Tour] SET [tour_image] = @tour_image WHERE [tour_id] = @tour_id">
                    <DeleteParameters>
                        <asp:Parameter Name="tour_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="tour_image" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="tour_image" Type="String" />
                        <asp:Parameter Name="tour_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
  
               
</form>
</asp:Content>

