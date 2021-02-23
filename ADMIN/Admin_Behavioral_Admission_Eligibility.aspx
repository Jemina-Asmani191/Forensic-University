﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Behavioral_Admission_Eligibility.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Behavioral Science Admission Eligibility</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                     Admission Eligibility FileName
                    </label>
                      
                      <asp:TextBox ID="txtadmission_eligibility_filename" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="150" required=""></asp:TextBox>
                  </div>
               

                <label>
                   Admission Eligibility File
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploadadmission_eligibility_pdffile" class="form-control" placeholder="Admission Eligibility file" runat="server" required=""  />
                    </div>
                
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadfile" runat="server" class="btn btn-primary" 
                        Text="Upload File" onclick="btn_uploadfile_Click" /><br />
                    <asp:Label ID="lbl_path" runat="server" Text=""></asp:Label>
                </div>
              </div>

              <div class="table-responsive">
<asp:GridView ID="gridview_behavioral_admission_eligibility" runat="server" CssClass="table table-striped table-bordered table-hover" 
                  AutoGenerateColumns="False" DataKeyNames="admission_eligibility_id"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." 
                  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  PageSize="10" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="admission_eligibility_id" HeaderText="Admission Eligibility Id"
            ReadOnly="True" SortExpression="admission_eligibility_id" />
        <asp:BoundField DataField="admission_eligibilty_filename" HeaderText="Admission Eligibilty Filename"
            SortExpression="admission_eligibilty_filename" />
        <asp:BoundField DataField="admission_eligibility_file" HeaderText="Admission Eligibility File (PDF)"
            SortExpression="admission_eligibility_file" />
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
    DeleteCommand="DELETE FROM [Admin_Behavioral_Admission_Eligibility] WHERE [admission_eligibility_id] = @admission_eligibility_id"
    InsertCommand="INSERT INTO [Admin_Behavioral_Admission_Eligibility] ([admission_eligibilty_filename], [admission_eligibility_file]) VALUES (@admission_eligibilty_filename, @admission_eligibility_file)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [admission_eligibility_id], [admission_eligibilty_filename], [admission_eligibility_file] FROM [Admin_Behavioral_Admission_Eligibility]"
    UpdateCommand="UPDATE [Admin_Behavioral_Admission_Eligibility] SET [admission_eligibilty_filename] = @admission_eligibilty_filename, [admission_eligibility_file] = @admission_eligibility_file WHERE [admission_eligibility_id] = @admission_eligibility_id">
    <DeleteParameters>
        <asp:Parameter Name="admission_eligibility_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="admission_eligibilty_filename" Type="String" />
        <asp:Parameter Name="admission_eligibility_file" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="admission_eligibilty_filename" Type="String" />
        <asp:Parameter Name="admission_eligibility_file" Type="String" />
        <asp:Parameter Name="admission_eligibility_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
              <br />
              <br />

</form>

</asp:Content>

