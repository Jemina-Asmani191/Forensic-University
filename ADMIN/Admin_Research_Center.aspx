<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Research_Center.aspx.cs" Inherits="ADMIN_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br />
<br />
<br />
<form id="researchcenter" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Research Centers</h4>
                </div>
               
               <div class="card-body ">
                    
                     <div class="form-group has-label">
                    <label>
                     Research Center Name
                    </label>
                      
                      <asp:TextBox ID="txtresearch_center_name" class="form-control" runat="server" 
                          TextMode="Singleline" MaxLength="100" required=""></asp:TextBox>
                  </div>

                  <div class="form-group has-label">
                    <label>
                      Research Center Place
                    </label>
                      
                      <asp:TextBox ID="txtresearch_center_place" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="35" required="" ></asp:TextBox>
                  </div>

                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_Submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_Submit_Click"   />    
                </div>
              </div>



              <div class="table-responsive">
<asp:GridView ID="gridview_research_center" runat="server" 
                      CssClass="table table-striped table-bordered table-hover" 
                      AutoGenerateColumns="False" DataKeyNames="research_center_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                      AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                      PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="research_center_id" HeaderText="Research Center Id" ReadOnly="True"
            SortExpression="research_center_id" />
        <asp:BoundField DataField="research_center_name" HeaderText="Research Center Name"
            SortExpression="research_center_name" />
        <asp:BoundField DataField="research_center_place" HeaderText="Research Center Place"
            SortExpression="research_center_place" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>"
    DeleteCommand="DELETE FROM [Admin_Research_Center] WHERE [research_center_id] = @research_center_id"
    InsertCommand="INSERT INTO [Admin_Research_Center] ([research_center_name], [research_center_place]) VALUES (@research_center_name, @research_center_place)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [research_center_id], [research_center_name], [research_center_place] FROM [Admin_Research_Center]"
    UpdateCommand="UPDATE [Admin_Research_Center] SET [research_center_name] = @research_center_name, [research_center_place] = @research_center_place WHERE [research_center_id] = @research_center_id">
    <DeleteParameters>
        <asp:Parameter Name="research_center_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="research_center_name" Type="String" />
        <asp:Parameter Name="research_center_place" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="research_center_name" Type="String" />
        <asp:Parameter Name="research_center_place" Type="String" />
        <asp:Parameter Name="research_center_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

</div>
<br />
              <br />
              <br />


    </form>
</asp:Content>

