<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Result.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




<br />
<br />
<br />

<form id="RegisterValidation" Runat="server" >
              <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Research & Development Semester-1/2 Results</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                     Research & Development Semester-1/2 Result FileName
                    </label>
                      
                      <asp:TextBox ID="txtrd_sem1_2_result_filename" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
               

                <label>
                   Research & Development Semester-1/2 Result File
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploadrd_sem1_2_result_pdffile" class="form-control" placeholder="Convocation file" required="" runat="server"   />
                    </div>
                
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadfile1" runat="server" class="btn btn-primary" 
                        Text="Upload File" onclick="btn_uploadfile_Click1"  /><br />
                    <asp:Label ID="lbl_path1" runat="server" Text=""></asp:Label>
                </div>
              </div>
              <div class="table-responsive">

                  <asp:GridView ID="gridview_rd_sem1_2" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="result_research_sem1_2_id"
                      DataSourceID="SqlDataSource1" 
                      EmptyDataText="There are no data records to display." AllowPaging="True" 
                      CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="10" Width="100%">
                      <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                      <Columns>
                          <asp:BoundField DataField="result_research_sem1_2_id" HeaderText="Research &amp; Development sem1/2 Id"
                              ReadOnly="True" SortExpression="result_research_sem1_2_id" />
                          <asp:BoundField DataField="result_research_sem1_2_filename" HeaderText="Research &amp; Development sem1/2 Filename"
                              SortExpression="result_research_sem1_2_filename" />
                          <asp:BoundField DataField="result_research_sem1_2_file" HeaderText="Research &amp; Development sem1/2 File"
                              SortExpression="result_research_sem1_2_file" />
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
                      DeleteCommand="DELETE FROM [Admin_Result_Research_sem1_2] WHERE [result_research_sem1_2_id] = @result_research_sem1_2_id"
                      InsertCommand="INSERT INTO [Admin_Result_Research_sem1_2] ([result_research_sem1_2_filename], [result_research_sem1_2_file]) VALUES (@result_research_sem1_2_filename, @result_research_sem1_2_file)"
                      ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
                      SelectCommand="SELECT [result_research_sem1_2_id], [result_research_sem1_2_filename], [result_research_sem1_2_file] FROM [Admin_Result_Research_sem1_2]"
                      UpdateCommand="UPDATE [Admin_Result_Research_sem1_2] SET [result_research_sem1_2_filename] = @result_research_sem1_2_filename, [result_research_sem1_2_file] = @result_research_sem1_2_file WHERE [result_research_sem1_2_id] = @result_research_sem1_2_id">
                      <DeleteParameters>
                          <asp:Parameter Name="result_research_sem1_2_id" Type="Int32" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="result_research_sem1_2_filename" Type="String" />
                          <asp:Parameter Name="result_research_sem1_2_file" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="result_research_sem1_2_filename" Type="String" />
                          <asp:Parameter Name="result_research_sem1_2_file" Type="String" />
                          <asp:Parameter Name="result_research_sem1_2_id" Type="Int32" />
                      </UpdateParameters>
                  </asp:SqlDataSource>
              

<br />
<br />


<div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Behavioral Science Semester-1/2 Results</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                     Behavioral Science Semester-1/2 Result FileName
                    </label>
                      
                      <asp:TextBox ID="txtbs_sem1_2_result_filename" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
               

                <label>
                   Behavioral Science Semester-1/2 Result File
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploadbs_sem1_2_result_pdffile" required="" class="form-control" placeholder="Convocation file" runat="server"   />
                    </div>
                
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadfile2" runat="server" class="btn btn-primary" 
                        Text="Upload File" onclick="btn_uploadfile2_Click"   /><br />
                    <asp:Label ID="lbl_path2" runat="server" Text=""></asp:Label>
                </div>
              </div>

