<%@ Page Title="" Language="C#" MasterPageFile="~/User/Admission.master" AutoEventWireup="true" CodeFile="Admin Dashboard Home.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="menu-container">
            <div class="container">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="menu-inner">
                            <nav class="navbar">
                                <ul class="nav navbar-nav">
                                    <li><a href="Admin Dashboard Home.aspx">Home</a></li>
                                    <li><a href="Admission Dashboard.aspx">Dashboard</a></li>                                   
                                     <li><a href="Admission Dashboard Courses.aspx" >Courses</a></li>
                                    <li><a href="Admission Home.aspx">Logout</a></li>                       
                                </ul>                               
                            </nav> 
                        </div>
                    </div>
                </div>
            </div>
        </div>


<div class="container white-bg">
	    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        <h1>Welcome to IFSU Course Portal!</h1>
        <br/>
        <div id="body">
         
            <div class="row"><h4>Things you must have before you apply.</h4>
                <ul>
                    <li>Your Passport Photo  in JPG format with 413 X 531 pixels and less than 100Kb in size.</li>
                    <li>Supporting Document in JPG format with size of 500 X 500 pixel and less than 200kb in size.</li>
                    </ul>
            </div>
        </div>
        <p class="hide">Page rendered in <strong>0.0602</strong> seconds.</p>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
        <div class="limiter">
            <div class="container-login">
                <div class="wrap-login">
                                            
                        <!--<form class="login-form validate-form">!-->
                        <form id="Form1" runat="server" class="login-form validate-form" method="post" >
                                                <span class="login-form-title">
                            Hello <small> 
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label></small>
                        </span>
                       

                        <div class="container-login-form-btn">
                            <div class="wrap-login-form-btn">
                                <div class="login-form-bgbtn"></div>
                               
                                <asp:Button ID="btn_dashboard" class="btn btn-primary col-xs-12 .col-md-8"  
                                    runat="server" Text="DASHBOARD" onclick="btn_dashboard_Click"  />
                                    </div>
                                     </div>
                                       
                                     <br />
                                     </br>
                                      
                                      <div class="container-login-form-btn">
                            <div class="wrap-login-form-btn">
                                <div class="login-form-bgbtn"></div>
                               
                                <asp:Button ID="btn_courses" class="btn btn-primary col-xs-12 .col-md-8"  
                                    runat="server" Text="COURSES" onclick="btn_courses_Click"  />
                                    </div>
                                     </div>                         
                                              
                        </form>
                    
                </div>
            </div>
        </div>
    </div>
</div>

</asp:Content>

