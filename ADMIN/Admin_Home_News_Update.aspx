﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Home_News_Update.aspx.cs" Inherits="ADMIN_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >


 <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Home Page News Update</h4>
                </div>
                <div class="card-body ">

                <label>
                   News Image
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">

                        </span>
                      </div>

                        <asp:FileUpload ID="uploadnews_image" class="form-control" placeholder="Image" runat="server" required=""  />
                  
                
                    </div>


                  <div class="form-group has-label">
                    <label>
                      News Image Description
                    </label>

                      <asp:TextBox ID="txt_news_image_desc" class="form-control" runat="server" 
                          TextMode="MultiLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
                   </div>



            
                
                <div class="card-footer text-right">
                 
                    <asp:Button ID="btn_uploadimage" runat="server" class="btn btn-primary" 
                        Text="Upload" onclick="btn_uploadimage_Click" />
                    <asp:Label ID="lbl_path" runat="server" Text=""></asp:Label>
                </div>
              </div>
            <div class="table-responsive">
                <asp:GridView ID="gridview_news_home" runat="server" CssClass="table table-striped table-bordered table-hover" 
                 AutoGenerateColumns="False" DataKeyNames="news_id"
                    DataSourceID="SqlDataSource1" 
                    EmptyDataText="There are no data records to display." AllowPaging="True" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="10" Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="news_id" HeaderText="News Id" ReadOnly="True" 
                            SortExpression="news_id" />
                        
                        <asp:TemplateField HeaderText="Image">
        <ItemTemplate >
            <img src='../Home News Image/<%#Eval("news_image") %>' height="100px" width="200px" />
        </ItemTemplate>
        </asp:TemplateField>


                        <asp:BoundField DataField="news_desc" HeaderText="News Description" 
                            SortExpression="news_desc" />
                        <asp:BoundField DataField="news_image" HeaderText="News Image" 
                            SortExpression="news_image" />
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
                    DeleteCommand="DELETE FROM [Admin_Home_News_Updates] WHERE [news_id] = @news_id"
                    InsertCommand="INSERT INTO [Admin_Home_News_Updates] ([news_desc], [news_image]) VALUES (@news_desc, @news_image)"
                    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
                    SelectCommand="SELECT [news_id], [news_desc], [news_image] FROM [Admin_Home_News_Updates]"
                    UpdateCommand="UPDATE [Admin_Home_News_Updates] SET [news_desc] = @news_desc, [news_image] = @news_image WHERE [news_id] = @news_id">
                    <DeleteParameters>
                        <asp:Parameter Name="news_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="news_desc" Type="String" />
                        <asp:Parameter Name="news_image" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="news_desc" Type="String" />
                        <asp:Parameter Name="news_image" Type="String" />
                        <asp:Parameter Name="news_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
        
</form>
</asp:Content>