<div class="table-responsive">
<asp:GridView ID="gridview_bs_sem_1_2" runat="server" 
        CssClass="table table-striped table-bordered table-hover" 
        AutoGenerateColumns="False" DataKeyNames="result_behavioral_sem1_2_id"
    DataSourceID="SqlDataSource2" 
        EmptyDataText="There are no data records to display." AllowPaging="True" 
        CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" Width="100%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="result_behavioral_sem1_2_id" HeaderText="Behavioral Scienece sem1/2 Id"
            ReadOnly="True" SortExpression="result_behavioral_sem1_2_id" />
        <asp:BoundField DataField="result_behavioral_sem1_2_filename" HeaderText="Behavioral Scienece sem1/2 Filename"
            SortExpression="result_behavioral_sem1_2_filename" />
        <asp:BoundField DataField="result_behavioral_sem1_2_file" HeaderText="Behavioral Scienece sem1/2 File"
            SortExpression="result_behavioral_sem1_2_file" />
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
    DeleteCommand="DELETE FROM [Admin_Result_Behavioral_sem1_2] WHERE [result_behavioral_sem1_2_id] = @result_behavioral_sem1_2_id"
    InsertCommand="INSERT INTO [Admin_Result_Behavioral_sem1_2] ([result_behavioral_sem1_2_filename], [result_behavioral_sem1_2_file]) VALUES (@result_behavioral_sem1_2_filename, @result_behavioral_sem1_2_file)"
    ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
    SelectCommand="SELECT [result_behavioral_sem1_2_id], [result_behavioral_sem1_2_filename], [result_behavioral_sem1_2_file] FROM [Admin_Result_Behavioral_sem1_2]"
    UpdateCommand="UPDATE [Admin_Result_Behavioral_sem1_2] SET [result_behavioral_sem1_2_filename] = @result_behavioral_sem1_2_filename, [result_behavioral_sem1_2_file] = @result_behavioral_sem1_2_file WHERE [result_behavioral_sem1_2_id] = @result_behavioral_sem1_2_id">
    <DeleteParameters>
        <asp:Parameter Name="result_behavioral_sem1_2_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="result_behavioral_sem1_2_filename" Type="String" />
        <asp:Parameter Name="result_behavioral_sem1_2_file" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="result_behavioral_sem1_2_filename" Type="String" />
        <asp:Parameter Name="result_behavioral_sem1_2_file" Type="String" />
        <asp:Parameter Name="result_behavioral_sem1_2_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>


<br />
<br />


<div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Forensic Science Semester-1/2 Results</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                     Forensic Science Semester-1/2 Result FileName
                    </label>
                      
                      <asp:TextBox ID="txtfs_sem1_2_result_filename" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
               

                <label>
                   Forensic Science Semester-1/2 Result File
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploadfs_sem1_2_result_pdffile" required="" class="form-control" placeholder="Convocation file" runat="server"   />
                    </div>
                
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadfile3" runat="server" class="btn btn-primary" 
                        Text="Upload File" onclick="btn_uploadfile3_Click"   /><br />
                    <asp:Label ID="lbl_path3" runat="server" Text=""></asp:Label>
                </div>
              </div>

