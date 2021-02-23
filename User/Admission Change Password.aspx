<%@ Page Title="" Language="C#" MasterPageFile="~/User/Admission.master" AutoEventWireup="true" CodeFile="Admission Change Password.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="menu-container">
            <div class="container">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="menu-inner">
                            <nav class="navbar">
                                <ul class="nav navbar-nav">
                                    <li><a href="">Home</a></li>
                                    <li><a href="Admission Dashboard.aspx">Dashboard</a></li>                                   
                                     <li><a href="Admission Dashboard Courses.aspx">Courses</a></li>
                                    <li><a href="Admission Home.aspx">Logout</a></li>                       
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
                                <form runat="server" class="myform" method="post" accept-charset="utf-8">
                <fieldset>
                    <legend class="text-center">Change Password</legend>
                    <!-- username -->
                    <div class="form-group">
                        <div class="row colbox">     
                            <label for="txt_oldpass" class="control-label">Old Password</label>
                            <%--<input type="password" id="txt_oldpass" class="form-control input-lg" name="txt_oldpass" placeholder="Old Password" value="">--%>
                            <asp:TextBox ID="txt_oldpass" type="password" name="txt_oldpass" placeholder="Old Password" class="form-control input-lg" runat="server"></asp:TextBox>
                            <span class="text-danger"></span>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="row colbox">     
                            <label for="txt_newpass" class="control-label">New Password</label>
                           <%-- <input type="password" id="txt_newpass" class="form-control input-lg" name="txt_newpass" placeholder="New Password" value="">  --%>
                            <asp:TextBox ID="txt_newpass"  type="password"  class="form-control input-lg"  name="txt_newpass" placeholder="New Password" runat="server"></asp:TextBox>
                            <span class="text-danger"></span>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="row colbox">     
                            <label for="txt_newpassrep" class="control-label">Repeat Password</label>
                            <%--<input type="password" id="txt_newpassrep" class="form-control input-lg" name="txt_newpassrep" placeholder="Repeat Password" value="">  --%>
                            <asp:TextBox ID="txt_newpassrep" type="password" class="form-control input-lg" name="txt_newpassrep" placeholder="Repeat Password" runat="server"></asp:TextBox>
                            <span class="text-danger"></span>
                        </div>
                    </div>


                    <!-- signin button -->
                    <div class="form-gruop">
                        <div class="row colbox text-left">
                            <%--<input type="submit" id="btn_forgotpass" name="btn_forgotpass" value="Change Password" class="btn btn-primary">--%>
                            <asp:Button ID="btn_forgotpass" type="submit" name="btn_forgotpass" 
                                value="Change Password" class="btn btn-primary" runat="server" Text="Button" 
                                onclick="btn_forgotpass_Click" Width="118px" />
                            <br />
                            <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                        </div>
                    </div>
                </fieldset>
                </form>
            </div>        
        </div>
    </div>
</div>

</asp:Content>

