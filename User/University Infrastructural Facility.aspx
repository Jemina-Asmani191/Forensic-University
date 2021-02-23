<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Master.master" AutoEventWireup="true" CodeFile="University Infrastructural Facility.aspx.cs" Inherits="User_Default2" %>

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
<%--<ul><li><a property="item" typeof="WebPage" title="Go to Gujarat Forensic Sciences University." href="Home.aspx" class="home">HOME</a></li>&raquo;<li>Media</li>                                </div>--%>
<ul><li><a property="item" typeof="WebPage" title="Go to Gujarat Forensic Sciences University." class="home">HOME</a></li>»<li><a property="item" typeof="WebPage" title="Go to About GFSU." href="https://www.gfsu.edu.in/about-gfsu/" class="post post-page">About GFSU</a></li>»<li>Infrastructural Facilities</li>                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

 


    <form id="form1" runat="server">

    <asp:DataList ID="DataList_media" runat="server" DataKeyField="university_facility_id" 
       RepeatColumns="3" RepeatDirection="Horizontal" 
        DataSourceID="SqlDataSource1" Width="80%">
       <HeaderTemplate>
         <h1 class="card-title" style="margin-left:10%; border-bottom: 1px solid rgba(197, 45, 51, 0.5);
    color: #c52d33;
    font-size: 26px;
    margin-bottom: 24px;
    margin-top: 3%;
    padding-bottom: 8px; width:100%;    line-height: 1.1; ">Infrastructural Facilities</h1>
                <br />
        </HeaderTemplate>
        <ItemTemplate>

        

            <table style="width: 100%; margin-left:25%; font-color:#c52d33; ">
            
            
                <tr >
                     <div style="border:1px;">
                    <td style="padding:5% 10% 1% 10%; ">
                       <%-- <asp:Image ID="Image1" runat="server" Height="180px" 
                            ImageUrl='../Media Image/<%# Eval("media_image") %>' Width="300px" />--%>
                            <img src='../University Infrastructural Facility Image/<%#Eval("university_facility_image") %>' Height="180px" Width="300px" />
                    </div>
                    </td>
                </tr>
                <tr>
                <div style="">
           
                    <td style="padding: 0% 10% 0% 10%; width:20%; text-align:center;color: #c52d33;
    font-size: 24px;">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("university_facility_desc") %>' 
                            Width="300px" style="font-family:Georgia, serif; " ></asp:Label>
                    </td>
         
                </tr>
                </div>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
        SelectCommand="SELECT * FROM [Admin_University_Infrastructural_Facility]"></asp:SqlDataSource>

         </form>
</body>
</html>

    </div>

</asp:Content>