<div class="table-responsive">

    <asp:GridView ID="gridview_fs_sem1_2" runat="server" 
        CssClass="table table-striped table-bordered table-hover" 
        AutoGenerateColumns="False" DataKeyNames="result_forensic_sem1_2_id"
        DataSourceID="SqlDataSource3" 
        EmptyDataText="There are no data records to display." AllowPaging="True" 
        CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" Width="100%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="result_forensic_sem1_2_id" HeaderText="Forensic Science sem1/2 Id"
                ReadOnly="True" SortExpression="result_forensic_sem1_2_id" />
            <asp:BoundField DataField="result_forensic_sem1_2_filename" HeaderText="Forensic Science sem1/2 Filename"
                SortExpression="result_forensic_sem1_2_filename" />
            <asp:BoundField DataField="result_forensic_sem1_2_file" HeaderText="Forensic Science sem1/2 File"
                SortExpression="result_forensic_sem1_2_file" />
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>"
        DeleteCommand="DELETE FROM [Admin_Result_Forensic_sem1_2] WHERE [result_forensic_sem1_2_id] = @result_forensic_sem1_2_id"
        InsertCommand="INSERT INTO [Admin_Result_Forensic_sem1_2] ([result_forensic_sem1_2_filename], [result_forensic_sem1_2_file]) VALUES (@result_forensic_sem1_2_filename, @result_forensic_sem1_2_file)"
        ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
        SelectCommand="SELECT [result_forensic_sem1_2_id], [result_forensic_sem1_2_filename], [result_forensic_sem1_2_file] FROM [Admin_Result_Forensic_sem1_2]"
        UpdateCommand="UPDATE [Admin_Result_Forensic_sem1_2] SET [result_forensic_sem1_2_filename] = @result_forensic_sem1_2_filename, [result_forensic_sem1_2_file] = @result_forensic_sem1_2_file WHERE [result_forensic_sem1_2_id] = @result_forensic_sem1_2_id">
        <DeleteParameters>
            <asp:Parameter Name="result_forensic_sem1_2_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="result_forensic_sem1_2_filename" Type="String" />
            <asp:Parameter Name="result_forensic_sem1_2_file" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="result_forensic_sem1_2_filename" Type="String" />
            <asp:Parameter Name="result_forensic_sem1_2_file" Type="String" />
            <asp:Parameter Name="result_forensic_sem1_2_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <br />
    <br />

    <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Research & Development Semester-3/4 Results</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                     Research & Development Semester-3/4 Result FileName
                    </label>
                      
                      <asp:TextBox ID="txtrd_sem3_4_result_filename" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
               

                <label>
                   Research & Development Semester-3/4 Result File
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploadrd_sem3_4_result_pdffile" required="" class="form-control" placeholder="Convocation file" runat="server"   />
                    </div>
                
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadfile4" runat="server" class="btn btn-primary" 
                        Text="Upload File" onclick="btn_uploadfile4_Click"   /><br />
                    <asp:Label ID="lbl_path4" runat="server" Text=""></asp:Label>
                </div>
              </div>
              <div class="table-responsive">

                  <asp:GridView ID="gridview_rd_sem3_4" runat="server" 
                      CssClass="table table-striped table-bordered table-hover" 
                      AutoGenerateColumns="False" DataKeyNames="result_research_sem3_4_id"
                      DataSourceID="SqlDataSource4" 
                      EmptyDataText="There are no data records to display." AllowPaging="True" 
                      CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" Width="100%">
                      <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                      <Columns>
                          <asp:BoundField DataField="result_research_sem3_4_id" HeaderText="Research Development sem3/4 Id"
                              ReadOnly="True" SortExpression="result_research_sem3_4_id" />
                          <asp:BoundField DataField="result_research_sem3_4_filename" HeaderText="Research Development sem3/4 Filename"
                              SortExpression="result_research_sem3_4_filename" />
                          <asp:BoundField DataField="result_research_sem3_4_file" HeaderText="Research Development sem3/4 File"
                              SortExpression="result_research_sem3_4_file" />
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
                  <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>"
                      DeleteCommand="DELETE FROM [Admin_Result_Research_sem3_4] WHERE [result_research_sem3_4_id] = @result_research_sem3_4_id"
                      InsertCommand="INSERT INTO [Admin_Result_Research_sem3_4] ([result_research_sem3_4_filename], [result_research_sem3_4_file]) VALUES (@result_research_sem3_4_filename, @result_research_sem3_4_file)"
                      ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
                      SelectCommand="SELECT [result_research_sem3_4_id], [result_research_sem3_4_filename], [result_research_sem3_4_file] FROM [Admin_Result_Research_sem3_4]"
                      UpdateCommand="UPDATE [Admin_Result_Research_sem3_4] SET [result_research_sem3_4_filename] = @result_research_sem3_4_filename, [result_research_sem3_4_file] = @result_research_sem3_4_file WHERE [result_research_sem3_4_id] = @result_research_sem3_4_id">
                      <DeleteParameters>
                          <asp:Parameter Name="result_research_sem3_4_id" Type="Int32" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="result_research_sem3_4_filename" Type="String" />
                          <asp:Parameter Name="result_research_sem3_4_file" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="result_research_sem3_4_filename" Type="String" />
                          <asp:Parameter Name="result_research_sem3_4_file" Type="String" />
                          <asp:Parameter Name="result_research_sem3_4_id" Type="Int32" />
                      </UpdateParameters>
                  </asp:SqlDataSource>


