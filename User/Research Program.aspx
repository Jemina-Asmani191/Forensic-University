﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Master.master" AutoEventWireup="true" CodeFile="Research Program.aspx.cs" Inherits="User_Default2" %>

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
<%--<ul><li><a property="item" typeof="WebPage" title="Go to Gujarat Forensic Sciences University." href="Home.aspx" class="home">HOME</a></li>&raquo;<li>Contact Us</li>--%>  
   <ul><li><a property="item" typeof="WebPage" title="Go to Gujarat Forensic Sciences University." href="#" class="home">HOME</a></li>»<li><a property="item" typeof="WebPage" title="Go to Institute of Forensic Science." href="https://www.gfsu.edu.in/institute-of-forensic-science/" class="post post-page">Institute Of Research & Development</a></li>»<li>Programs</li> </ul>
                           </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           
    
    
    
    
  <form id="form1" runat="server">  
    
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
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
    padding-bottom: 8px;     line-height: 1.1; margin-right:10%;">Programs</h1>
                <br />
                <br />
              </div>
              <div class="card-body">
                <div class="toolbar">
                </div>
                <center>
                <table id="datatable" class="table table-striped table-bordered" cellspacing="0" style=" text-align:center; width:80%;"  >
                  <thead style=" background-color:#6362bc; text-align:justify; color:#fff; font-family: Georgia, serif; font-size:16px; ">
                    <tr>
                      <th>Research Course Name</th>
                      <th>Research Eligibility Criteria</th>
                      <th>Research Duration</th>
                      <th>Research seats</th>
                      <th>Research Course Fee</th>
                    </tr>
                  </thead>
                  <tbody>
    </HeaderTemplate>
    <ItemTemplate>
                    <tr>
                      <td style="width:15%; font-family: cursive;"><%#Eval("research_course")%></td>
                      <td style="width:40%; font-family: cursive;"><%#Eval("research_elligi_criteria")%></td>
                      <td style="width:5%; font-family: cursive;"><%#Eval("research_duration")%></td>
                      <td style="width:5%; font-family: cursive;"><%#Eval("research_seats")%></td>
                      <td style="width:35%; font-family: cursive;"><%#Eval("research_course_fees")%></td>
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
        SelectCommand="SELECT * FROM [Admin_Research_Program]"></asp:SqlDataSource>
    </form>
                    
 
 </body>


</html>

</asp:Content>
