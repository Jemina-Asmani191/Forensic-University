<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Master.master" AutoEventWireup="true" CodeFile="Results.aspx.cs" Inherits="User_Default2" %>

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
<ul><li><a property="item" typeof="WebPage" title="Go to Gujarat Forensic Sciences University." href="Home.aspx" class="home">HOME</a></li>&raquo;<li>Results</li>                                
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
    padding-bottom: 8px; width:80%;    line-height: 1.1; ">Results</h1>
               

<h4 style="color: #343374;
    font-family: poppinsmedium;
    padding-bottom: 1px;
    padding-top: 10px; margin-left:8%; font-size: 28px;">Research & Development Semester-1 Results</h4>

 


    <asp:DataList ID="DataList1" runat="server" DataKeyField="result_research_sem1_2_id" 
         Width="80%" RepeatColumns="2" 
    RepeatDirection="Horizontal" DataSourceID="SqlDataSource1"  >

        <HeaderTemplate>
         
        </HeaderTemplate>

    <ItemTemplate>

    

       <table class="downloads" style="width: 100%;
    /*list-style-type: disc;*/
    background: #f9f9f9 none repeat scroll 0 0;
    border: 1px solid #ddd;
    display: inline-block;
    margin-bottom: 0px;
    min-height: 110px;
    padding: 12px;
   /* vertical-align: top;*/
    width: 80%;
    margin-left: 20% !important;">
            <tr>
                <td class="res" rowspan="2" style="width: 11%">
                    <a href="../PDF_File/<%#Eval("result_research_sem1_2_file") %>" target="_blank"> 
                    <asp:Image ID="Image1" ImageUrl="~/LOGO/pdf.png" runat="server" Height="48px" 
                        Width="53px" />
                    </a>
                </td>
                <td class="res" >
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("result_research_sem1_2_filename") %>'></asp:Label>
                </td>
            </tr>
            
        </table>
        <br />
        <br />
    
    </ItemTemplate>

    </asp:DataList>

  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
    SelectCommand="SELECT * FROM [Admin_Result_Research_sem1_2]">
</asp:SqlDataSource>

   
   <br />
   <h4 style="color: #343374;
    font-family: poppinsmedium;
    padding-bottom: 1px;
    padding-top: 10px; margin-left:8%; font-size: 28px;">Behavioral Science Semester-1 Results</h4>

 


    <asp:DataList ID="DataList2" runat="server" DataKeyField="result_behavioral_sem1_2_id" 
         Width="80%" RepeatColumns="2" 
    RepeatDirection="Horizontal" DataSourceID="SqlDataSource2"   >

        <HeaderTemplate>
         
        </HeaderTemplate>

    <ItemTemplate>

    

       <table class="downloads" style="width: 100%;
    /*list-style-type: disc;*/
    background: #f9f9f9 none repeat scroll 0 0;
    border: 1px solid #ddd;
    display: inline-block;
    margin-bottom: 0px;
    min-height: 110px;
    padding: 12px;
   /* vertical-align: top;*/
    width: 80%;
    margin-left: 20% !important;">
            <tr>
                <td class="res" rowspan="2" style="width: 11%">
                    <a href="../PDF_File/<%#Eval("result_behavioral_sem1_2_file") %>" target="_blank"> 
                    <asp:Image ID="Image1" ImageUrl="~/LOGO/pdf.png" runat="server" Height="48px" 
                        Width="53px" />
                    </a>
                </td>
                <td class="res">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("result_behavioral_sem1_2_filename") %>'></asp:Label>
                </td>
            </tr>
            
        </table>
        <br />
        <br />
    
    </ItemTemplate>

    </asp:DataList>
   
  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
    SelectCommand="SELECT * FROM [Admin_Result_Behavioral_sem1_2]">
</asp:SqlDataSource>
   

  <br />

   <h4 style="color: #343374;
    font-family: poppinsmedium;
    padding-bottom: 1px;
    padding-top: 10px; margin-left:8%; font-size: 28px;">Forensic Semester-1 Results</h4>

 


    <asp:DataList ID="DataList3" runat="server" DataKeyField="result_forensic_sem1_2_id" 
         Width="80%" RepeatColumns="2" 
    RepeatDirection="Horizontal" DataSourceID="SqlDataSource3" >

        <HeaderTemplate>
         
        </HeaderTemplate>

    <ItemTemplate>

    

       <table class="downloads" style="width: 100%;
    /*list-style-type: disc;*/
    background: #f9f9f9 none repeat scroll 0 0;
    border: 1px solid #ddd;
    display: inline-block;
    margin-bottom: 0px;
    min-height: 110px;
    padding: 12px;
   /* vertical-align: top;*/
    width: 80%;
    margin-left: 20% !important;">
            <tr>
                <td class="res" rowspan="2" style="width: 11%">
                    <a href="../PDF_File/<%#Eval("result_forensic_sem1_2_file") %>" target="_blank"> 
                    <asp:Image ID="Image1" ImageUrl="~/LOGO/pdf.png" runat="server" Height="48px" 
                        Width="53px" />
                    </a>
                </td>
                <td class="res">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("result_forensic_sem1_2_filename") %>'></asp:Label>
                </td>
            </tr>
            
        </table>
        <br />
        <br />
    
    </ItemTemplate>

    </asp:DataList>

  <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
    ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
    SelectCommand="SELECT * FROM [Admin_Result_Forensic_sem1_2]">