<br />
<br />


<div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Behavioral Science Semester-3/4 Results</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                     Behavioral Science Semester-3/4 Result FileName
                    </label>
                      
                      <asp:TextBox ID="txtbs_sem3_4_result_filename" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
               

                <label>
                   Behavioral Science Semester-3/4 Result File
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploadbs_sem3_4_result_pdffile" required="" class="form-control" placeholder="Convocation file" runat="server"   />
                    </div>
                
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadfile5" runat="server" class="btn btn-primary" 
                        Text="Upload File" onclick="btn_uploadfile5_Click"    /><br />
                    <asp:Label ID="lbl_path5" runat="server" Text=""></asp:Label>
                </div>
              </div>

<div class="table-responsive">
    <asp:GridView ID="gridview_bs_sem3_4" runat="server" 
        CssClass="table table-striped table-bordered table-hover" 
        AutoGenerateColumns="False" DataKeyNames="result_behavioral_sem3_4_id"
        DataSourceID="SqlDataSource5" 
        EmptyDataText="There are no data records to display." AllowPaging="True" 
        CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" Width="100%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="result_behavioral_sem3_4_id" HeaderText="Behavioral Science sem3/4 Id"
                ReadOnly="True" SortExpression="result_behavioral_sem3_4_id" />
            <asp:BoundField DataField="result_behavioral_sem3_4_filename" HeaderText="Behavioral Science sem3/4 Filename"
                SortExpression="result_behavioral_sem3_4_filename" />
            <asp:BoundField DataField="result_behavioral_sem3_4_file" HeaderText="Behavioral Science sem3/4 File"
                SortExpression="result_behavioral_sem3_4_file" />
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
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>"
        DeleteCommand="DELETE FROM [Admin_Result_Behavioral_sem3_4] WHERE [result_behavioral_sem3_4_id] = @result_behavioral_sem3_4_id"
        InsertCommand="INSERT INTO [Admin_Result_Behavioral_sem3_4] ([result_behavioral_sem3_4_filename], [result_behavioral_sem3_4_file]) VALUES (@result_behavioral_sem3_4_filename, @result_behavioral_sem3_4_file)"
        ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
        SelectCommand="SELECT [result_behavioral_sem3_4_id], [result_behavioral_sem3_4_filename], [result_behavioral_sem3_4_file] FROM [Admin_Result_Behavioral_sem3_4]"
        UpdateCommand="UPDATE [Admin_Result_Behavioral_sem3_4] SET [result_behavioral_sem3_4_filename] = @result_behavioral_sem3_4_filename, [result_behavioral_sem3_4_file] = @result_behavioral_sem3_4_file WHERE [result_behavioral_sem3_4_id] = @result_behavioral_sem3_4_id">
        <DeleteParameters>
            <asp:Parameter Name="result_behavioral_sem3_4_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="result_behavioral_sem3_4_filename" Type="String" />
            <asp:Parameter Name="result_behavioral_sem3_4_file" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="result_behavioral_sem3_4_filename" Type="String" />
            <asp:Parameter Name="result_behavioral_sem3_4_file" Type="String" />
            <asp:Parameter Name="result_behavioral_sem3_4_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>




    <br />
<br />


