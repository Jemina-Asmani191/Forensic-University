<%@ Page Title="" Language="C#" MasterPageFile="~/User/Admission.master" AutoEventWireup="true" CodeFile="Admission Register.aspx.cs" Inherits="User_Default2" %>

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
        <div class="col-xs-12 col-md-8">
            <form runat="server" ID="signupForm" method="post" accept-charset="utf-8">
            <fieldset>
                <legend class="text-center">Student Registration</legend>
                <!-- employee name -->
                                <h2 class="registration-title"><span>Personal Details</span></h2>
                <div class="form-group">
                    <div class="row colbox">
                        <div class="col-xs-12 col-md-12">
                            <label for="txt_stuname" class="control-label">Name <span class="asterisk">*</span></label>
                            <div class="row">
                                <div class="col-xs-12 col-sm-4 col-md-4">
                                    <div class="form-group">
                                       
                                        <asp:TextBox ID="txt_stufname" type="text" name="txt_stufname" maxlength="25" runat="server" class="form-control input-lg" placeholder="*First Name" tabindex="1" value=""></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                            ErrorMessage="Only Character is valid" ControlToValidate="txt_stufname" 
                                            ForeColor="Red" 
                                            ValidationExpression="^[a-zA-Z'.\s]{1,15}"></asp:RegularExpressionValidator>
                                    </div>
                                    <span class="text-danger"></span>
                                </div>
                                <div class="col-xs-12 col-sm-4 col-md-4">
                                    <div class="form-group">
                                        <%-- <input type="text" name="txt_stumname" id="txt_stumname" class="form-control input-lg" placeholder="Middle Name" tabindex="2" value="">--%>
                                        <asp:TextBox ID="txt_stumname" runat="server" type="text" name="txt_stumname" 
                                            class="form-control input-lg" placeholder="Middle Name" tabindex="2" value="" 
                                            MaxLength="25"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                            ErrorMessage="Only Character is valid" ControlToValidate="txt_stumname" 
                                            ForeColor="Red" 
                                            ValidationExpression="^[a-zA-Z'.\s]{1,15}"></asp:RegularExpressionValidator>

                                    </div>
                                    <span class="text-danger"></span>
                                </div>
                                <div class="col-xs-12 col-sm-4 col-md-4">
                                    <div class="form-group">
                                        <%--<input type="text" name="txt_stulname" id="txt_stulname" class="form-control input-lg" placeholder="Last Name" tabindex="3" value="">--%>
                                        <asp:TextBox ID="txt_stulname" runat="server" type="text" name="txt_stulname" 
                                            class="form-control input-lg" placeholder="Last Name" tabindex="3" value="" 
                                            MaxLength="25"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                                            ErrorMessage="Only Character is valid" ControlToValidate="txt_stulname" 
                                            ForeColor="Red" 
                                            ValidationExpression="^[a-zA-Z'.\s]{1,15}"></asp:RegularExpressionValidator>
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
                               
                                    <asp:RadioButton ID="RadioMale" runat="server" GroupName="gender" type="radio" value="Male" />
                                    Male&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                
                                    
                                   <asp:RadioButton ID="RadioFemale" runat="server" GroupName="gender" type="radio" value="Female" />
                                    Female
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row colbox">
                        <div class="col-xs-12 col-md-12">
                            <label for="txt_dateofbirth" class="control-label">Date of Birth <span class="asterisk">*</span></label>
                            <div class="dobfield">
                                <%--<input class="form-control input-lg" type="text" placeholder="mm/dd/yyyy" id="txt_dateofbirth" name="txt_dateofbirth" value="" required>--%>
                                
                                <asp:TextBox ID="txt_dateofbirth" runat="server" class="form-control input-lg" type="text" placeholder="mm/dd/yyyy" TextMode="Date" name="txt_dateofbirth" value="" required></asp:TextBox>
                                
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
                            <label for="txt_emp_addr" class="control-label">Address <span class="asterisk">*</span></label>
                           
                            <asp:TextBox ID="txt_std_addr" runat="server" class="form-control input-lg" name="txt_std_addr" placeholder="*Address" type="text" value=""></asp:TextBox>


                            <span class="text-danger"></span>
                           
                        </div>
                        <div class="col-xs-12 col-md-6">
                            
                        </div>
                        <div class="col-xs-12 col-md-6">
                           
                        </div>
                        <div class="col-xs-12 col-md-6">
                            
                            <asp:TextBox ID="txt_std_country" class="form-control input-lg"  runat="server" name="txt_std_country" placeholder="*Country" type="text" value=""></asp:TextBox>
                            
                            
                            <span class="text-danger"></span>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            
                            <asp:TextBox ID="txt_std_zipcode" class="form-control input-lg" maxlength="6" runat="server" name="txt_std_zipcode" placeholder="Zipcode / Pincode" type="text" value=""></asp:TextBox>
                            
                            <span class="text-danger"></span>
                        </div>


                    </div>
                </div>
                <h2 class="registration-title"><span>Contact Details</span></h2>
                <!-- employee email -->
                <div class="form-group">
                    <div class="row colbox">
                        <div class="col-xs-12 col-md-12">
                            <label for="txt_email" class="control-label">Email  <span class="asterisk">*</span></label>                            
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lbl_email" runat="server" ForeColor="Red"></asp:Label>
                            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                                runat="server" ControlToValidate="txt_email" 
                                ErrorMessage="Enter Correct Email Address" ForeColor="Red" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txt_email" class="form-control input-lg" runat="server" name="txt_email" placeholder="*Email" value="" type="email"></asp:TextBox>

                            <span class="text-danger"></span>
                        </div>
                    </div>
                </div>
                <!-- employee Contact no -->
                <div class="form-group">
                    <div class="row colbox">
                        <div class="col-xs-12 col-md-12">
                            <label for="txt_email" class="control-label">Contact No <span class="asterisk">*</span></label>
                            <%--<input class="form-control input-lg" id="txt_contact" name="txt_contact" placeholder="*Contact Number" value="" type="text" />  --%>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txt_contact" 
                                ErrorMessage="start With 6 and above to 9" 
                                ForeColor="Red" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txt_contact" class="form-control input-lg" runat="server" 
                                name="txt_contact" placeholder="*Contact Number" value="" type="text" 
                                MaxLength="10" ></asp:TextBox>


                            <span class="text-danger"></span>
                        </div>
                    </div>
                </div>
                <hr/>
                <h2 class="registration-title"><span>Login Details</span></h2>
                <!-- employee username -->
                <div class="form-group">
                    <div class="row colbox">
                        <div class="col-xs-12 col-md-12">
                            <label for="txt_username" class="control-label">Username <span class="asterisk">*</span></label>
                            <%--<input class="form-control input-lg" id="txt_username" name="txt_username" placeholder="*Username" type="text" value="" /> --%>
                            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                            <asp:TextBox ID="txt_username" class="form-control input-lg" runat="server" name="txt_username" placeholder="*Username" type="text" value=""></asp:TextBox>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                                            ErrorMessage="Only Character is valid" ControlToValidate="txt_username" 
                                            ForeColor="Red" 
                                            ValidationExpression="^[a-zA-Z'.\s]{1,15}"></asp:RegularExpressionValidator>
                            <span class="text-danger"></span>
                        </div>
                    </div>
                </div>
                <!-- employee password -->
                <div class="form-group">
                    <div class="row colbox">
                        <div class="passbox">
                            <div class="col-xs-12 col-md-6">
                                <label for="txt_password" class="control-label">Password <span class="asterisk">*</span></label>
                                <%--<input class="form-control input-lg" id="txt_password" name="txt_password" placeholder="*Password" type="password" value=""/>  --%>
                                
                                <asp:TextBox ID="txt_password" class="form-control input-lg" runat="server" name="txt_password" placeholder="*Password" type="password" value=""></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="txt_password" ErrorMessage="This require at least one digit ,at least one alphabetic character ,no special character ,and form 6-15 characters in length" 
                                    ForeColor="Red" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{6,15})$"></asp:RegularExpressionValidator>
                                <span class="text-danger"></span>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <label for="txt_confirm_password" class="control-label">Confirm Password <span class="asterisk">*</span></label>
                                <%--<input class="form-control input-lg" id="txt_confirm_password" name="txt_confirm_password" placeholder="*Confirm Password" type="password" value=""/> --%>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="txt_password" ControlToValidate="txt_confirm_password" 
                                    ErrorMessage="Must Be Same Password" ForeColor="Red"></asp:CompareValidator>
                                <asp:TextBox ID="txt_confirm_password" class="form-control input-lg" runat="server" name="txt_confirm_password" placeholder="*Confirm Password" type="password" value=""></asp:TextBox>

                                <span class="text-danger"></span>
                            </div>
                        </div>
                    </div>
                </div>
               
                <h2 class="registration-title">Photo Details</h2>
                <!-- employee username -->
                <div class="form-group">
                    <div class="row colbox">
                        <div class="col-xs-12 col-md-6">
                            <label for="applicant_image" class="control-label">Applicant's Photo <span class="asterisk">*</span></label><br> (JPG Format, Max 413 X 531 pixels, Less than 100Kb)
                                             
                        <asp:FileUpload ID="FileUpload_profile" runat="server" />
                        <asp:Label ID="lbl_profile" runat="server" Text=""></asp:Label>
                        
                         </div>
                        <div class="col-xs-12 col-md-6">
                            <label for="idprof_image" class="control-label">Identification Proof Photo <span class="asterisk">*</span></label><br> (JPG Format, Max 500 X 500 pixels, Less than 200Kb)
                            
                            <asp:FileUpload ID="FileUpload_proof" runat="server" />                       
                            <asp:Label ID="lbl_proof" runat="server" Text=""></asp:Label>                         
                                                       
                                                        <span class="text-danger"></span>
                        </div>
                    </div>
                </div>

                 <!-- sigup button -->
                <div class="form-group">
                    <div class="row colbox">
                        <div class="col-xs-4 col-md-2">
                            
                            <asp:Button ID="btn_signup" runat="server" name="btn_signup" type="submit" 
                                class="btn btn-primary col-xs-12 .col-md-8" value="Register" Text="Register" 
                                onclick="btn_signup_Click" />
                        
                        </div>
                        <div class="col-xs-4 col-md-2">
                           
                            <asp:Button ID="btn_reset" type="reset" runat="server" Text="Clear" 
                                name="btn_reset" class="btn btn-default col-xs-12 .col-md-8" value="Clear" 
                                onclick="btn_reset_Click" />

                        </div>
                    </div>
                </div>





                <div class="text-center">
                    Already signed up, <a href="Admission Home.aspx" >Please Login Here.</a>
                    <br/><br/><br/>
                </div>
            </fieldset>
            </form>        </div>
    </div>
</div>



</asp:Content>

