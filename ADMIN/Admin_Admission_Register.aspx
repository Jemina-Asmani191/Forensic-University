<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Admission_Register.aspx.cs" Inherits="ADMIN_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />

    <form id="form1" runat="server">
    <div class="table-responsive">
        <asp:GridView ID="gridviewAdmission_register" runat="server" 
            AutoGenerateColumns="False" DataKeyNames="username"
            DataSourceID="SqlDataSource2" 
            EmptyDataText="There are no data records to display." AllowPaging="True" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="register_id" HeaderText="register_id" ReadOnly="True"
                    SortExpression="register_id" />
                <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                <asp:BoundField DataField="middlename" HeaderText="middlename" SortExpression="middlename" />
                <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="dateofbirth" HeaderText="dateofbirth" SortExpression="dateofbirth" />
                <asp:BoundField DataField="education" HeaderText="education" SortExpression="education" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="contactnumber" HeaderText="contactnumber" SortExpression="contactnumber" />
                <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="profilepic" HeaderText="profilepic" SortExpression="profilepic" />
                <asp:BoundField DataField="proofimage" HeaderText="proofimage" SortExpression="proofimage" />
                <asp:TemplateField HeaderText="ProfilePic">
                 <ItemTemplate >
            <img src='../Register pic/<%#Eval("profilepic") %>' height="70px" />
                </ItemTemplate>    
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="ProofPic">
                 <ItemTemplate >
            <img src='../Register pic/<%#Eval("proofimage") %>' height="70px" />
                </ItemTemplate>    
                
                </asp:TemplateField>
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>"
            DeleteCommand="DELETE FROM [Admission_Register] WHERE [username] = @username"
            InsertCommand="INSERT INTO [Admission_Register] ([firstname], [middlename], [lastname], [gender], [dateofbirth], [education], [address], [country], [pincode], [email], [contactnumber], [username], [password], [profilepic], [proofimage]) VALUES (@firstname, @middlename, @lastname, @gender, @dateofbirth, @education, @address, @country, @pincode, @email, @contactnumber, @username, @password, @profilepic, @proofimage)"
            ProviderName="<%$ ConnectionStrings:UniversityConnectionString1.ProviderName %>"
            SelectCommand="SELECT [register_id], [firstname], [middlename], [lastname], [gender], [dateofbirth], [education], [address], [country], [pincode], [email], [contactnumber], [username], [password], [profilepic], [proofimage] FROM [Admission_Register]"
            UpdateCommand="UPDATE [Admission_Register] SET [register_id] = @register_id, [firstname] = @firstname, [middlename] = @middlename, [lastname] = @lastname, [gender] = @gender, [dateofbirth] = @dateofbirth, [education] = @education, [address] = @address, [country] = @country, [pincode] = @pincode, [email] = @email, [contactnumber] = @contactnumber, [password] = @password, [profilepic] = @profilepic, [proofimage] = @proofimage WHERE [username] = @username">
            <DeleteParameters>
                <asp:Parameter Name="username" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="firstname" Type="String" />
                <asp:Parameter Name="middlename" Type="String" />
                <asp:Parameter Name="lastname" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter DbType="Date" Name="dateofbirth" />
                <asp:Parameter Name="education" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="pincode" Type="Decimal" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="contactnumber" Type="Decimal" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="profilepic" Type="String" />
                <asp:Parameter Name="proofimage" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="register_id" Type="Int32" />
                <asp:Parameter Name="firstname" Type="String" />
                <asp:Parameter Name="middlename" Type="String" />
                <asp:Parameter Name="lastname" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter DbType="Date" Name="dateofbirth" />
                <asp:Parameter Name="education" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="pincode" Type="Decimal" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="contactnumber" Type="Decimal" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="profilepic" Type="String" />
                <asp:Parameter Name="proofimage" Type="String" />
                <asp:Parameter Name="username" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    
    </form>


</asp:Content>