<div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Forensic Science Semester-3/4 Results</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                     Forensic Science Semester-3/4 Result FileName
                    </label>
                      
                      <asp:TextBox ID="txtfs_sem3_4_result_filename" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
               

                <label>
                   Forensic Science Semester-3/4 Result File
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploadfs_sem3_4_result_pdffile" required="" class="form-control" placeholder="Convocation file" runat="server"   />
                    </div>
                
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadfile6" runat="server" class="btn btn-primary" 
                        Text="Upload File" onclick="btn_uploadfile6_Click"    /><br />
                    <asp:Label ID="lbl_path6" runat="server" Text=""></asp:Label>
                </div>
              </div>

<div class="table-responsive">

    <asp:GridView ID="gridview_fs_sem3_4" runat="server" CssClass="table table-striped table-bordered table-hover"
     AutoGenerateColumns="False" DataKeyNames="result_forensic_sem3_4_id"
        DataSourceID="SqlDataSource6" 
        EmptyDataText="There are no data records to display." AllowPaging="True" 
        CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" Width="100%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="result_forensic_sem3_4_id" HeaderText="Forensic Science sem3/4 Id"
                ReadOnly="True" SortExpression="result_forensic_sem3_4_id" />
            <asp:BoundField DataField="result_forensic_sem3_4_filename" HeaderText="Forensic Science sem3/4 Filename"
                SortExpression="result_forensic_sem3_4_filename" />
            <asp:BoundField DataField="result_forensic_sem3_4_file" HeaderText="Forensic Science sem3/4 File"
                SortExpression="result_forensic_sem3_4_file" />
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
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>"
        DeleteCommand="DELETE FROM [Admin_Result_Forensic_sem3_4] WHERE [result_forensic_sem3_4_id] = @result_forensic_sem3_4_id"
        InsertCommand="INSERT INTO [Admin_Result_Forensic_sem3_4] ([result_forensic_sem3_4_filename], [result_forensic_sem3_4_file]) VALUES (@result_forensic_sem3_4_filename, @result_forensic_sem3_4_file)"
        ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
        SelectCommand="SELECT [result_forensic_sem3_4_id], [result_forensic_sem3_4_filename], [result_forensic_sem3_4_file] FROM [Admin_Result_Forensic_sem3_4]"
        UpdateCommand="UPDATE [Admin_Result_Forensic_sem3_4] SET [result_forensic_sem3_4_filename] = @result_forensic_sem3_4_filename, [result_forensic_sem3_4_file] = @result_forensic_sem3_4_file WHERE [result_forensic_sem3_4_id] = @result_forensic_sem3_4_id">
        <DeleteParameters>
            <asp:Parameter Name="result_forensic_sem3_4_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="result_forensic_sem3_4_filename" Type="String" />
            <asp:Parameter Name="result_forensic_sem3_4_file" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="result_forensic_sem3_4_filename" Type="String" />
            <asp:Parameter Name="result_forensic_sem3_4_file" Type="String" />
            <asp:Parameter Name="result_forensic_sem3_4_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


      <br />
    <br />

    <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Research & Development ATKT Results</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                     Research & Development ATKT Result FileName
                    </label>
                      
                      <asp:TextBox ID="txtrd_atkt_result_filename" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
               

                <label>
                   Research & Development ATKT Result File
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploadrd_atkt_result_pdffile" required="" class="form-control" placeholder="Convocation file" runat="server"   />
                    </div>
                
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadfile7" runat="server" class="btn btn-primary" 
                        Text="Upload File" onclick="btn_uploadfile7_Click"    /><br />
                    <asp:Label ID="lbl_path7" runat="server" Text=""></asp:Label>
                </div>
              </div>
              <div class="table-responsive">

                  <asp:GridView ID="gridview_rd_atkt" runat="server" CssClass="table table-striped table-bordered table-hover"
                   AutoGenerateColumns="False" DataKeyNames="result_research_atkt_id"
                      DataSourceID="SqlDataSource7" 
                      EmptyDataText="There are no data records to display." AllowPaging="True" 
                      CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" Width="100%">
                      <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                      <Columns>
                          <asp:BoundField DataField="result_research_atkt_id" HeaderText="Research Development atkt id"
                              ReadOnly="True" SortExpression="result_research_atkt_id" />
                          <asp:BoundField DataField="result_research_atkt_filename" HeaderText="Research Development atkt Filename"
                              SortExpression="result_research_atkt_filename" />
                          <asp:BoundField DataField="result_research_atkt_file" HeaderText="Research Development atkt File"
                              SortExpression="result_research_atkt_file" />
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
                  <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>"
                      DeleteCommand="DELETE FROM [Admin_Result_Research_atkt] WHERE [result_research_atkt_id] = @result_research_atkt_id"
                      InsertCommand="INSERT INTO [Admin_Result_Research_atkt] ([result_research_atkt_filename], [result_research_atkt_file]) VALUES (@result_research_atkt_filename, @result_research_atkt_file)"
                      ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
                      SelectCommand="SELECT [result_research_atkt_id], [result_research_atkt_filename], [result_research_atkt_file] FROM [Admin_Result_Research_atkt]"
                      UpdateCommand="UPDATE [Admin_Result_Research_atkt] SET [result_research_atkt_filename] = @result_research_atkt_filename, [result_research_atkt_file] = @result_research_atkt_file WHERE [result_research_atkt_id] = @result_research_atkt_id">
                      <DeleteParameters>
                          <asp:Parameter Name="result_research_atkt_id" Type="Int32" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="result_research_atkt_filename" Type="String" />
                          <asp:Parameter Name="result_research_atkt_file" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="result_research_atkt_filename" Type="String" />
                          <asp:Parameter Name="result_research_atkt_file" Type="String" />
                          <asp:Parameter Name="result_research_atkt_id" Type="Int32" />
                      </UpdateParameters>
                  </asp:SqlDataSource>



