<%@ Page Title="" Language="C#" MasterPageFile="~/User/Admission.master" AutoEventWireup="true" CodeFile="Admission Forgot Password.aspx.cs" Inherits="User_Default2" %>

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





<div class="container">
    <div class="row">
        <div class="col-xs-12  well">
            <div class="col-sm-8">
                                <form runat="server"  class="myform" method="post" accept-charset="utf-8">
                <fieldset>
                    <legend class="text-center">Forgot Password</legend>
                    <!-- username -->
                    <div class="form-group">
                        <div class="row colbox">     
                            <label for="txt_usernameormail" class="control-label">Enter Your Registered Email Address</label>
                            <%--<input type="text" id="txt_username" class="form-control input-lg" name="txt_usernameormail" placeholder="Registered E-Mail Address" value=""/>--%>
                            <asp:TextBox ID="txt_email" type="text" runat="server" class="form-control input-lg" name="txt_email" placeholder="Registered E-Mail Address" value=""></asp:TextBox>
                            <span class="text-danger"></span>
                        </div>
                    </div>


                    <!-- signin button -->
                    <div class="form-gruop">
                        <div class="row colbox text-left">
                            <%--<input type="submit" id="btn_forgotpass" name="btn_forgotpass" value="Submit" class="btn btn-primary"/>--%>
                            <asp:Button ID="btn_forgotpass" type="submit"  name="btn_forgotpass"  
                                class="btn btn-primary" runat="server" Text="Submit" 
                                onclick="btn_forgotpass_Click" />
                            <br />
                            <asp:Label ID="Labmsg" runat="server"></asp:Label>
                        </div>
                    </div>
                </fieldset>
                </form>
            </div>        
        </div>
    </div>
</div>



</asp:Content>

