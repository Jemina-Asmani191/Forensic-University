<%@ Page Title="" Language="C#" MasterPageFile="~/User/Admission.master" AutoEventWireup="true" CodeFile="Admission Home.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div class="menu-container">
            <div class="container">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="menu-inner">
                            <nav class="navbar">
                                <ul class="nav navbar-nav">
                                    <li style="font-size:x-large;"><a href="Admission Home.aspx">Home</a></li>
                                    <li style="font-size:x-large;"><a href="Admission Register.aspx">Register</a></li>  
                                    <li style="font-size:x-large;"><a href="Admission Courses.aspx">Courses</a></li>
                                                                   
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
                            Hello <small>Students</small>,<br/><div class="small-font">Login Here.</div>
                        </span>
                        <div class="wrap-input validate-input" data-validate = "Valid email is: a@b.c">
                            <%--<input class="input" type="text" name="txt_username">--%>
                            <asp:TextBox ID="txtusername" class="input" type="text" name="txt_username" runat="server"></asp:TextBox>
                            <span class="focus-input" data-placeholder="Username"></span>
                        </div>

                        <div class="wrap-input validate-input" data-validate="Enter password">
                            <span class="btn-show-pass">
                                <i class="fa fa-eye"></i>
                            </span>
                            <%--<input class="input" type="password" name="txt_password">--%>
                            <asp:TextBox ID="txtpassword" runat="server" class="input" type="password" name="txt_password"></asp:TextBox>
                            <span class="focus-input" data-placeholder="Password"></span>
                        </div>

                        <div class="container-login-form-btn">
                            <div class="wrap-login-form-btn">
                                <div class="login-form-bgbtn"></div>
                                <%--<button type="submit" id="btn_login" name="btn_login" class="login-form-btn">
                                    Login
                                </button>--%>
                                <asp:Button ID="btn_login" class="btn btn-primary col-xs-12 .col-md-8"  
                                    runat="server" Text="LogIn" onclick="btn_login_Click" />

                             
                            </div>
                        </div>
                           <asp:Label ID="lbl_login" runat="server" Font-Names="Century Gothic" 
                                    ForeColor="Red"></asp:Label>

                        <br/>
                        <div class="text-center p-t-115">
                            <a href="Admission Forgot Password.aspx" title="Forgot Password">Forgot Password? </a><br/><br/>
                            <span class="txt1">
                                Don’t have an account?
                            </span>

                            <a class="txt2" href="Admission Register.aspx">
                                Sign Up
                            </a>
                        </div>
                        </form>
                    
                </div>
            </div>
        </div>
    </div>
</div>





</asp:Content>