<br />
<br />


<div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Behavioral Science ATKT Results</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                     Behavioral Science ATKT Result FileName
                    </label>
                      
                      <asp:TextBox ID="txtbs_atkt_result_filename" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
               

                <label>
                   Behavioral Science ATKT Result File
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploadbs_atkt_result_pdffile" required="" class="form-control" placeholder="Convocation file" runat="server"   />
                    </div>
                
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadfile8" runat="server" class="btn btn-primary" 
                        Text="Upload File" onclick="btn_uploadfile8_Click"     /><br />
                    <asp:Label ID="lbl_path8" runat="server" Text=""></asp:Label>
                </div>
              </div>

<div class="table-responsive">

    <asp:GridView ID="gridview_bs_atkt" runat="server" CssClass="table table-striped table-bordered table-hover"
     AutoGenerateColumns="False" DataKeyNames="result_behavioral_atkt_id"
        DataSourceID="SqlDataSource8" 
        EmptyDataText="There are no data records to display." AllowPaging="True" 
        CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" Width="100%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="result_behavioral_atkt_id" HeaderText="Behavioral Science atkt id"
                ReadOnly="True" SortExpression="result_behavioral_atkt_id" />
            <asp:BoundField DataField="result_behavioral_atkt_filename" HeaderText="Behavioral Science atkt Filename"
                SortExpression="result_behavioral_atkt_filename" />
            <asp:BoundField DataField="result_behavioral_atkt_file" HeaderText="Behavioral Science atkt File"
                SortExpression="result_behavioral_atkt_file" />
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
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>"
        DeleteCommand="DELETE FROM [Admin_Result_Behavioral_atkt] WHERE [result_behavioral_atkt_id] = @result_behavioral_atkt_id"
        InsertCommand="INSERT INTO [Admin_Result_Behavioral_atkt] ([result_behavioral_atkt_filename], [result_behavioral_atkt_file]) VALUES (@result_behavioral_atkt_filename, @result_behavioral_atkt_file)"
        ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
        SelectCommand="SELECT [result_behavioral_atkt_id], [result_behavioral_atkt_filename], [result_behavioral_atkt_file] FROM [Admin_Result_Behavioral_atkt]"
        UpdateCommand="UPDATE [Admin_Result_Behavioral_atkt] SET [result_behavioral_atkt_filename] = @result_behavioral_atkt_filename, [result_behavioral_atkt_file] = @result_behavioral_atkt_file WHERE [result_behavioral_atkt_id] = @result_behavioral_atkt_id">
        <DeleteParameters>
            <asp:Parameter Name="result_behavioral_atkt_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="result_behavioral_atkt_filename" Type="String" />
            <asp:Parameter Name="result_behavioral_atkt_file" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="result_behavioral_atkt_filename" Type="String" />
            <asp:Parameter Name="result_behavioral_atkt_file" Type="String" />
            <asp:Parameter Name="result_behavioral_atkt_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>




    <br />