</asp:SqlDataSource>


<br />
<h4 style="color: #343374;
    font-family: poppinsmedium;
    padding-bottom: 1px;
    padding-top: 10px; margin-left:8%; font-size: 28px;">Research & Development Semester-3 Results</h4>

 


    

<asp:DataList ID="DataList4" runat="server" DataKeyField="result_research_sem3_4_id" 
         Width="80%" RepeatColumns="2" 
    RepeatDirection="Horizontal" DataSourceID="SqlDataSource4">


    <ItemTemplate>

    

       <table class="downloads" style="width: 100%;
    /*list-style-type: disc;*/
    background: #f9f9f9 none repeat scroll 0 0;
    border: 1px solid #ddd;
    display: inline-block;
    margin-bottom: 0px;
    min-height: 110px;
    padding: 12px;
   /* vertical-align: top;*/
    width: 80%;
    margin-left: 20% !important;">
            <tr>
                <td class="res" rowspan="2" style="width: 11%">
                    <a href="../PDF_File/<%#Eval("result_research_sem3_4_file") %>" target="_blank"> 
                    <asp:Image ID="Image1" ImageUrl="~/LOGO/pdf.png" runat="server" Height="48px" 
                        Width="53px" />
                    </a>
                </td>
                <td class="res">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("result_research_sem3_4_filename") %>'></asp:Label>
                </td>
            </tr>
            
        </table>
        <br />
        <br />
    
    </ItemTemplate>

</asp:DataList>


  <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
    ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
    SelectCommand="SELECT * FROM [Admin_Result_Research_sem3_4]">
</asp:SqlDataSource>





<br />

<h4 style="color: #343374;
    font-family: poppinsmedium;
    padding-bottom: 1px;
    padding-top: 10px; margin-left:8%; font-size: 28px;">Behavioral Science Semester-3 Results</h4>

 


    <asp:DataList ID="DataList5" runat="server" DataKeyField="result_behavioral_sem3_4_id" 
         Width="80%" RepeatColumns="2" 
    RepeatDirection="Horizontal" DataSourceID="SqlDataSource5"  >

        <HeaderTemplate>
         
        </HeaderTemplate>

    <ItemTemplate>

    

       <table class="downloads" style="width: 100%;
    /*list-style-type: disc;*/
    background: #f9f9f9 none repeat scroll 0 0;
    border: 1px solid #ddd;
    display: inline-block;
    margin-bottom: 0px;
    min-height: 110px;
    padding: 12px;
   /* vertical-align: top;*/
    width: 80%;
    margin-left: 20% !important;">
            <tr>
                <td class="res" rowspan="2" style="width: 11%">
                    <a href="../PDF_File/<%#Eval("result_behavioral_sem3_4_file") %>" target="_blank"> 
                    <asp:Image ID="Image1" ImageUrl="~/LOGO/pdf.png" runat="server" Height="48px" 
                        Width="53px" />
                    </a>
                </td>
                <td class="res">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("result_behavioral_sem3_4_filename") %>'></asp:Label>
                </td>
            </tr>
            
        </table>
        <br />
        <br />
    
    </ItemTemplate>

    </asp:DataList>



  <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
    ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
    SelectCommand="SELECT * FROM [Admin_Result_Behavioral_sem3_4]">
</asp:SqlDataSource>



<br />
<h4 style="color: #343374;
    font-family: poppinsmedium;
    padding-bottom: 1px;
    padding-top: 10px; margin-left:8%; font-size: 28px;">Forensic Science Semester-3 Results</h4>

 


    <asp:DataList ID="DataList6" runat="server" DataKeyField="result_forensic_sem3_4_id" 
         Width="80%" RepeatColumns="2" 
    RepeatDirection="Horizontal" DataSourceID="SqlDataSource6"  >

        <HeaderTemplate>
         
        </HeaderTemplate>

    <ItemTemplate>

    

       <table class="downloads" style="width: 100%;
    /*list-style-type: disc;*/
    background: #f9f9f9 none repeat scroll 0 0;
    border: 1px solid #ddd;
    display: inline-block;
    margin-bottom: 0px;
    min-height: 110px;
    padding: 12px;
   /* vertical-align: top;*/
    width: 80%;
    margin-left: 20% !important;">
            <tr>
                <td class="res" rowspan="2" style="width: 11%">
                    <a href="../PDF_File/<%#Eval("result_forensic_sem3_4_file") %>" target="_blank"> 
                    <asp:Image ID="Image1" ImageUrl="~/LOGO/pdf.png" runat="server" Height="48px" 
                        Width="53px" />
                    </a>
                </td>
                <td class="res">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("result_forensic_sem3_4_filename") %>'></asp:Label>
                </td>
            </tr>
            
        </table>
        <br />
        <br />
    
    </ItemTemplate>

    </asp:DataList>

  <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
    ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
    SelectCommand="SELECT * FROM [Admin_Result_Forensic_sem3_4]">
