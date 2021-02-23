<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Master.master" AutoEventWireup="true" CodeFile="Forensic FullTime Faculty.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<html>
<head>

<style>

</style>

</head>
<body>


<div class="banner-container">
                <div class="container-fluid">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="banner-inner">
                                <img src="../User Side Images/banner-inner.jpg" alt="GFSU"/>
                            </div>
                                                            <div class="banner-title">
                                                                    </div>
                            
                            <div class="breadcrums-con">
                                <div class="breadcrums-inner">
                                     
   <ul><li><a property="item" typeof="WebPage" title="Go to Gujarat Forensic Sciences University." href="Home.aspx" class="home">HOME</a></li>»<li><a property="item" typeof="WebPage" title="Go to Institute of Forensic Science." href="#" class="post post-page">Institute of Forensic Science</a></li>»<li>FullTIme Faculty</li> </ul>
                           </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


             <form id="form1" runat="server"> 

             <h1 class="card-title" style="margin-left:10%; border-bottom: 1px solid rgba(197, 45, 51, 0.5);
    color: #c52d33;
    font-size: 26px;
    margin-bottom: 24px;
    margin-top: 3%;
    padding-bottom: 8px; width:80%;    line-height: 1.1; ">Forensic Science FullTime Faculty</h1>
                <br />

                <center>
             <asp:DataList ID="DataList1" runat="server" DataKeyField="full_faculty_id" 
                 DataSourceID="SqlDataSource1" RepeatColumns="2" 
                 RepeatDirection="Horizontal" BackColor="#CCCCCC" BorderColor="#999999" 
                        BorderStyle="Solid" BorderWidth="3px" CellPadding="5" CellSpacing="20" 
                        ForeColor="Black" GridLines="Both" Width="80%">
                 <FooterStyle BackColor="#CCCCCC" />
                 <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                 <ItemStyle BackColor="White" />
                 <ItemTemplate>
                     <table>
                    
                         <tr>
                             <td class="res" style="width:60px;">
                             <%--    <asp:Image ID="Image1" runat="server" Height="136px" 
                                     ImageUrl='../Forensic Fulltime Faculty Image<%# Eval("full_faculty_image") %>' Width="116px" />--%>

                                   <img src='../Forensic Fulltime Faculty Image/<%# Eval("full_faculty_image") %>' style="margin-left:10%;" height="280px" width="130px" />
                             </td>
                             <td class="res">
                                <b> <asp:Label ID="Label1" runat="server" style="font-size:22px; " Text='<%# Eval("full_faculty_name") %>'></asp:Label> </b>
                                 <br />
                                 <br />
                                 <asp:Label ID="Label2" runat="server" style="color: #c52d33;
    font-family: poppinssemibold;"
                                     Text='<%# Eval("full_faculty_qualification") %>'></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td style="width: 90px">
                                 &nbsp;</td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td colspan="2">
                                 <asp:Label ID="Label3" runat="server" style="margin-left:6%; color: #343374;
    font-family: poppinsmedium;
    font-size: 20px;
    padding-bottom: 1px;
    padding-top: 10px; font-size: 16px;
    margin-top: 0 !important;"
                                     Text='<%# Eval("full_faculty_designation") %>'></asp:Label>
                             </td>
                         </tr>
                         
                         <tr>
                             <td colspan="2">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td colspan="2">
                                 <asp:Label ID="Label4" runat="server" style="margin-left:6%; font-weight: bold;" Text="Email Id:"></asp:Label>
                                 &nbsp;
                                 <asp:Label ID="Label5" runat="server" style="font-family: 'poppinsregular';"
                                     Text='<%# Eval("full_faculty_emailid") %>'></asp:Label>
                             </td>
                         </tr>
                         
                         <tr>
                             <td colspan="2">
                                 <asp:Label ID="Label6" runat="server" style="margin-left:6%; font-weight: bold;" Text="Experience:"></asp:Label>
                                 &nbsp;
                                 <asp:Label ID="Label7" runat="server" style="font-family: 'poppinsregular';"
                                     Text='<%# Eval("full_faculty_experience") %>'></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td colspan="2">
                                 <asp:Label ID="Label8" runat="server" style="margin-left:6%; font-weight: bold;" Text="Specialization:"></asp:Label>
                                 &nbsp;
                                 <asp:Label ID="Label9" runat="server" style="font-family: 'poppinsregular';"
                                     Text='<%# Eval("full_faculty_specialization") %>'></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td colspan="2">
                                 <asp:Label ID="Label10" runat="server" style="margin-left:6%; font-weight: bold;" Text="Publication:"></asp:Label>
                                 &nbsp;
                                 <asp:Label ID="Label11" runat="server" style="font-family: 'poppinsregular';"
                                     Text='<%# Eval("full_faculty_publication") %>'></asp:Label>
                             </td>
                         </tr>
                         
                     </table>
                  
                     <br />
                 </ItemTemplate>


                 <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />


             </asp:DataList>
             </center>


             


             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
                 SelectCommand="SELECT * FROM [Admin_Forensic_Full_Faculty]">
             </asp:SqlDataSource>



             


             </form>
             </body>
             </html>



</asp:Content>

