<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Master.master" AutoEventWireup="true" CodeFile="Notice Board.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<html>
<head>

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
                                    <!-- Breadcrumb NavXT 6.1.0 -->
<ul><li><a property="item" typeof="WebPage" title="Go to Gujarat Forensic Sciences University." href="Home.aspx" class="home">HOME</a></li>&raquo;<li>Notice Board </li>                                </div>
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
    padding-bottom: 8px;     line-height: 1.1; margin-right:10%;">Notice Board</h1>


          <center>
            <asp:DataList ID="DataList_noticeboard" runat="server" Width="80%" 
                  DataSourceID="SqlDataSource1" >
                <ItemTemplate>
                    <table style="width: 100%">
                        <tr>
                            <td rowspan="2" style="width: 30%">
                                <%--<asp:Image ID="Image1" runat="server" Height="104px" Width="136px" />--%>
                                <img src="../LOGO/no-image.png" style="margin-bottom:15px; height:200px; width:200px;"  />
                            </td>
                            <td style="color: #c52d33; font-family: poppinsmedium; font-size: 20px; padding-bottom: 1px; text-align:left; margin-left:0px; width: 70%">
                                <a href="../User/<%#Eval("notice_href") %>" > 
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("notice_name") %>'></asp:Label>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 70%">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("notice_desc") %>'></asp:Label>
                            </td>
                        </tr>
                       
                    </table>
                
                </ItemTemplate>


            </asp:DataList>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
                  SelectCommand="SELECT * FROM [Admin_Notice_Board]"></asp:SqlDataSource>
               </center>
            

             
            <br />
            <br />         
            </form>
</body>
</html>


</asp:Content>

