<%@ Page Title="" Language="C#" MasterPageFile="~/User/Admission.master" AutoEventWireup="true" CodeFile="Admission Edit Profile.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div class="menu-container">
            <div class="container">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="menu-inner">
                            <nav class="navbar">
                                <ul class="nav navbar-nav">
                                    <li><a href="Admin Dashboard Home.aspx" >Home</a></li>
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
        <div class="col-xs-12 col-md-8">
            <form runat="server" id="usereditprofile" enctype="multipart/form-data" method="post" accept-charset="utf-8">
            <input type="hidden" name="userid" id="txt_userid" value="606">
            <fieldset>
                <legend class="text-center">Edit Profile</legend>
                <!-- employee name -->
                                <h2 class="registration-title">Personal Details</h2>
                <div class="form-group">
                    <div class="row colbox">
                        <div class="col-xs-12 col-md-12">
						
                            <label for="txt_stuname" class="control-label">Name  <span class="asterisk">*</span></label>
                            <div class="row">
                                <div class="col-xs-12 col-sm-4 col-md-4">
                                    <div class="form-group">

                                        
                                   
                                        <asp:TextBox ID="txt_stufname" type="text" required="" name="txt_stufname" maxlength="50" runat="server" class="form-control input-lg" placeholder="First Name*"></asp:TextBox>
                                   
                                   
                                    </div>
									<span class="text-danger"></span>
                                </div>
                                <div class="col-xs-12 col-sm-4 col-md-4">
                                    <div class="form-group">
                                        
                                        <asp:TextBox ID="txt_stumname" runat="server" type="text" name="txt_stumname" class="form-control input-lg" placeholder="Middle Name"></asp:TextBox>

                                    </div>
									<span class="text-danger"></span>
                                </div>
                                <div class="col-xs-12 col-sm-4 col-md-4">
                                    <div class="form-group">
                                        
                                        <asp:TextBox ID="txt_stulname" runat="server" type="text" name="txt_stulname" class="form-control input-lg" placeholder="Last Name"></asp:TextBox>
                                    
                                    
                                    </div>
									<span class="text-danger"></span>
                                </div>
                               
                            </div>
                           
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row colbox">
                        <div class="col-xs-12 col-md-12">
                            <label for="Gender" class="control-label">Gender  <span class="asterisk">*</span></label>
                            <div class="radio">
                                <label class="radio-inline">
                               
                                    <asp:RadioButton ID="Radiomale" runat="server" type="radio" GroupName="radio_gender" Text="Male"  />
                                            
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            
                                    <asp:RadioButton ID="Radiofemale" runat="server"  type="radio" GroupName="radio_gender" Text="Female"/>

                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row colbox">
                        <div class="col-xs-12 col-md-12">
                            <label for="txt_dateofbirth" class="control-label">Date of Birth (mm/dd/yyyy)  <span class="asterisk">*</span></label>
                            <div class="dobfield">
                                
                                <asp:TextBox ID="txt_dateofbirth" class="form-control input-lg" TextMode="Date" placeholder="dd/mm/yyyy*" type="text" name="txt_dateofbirth" runat="server" required=""></asp:TextBox>
                                
                                <span class="text-danger"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="row colbox">
                        <div class="col-xs-12 col-md-12">
                            <label for="txt_eduqua" class="control-label">Education Qualification <span class="asterisk">*</span></label>
                            <div class="eduquafield">
							
                            <asp:DropDownList ID="txt_eduqua" class="form-control input-lg selectpicker show-tick" name="txt_eduqua" required runat="server">
                                
                                <asp:ListItem>Bachlor of Science</asp:ListItem>
                                <asp:ListItem>Bachlor of Engineering</asp:ListItem>
                                <asp:ListItem>Bachlor of Commerce</asp:ListItem>
                                <asp:ListItem>Bachlor of Arts</asp:ListItem>

                                
                                <asp:ListItem>Master of Science</asp:ListItem>
                                <asp:ListItem>Master of Engineering</asp:ListItem>
                                <asp:ListItem>Master of Commerce</asp:ListItem>
                                <asp:ListItem>Master of Arts</asp:ListItem>

                                <asp:ListItem>Others</asp:ListItem>

                                </asp:DropDownList>



                                <span class="text-danger"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- employee address -->
                <div class="form-group">
                    <div class="row colbox">
                        <div class="col-xs-12 col-md-12">
                            <label for="txt_emp_addr" class="control-label">Student Address <span class="asterisk">*</span></label>
                            <asp:TextBox ID="txt_std_addr" runat="server" class="form-control input-lg" name="txt_std_addr" placeholder="*Address" type="text" value=""></asp:TextBox>
							<span class="text-danger"></span>
                            
                        </div>
                        <div class="col-xs-12 col-md-6">
                            
                        </div>
                        <div class="col-xs-12 col-md-6">
                            
                        </div>
                        <div class="col-xs-12 col-md-6">
                             <asp:TextBox ID="txt_std_country" class="form-control input-lg" required runat="server" name="txt_std_country" placeholder="*Country" type="text" value=""></asp:TextBox>
                            
                            
							<span class="text-danger"></span>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <asp:TextBox ID="txt_std_zipcode" class="form-control input-lg" maxlength="6" runat="server" name="txt_std_zipcode" placeholder="Zipcode / Pincode" type="text" value=""></asp:TextBox>
							<span class="text-danger"></span>
                        </div>
                        <span class="text-danger"></span>

                    </div>
                </div>
                <h2 class="registration-title">Contact Details</h2>
                <!-- employee email -->
                <div class="form-group">
                    <div class="row colbox">
                        <div class="col-xs-12 col-md-12">
                            <label for="txt_email" class="control-label">Student Email <span class="asterisk">*</span></label>
                            <asp:TextBox ID="txt_email" disabled="disabled" class="form-control input-lg" runat="server" name="txt_email" placeholder="*Email" value="" type="email"></asp:TextBox>
                            <span class="text-danger"></span>
                        </div>
                    </div>
                </div>
                <!-- employee Contact no -->
                <div class="form-group">
                    <div class="row colbox">
                        <div class="col-xs-12 col-md-12">
                            <label for="txt_email" class="control-label">Student Contact No <span class="asterisk">*</span></label>
                             <asp:TextBox ID="txt_contact" disabled="disabled" class="form-control input-lg" runat="server" name="txt_contact" placeholder="*Contact Number" value="" type="text" ></asp:TextBox>

                            <span class="text-danger"></span>
                        </div>
                    </div>
                </div>
                <hr>
               
                <h2 class="registration-title">Photo Details</h2>
                <!-- employee username -->
                <div class="form-group">
                    <div class="row colbox">
                        <div class="col-xs-12 col-md-6">
                            <label for="applicant_image" class="control-label">Applicant's Photo <span class="asterisk">*</span></label><br> (JPG Format, Max 413 X 531 pixels, Less than 100Kb)
                            
                        <asp:FileUpload ID="FileUpload_profile" runat="server" />
                        <asp:Label ID="lbl_profile" runat="server" ForeColor="Red"></asp:Label>
                        
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <label for="idprof_image" class="control-label">Identification Proof Photo <span class="asterisk">*</span></label><br> (JPG Format, Max 500 X 500 pixels, Less than 200Kb)
                           
                            <asp:FileUpload ID="FileUpload_proof" runat="server" />                       
                                      <asp:Label ID="lbl_proof" runat="server" ForeColor="Red"></asp:Label>                         
                                                                         
                                                       
                                                        <span class="text-danger"></span>
                        </div>
                    </div>
                </div>
                <!-- sigup button -->
                <div class="form-group">
                    <div class="row colbox">
                        <div class="col-xs-4 col-md-2">
                           
                            <asp:Button ID="btn_update" runat="server" Text="Update" 
                                class="btn btn-primary col-xs-12 .col-md-8" onclick="btn_update_Click1" />

                        </div>
                    </div>
                </div>
            </fieldset>
            </form>        </div>
    </div>
</div>


    </asp:Content>

