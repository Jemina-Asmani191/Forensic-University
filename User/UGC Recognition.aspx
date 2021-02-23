<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Master.master" AutoEventWireup="true" CodeFile="UGC Recognition.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   


<html>
<head>

</head>


<body>




<form id="form1" runat="server">

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
<ul><li><a property="item" typeof="WebPage" title="Go to Gujarat Forensic Sciences University." href="Home.aspx" class="home">HOME</a></li>&raquo;<li>UGC Recognition</li>                                
</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

 <h1 class="card-title" style="margin-left:8%; border-bottom: 1px solid rgba(197, 45, 51, 0.5);
    color: #c52d33;
    font-size: 26px;
    margin-bottom: 24px;
    margin-top: 3%;
    padding-bottom: 8px; width:80%;    line-height: 1.1; ">UGC Recognition</h1>
                <br />

 <p style="margin-left:8%; font-size: 18px; width:80%; font-family:poppinsregular;">The university has been granted recognition by the University Grants Commission wide its letter no. F.9-7/2011 (CPP-I/PU) dated 16th May 2011. To view the letter, kindly click below.</p>



    <asp:DataList ID="DataList1" runat="server" DataKeyField="ugc_id" 
        DataSourceID="SqlDataSource1" Width="80%" RepeatColumns="2" 
    RepeatDirection="Horizontal">

        <HeaderTemplate>
         
        </HeaderTemplate>

    <ItemTemplate>

    

       <table class="downloads" style="width: 100%; margin-top: 0;
    margin-bottom: 10px; display: block;
    list-style-type: disc;
    background: #f9f9f9 none repeat scroll 0 0;
    border: 1px solid #ddd;
    display: inline-block;
    margin-bottom: 3px;
    min-height: 110px;
    padding: 12px;
    vertical-align: top;
    width: 80%;
    margin-left: 20% !important;">
            <tr>
                <td class="res" rowspan="2" style="width: 8%">
                    <a href="../PDF_File/<%#Eval("ugc_file") %>" target="_blank"> 
                    <asp:Image ID="Image1" ImageUrl="~/LOGO/pdf.png" runat="server" Height="48px" 
                        Width="53px" />
                    </a>
                </td>
                <td class="res">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ugc_filename") %>'></asp:Label>
                </td>
            </tr>
            
        </table>
        <br />
        <br />
    
    </ItemTemplate>

    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
        SelectCommand="SELECT * FROM [Admin_UGC_Recognition]"></asp:SqlDataSource>


  </form>


</body>
</html>


  


</asp:Content>

