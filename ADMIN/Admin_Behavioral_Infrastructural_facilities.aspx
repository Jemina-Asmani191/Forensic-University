<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Behavioral_Infrastructural_facilities.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br />
<br />
<br />
<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Infrastructural Facilities</h4>
                </div>
               
               <div class="card-body ">
                    <div class="form-group has-label">
                    <label>
                      Infrastructural Laboratory Instruments
                    </label>
                      
                      <asp:TextBox ID="txtlaboratory_instruments" class="form-control" runat="server" 
                          TextMode="singleline" MaxLength="150" required="" ></asp:TextBox>
                  </div>
                  <div class="form-group has-label">
                    <label>
                      Infrastructural Purpose Parameters
                    </label>
                      
                      <asp:TextBox ID="txtpurpose_parameter" class="form-control" runat="server" 
                          TextMode="multiline" MaxLength="500" required="" ></asp:TextBox>
                  </div>

                  
                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_Submit" runat="server" class="btn btn-primary" 
                        Text="Submit" onclick="btn_Submit_Click"  />    
                </div>
              </div>
              <div class="table-responsive">
<asp:GridView ID="gridview_behavioral_infrastructural_facilities" runat="server" CssClass="table table-striped table-bordered table-hover" 
                  AutoGenerateColumns="False" DataKeyNames="Infrastructural_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="Infrastructural_id" HeaderText="Infrastructural Id" ReadOnly="True"
            SortExpression="Infrastructural_id" />
        <asp:BoundField DataField="Infrastructural_laboratory_instruments" HeaderText="Infrastructural Laboratory Instruments"
            SortExpression="Infrastructural_laboratory_instruments" />
        <asp:BoundField DataField="Infrastructural_purpose_parameters" HeaderText="Infrastructural Purpose Parameters"
            SortExpression="Infrastructural_purpose_parameters" />
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
    DeleteCommand="DELETE FROM [Admin_Behavioral_Infrastructural_facilities] WHERE [Infrastructural_id] = @Infrastructural_id"
    InsertCommand="INSERT INTO [Admin_Behavioral_Infrastructural_facilities] ([Infrastructural_laboratory_instruments], [Infrastructural_purpose_parameters]) VALUES (@Infrastructural_laboratory_instruments, @Infrastructural_purpose_parameters)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [Infrastructural_id], [Infrastructural_laboratory_instruments], [Infrastructural_purpose_parameters] FROM [Admin_Behavioral_Infrastructural_facilities]"
    UpdateCommand="UPDATE [Admin_Behavioral_Infrastructural_facilities] SET [Infrastructural_laboratory_instruments] = @Infrastructural_laboratory_instruments, [Infrastructural_purpose_parameters] = @Infrastructural_purpose_parameters WHERE [Infrastructural_id] = @Infrastructural_id">
    <DeleteParameters>
        <asp:Parameter Name="Infrastructural_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Infrastructural_laboratory_instruments" Type="String" />
        <asp:Parameter Name="Infrastructural_purpose_parameters" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Infrastructural_laboratory_instruments" Type="String" />
        <asp:Parameter Name="Infrastructural_purpose_parameters" Type="String" />
        <asp:Parameter Name="Infrastructural_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
              <br />
              <br />

              </form>

</asp:Content>