</asp:SqlDataSource>



<br />
<h4 style="color: #343374;
    font-family: poppinsmedium;
    padding-bottom: 1px;
    padding-top: 10px; margin-left:8%; font-size: 28px;">Research & Development ATKT Results</h4>

 


    <asp:DataList ID="DataList7" runat="server" DataKeyField="result_research_atkt_id" 
         Width="80%" RepeatColumns="2" 
    RepeatDirection="Horizontal" DataSourceID="SqlDataSource7"  >

        <HeaderTemplate>
         
        </HeaderTemplate>

    <ItemTemplate>

    

       <table class="downloads" style="width: 100%;
    /*list-style-type: disc;*/
    background: #f9f9f9 none repeat scroll 0 0;
    border: 1px solid #ddd;
    display: inline-block;
    margin-bottom: 0px;
    min-height: 110px;
    padding: 12px;
   /* vertical-align: top;*/
    width: 80%;
    margin-left: 20% !important;">
            <tr>
                <td class="res" rowspan="2" style="width: 11%">
                    <a href="../PDF_File/<%#Eval("result_research_atkt_file") %>" target="_blank"> 
                    <asp:Image ID="Image1" ImageUrl="~/LOGO/pdf.png" runat="server" Height="48px" 
                        Width="53px" />
                    </a>
                </td>
                <td class="res">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("result_research_atkt_filename") %>'></asp:Label>
                </td>
            </tr>
            
        </table>
        <br />
        <br />
    
    </ItemTemplate>

    </asp:DataList>


  <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
    ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
    SelectCommand="SELECT * FROM [Admin_Result_Research_atkt]">
</asp:SqlDataSource>

<br />
<h4 style="color: #343374;
    font-family: poppinsmedium;
    padding-bottom: 1px;
    padding-top: 10px; margin-left:8%; font-size: 28px;">Behavioral Science ATKT Results</h4>

 


    <asp:DataList ID="DataList8" runat="server" DataKeyField="result_behavioral_atkt_id" 
         Width="80%" RepeatColumns="2" 
    RepeatDirection="Horizontal" DataSourceID="SqlDataSource8"   >

        <HeaderTemplate>
         
        </HeaderTemplate>

    <ItemTemplate>

    

       <table class="downloads" style="width: 100%;
    /*list-style-type: disc;*/
    background: #f9f9f9 none repeat scroll 0 0;
    border: 1px solid #ddd;
    display: inline-block;
    margin-bottom: 0px;
    min-height: 110px;
    padding: 12px;
   /* vertical-align: top;*/
    width: 80%;
    margin-left: 20% !important;">
            <tr>
                <td class="res" rowspan="2" style="width: 11%">
                    <a href="../PDF_File/<%#Eval("result_behavioral_atkt_file") %>" target="_blank"> 
                    <asp:Image ID="Image1" ImageUrl="~/LOGO/pdf.png" runat="server" Height="48px" 
                        Width="53px" />
                    </a>
                </td>
                <td class="res">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("result_behavioral_atkt_filename") %>'></asp:Label>
                </td>
            </tr>
            
        </table>
        <br />
        <br />
    
    </ItemTemplate>

    </asp:DataList>
 


  <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
    ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
    SelectCommand="SELECT * FROM [Admin_Result_Behavioral_atkt]">
</asp:SqlDataSource>
 

 <br />
 <h4 style="color: #343374;
    font-family: poppinsmedium;
    padding-bottom: 1px;
    padding-top: 10px; margin-left:8%; font-size: 28px;">Forensic Science ATKT Results</h4>

 


    <asp:DataList ID="DataList9" runat="server" DataKeyField="result_forensic_atkt_id" 
         Width="80%" RepeatColumns="2" 
    RepeatDirection="Horizontal" DataSourceID="SqlDataSource9"   >

        <HeaderTemplate>
         
        </HeaderTemplate>

    <ItemTemplate>

    

       <table class="downloads" style="width: 100%;
    /*list-style-type: disc;*/
    background: #f9f9f9 none repeat scroll 0 0;
    border: 1px solid #ddd;
    display: inline-block;
    margin-bottom: 0px;
    min-height: 110px;
    padding: 12px;
   /* vertical-align: top;*/
    width: 80%;
    margin-left: 20% !important;">
            <tr>
                <td class="res" rowspan="2" style="width: 11%">
                    <a href="../PDF_File/<%#Eval("result_forensic_atkt_file") %>" target="_blank"> 
                    <asp:Image ID="Image1" ImageUrl="~/LOGO/pdf.png" runat="server" Height="48px" 
                        Width="53px" />
                    </a>
                </td>
                <td class="res">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("result_forensic_atkt_filename") %>'></asp:Label>
                </td>
            </tr>
            
        </table>
        <br />
        <br />
    
    </ItemTemplate>

    </asp:DataList>


  <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
    ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
    SelectCommand="SELECT * FROM [Admin_Result_Forensic_atkt]">
</asp:SqlDataSource>


  </form>


</body>
</html>


</asp:Content>

