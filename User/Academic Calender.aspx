<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Master.master" AutoEventWireup="true" CodeFile="Academic Calender.aspx.cs" Inherits="User_Default2" %>

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
<ul><li><a property="item" typeof="WebPage" title="Go to Gujarat Forensic Sciences University." href="Home.aspx" class="home">HOME</a></li>&raquo;<li>Academic Calender</li>                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           
    
    
    
    
  <form id="form1" runat="server">  
    
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
    <HeaderTemplate>
    <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h1 class="card-title" style="margin-left:10%; border-bottom: 1px solid rgba(197, 45, 51, 0.5);
    color: #c52d33;
    font-size: 26px;
    margin-bottom: 24px;
    margin-top: 3%;
    padding-bottom: 8px;     line-height: 1.1; margin-right:10%;">Academic Calender</h1>
                <br />
              
                
              </div>
              <div class="card-body">
                <div class="toolbar">
                  <!--        Here you can write extra buttons/actions for the toolbar              -->
                </div>
                <center>
                <table id="datatable" class="table table-striped table-bordered" cellspacing="0" style=" text-align:center; width:80%;"  >
                  <thead style=" background-color:#6362bc; text-align:justify; color:#fff; font-family: Georgia, serif; font-size:16px; ">
                    <tr>
                      <th>Date </th>
                      <th>Event</th>
                      
                    </tr>
                  </thead>
                  
                  <tbody>
    </HeaderTemplate>
    <ItemTemplate>
    <tr>
                      <td style="width:20%; font-family: cursive;"><%#Eval("academic_date")%></td>
                      <td style="width:80%; font-family: cursive;"><%#Eval("academic_desc")%></td>
                      
                      <%--<td class="text-right">
                        <a href="#" class="btn btn-info btn-link btn-icon btn-sm like"><i class="fa fa-heart"></i></a>
                        <a href="#" class="btn btn-warning btn-link btn-icon btn-sm edit"><i class="fa fa-edit"></i></a>
                        <a href="#" class="btn btn-danger btn-link btn-icon btn-sm remove"><i class="fa fa-times"></i></a>
                      </td>--%>
                    </tr>
    </ItemTemplate>

    

    <FooterTemplate>
    
     
                  </tbody>
                </table>
                </center>
              </div>
              </div>
              </div>
              </div>
              </div>
    </FooterTemplate>
    </asp:Repeater>
          
           
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
        SelectCommand="SELECT * FROM [Admin_Academic_Calendar]"></asp:SqlDataSource>
          
           
   
    </form>
                    
 
 </body>


</html>



</asp:Content>