<br />


<div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Forensic Science ATKT Results</h4>
                </div>
                <div class="card-body ">
                <div class="form-group has-label">
                    <label>
                     Forensic Science ATKT Result FileName
                    </label>
                      
                      <asp:TextBox ID="txtfs_atkt_result_filename" class="form-control" runat="server" 
                          TextMode="SingleLine" MaxLength="500" required=""></asp:TextBox>
                  </div>
               

                <label>
                   Forensic Science ATKT Result File
                </label>
                 <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                        </span>
                      </div>
                        <asp:FileUpload ID="uploadfs_atkt_result_pdffile" required="" class="form-control" placeholder="Convocation file" runat="server"   />
                    </div>
                
                </div>
                <div class="card-footer text-right">
                
                    <asp:Button ID="btn_uploadfile9" runat="server" class="btn btn-primary" 
                        Text="Upload File" onclick="btn_uploadfile9_Click"     /><br />
                    <asp:Label ID="lbl_path9" runat="server" Text=""></asp:Label>
                </div>
              </div>

<div class="table-responsive">
    <asp:GridView ID="gridview_fs_atkt" runat="server" CssClass="table table-striped table-bordered table-hover"
     AutoGenerateColumns="False" DataKeyNames="result_forensic_atkt_id"
        DataSourceID="SqlDataSource9" 
        EmptyDataText="There are no data records to display." AllowPaging="True" 
        CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" Width="100%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="result_forensic_atkt_id" HeaderText="Forensic Science atkt Id"
                ReadOnly="True" SortExpression="result_forensic_atkt_id" />
            <asp:BoundField DataField="result_forensic_atkt_filename" HeaderText="Forensic Science atkt Filename"
                SortExpression="result_forensic_atkt_filename" />
            <asp:BoundField DataField="result_forensic_atkt_file" HeaderText="Forensic Science atkt File"
                SortExpression="result_forensic_atkt_file" />
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
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>"
        DeleteCommand="DELETE FROM [Admin_Result_Forensic_atkt] WHERE [result_forensic_atkt_id] = @result_forensic_atkt_id"
        InsertCommand="INSERT INTO [Admin_Result_Forensic_atkt] ([result_forensic_atkt_filename], [result_forensic_atkt_file]) VALUES (@result_forensic_atkt_filename, @result_forensic_atkt_file)"
        ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
        SelectCommand="SELECT [result_forensic_atkt_id], [result_forensic_atkt_filename], [result_forensic_atkt_file] FROM [Admin_Result_Forensic_atkt]"
        UpdateCommand="UPDATE [Admin_Result_Forensic_atkt] SET [result_forensic_atkt_filename] = @result_forensic_atkt_filename, [result_forensic_atkt_file] = @result_forensic_atkt_file WHERE [result_forensic_atkt_id] = @result_forensic_atkt_id">
        <DeleteParameters>
            <asp:Parameter Name="result_forensic_atkt_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="result_forensic_atkt_filename" Type="String" />
            <asp:Parameter Name="result_forensic_atkt_file" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="result_forensic_atkt_filename" Type="String" />
            <asp:Parameter Name="result_forensic_atkt_file" Type="String" />
            <asp:Parameter Name="result_forensic_atkt_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>



    <br />
    <br />
</form>



</asp:Content>

