<%@ Page Title="" Language="C#" MasterPageFile="~/User/Admission.master" AutoEventWireup="true" CodeFile="Admission Dashboard.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">

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
   <div style="width:65%; float:left; margin-left:30px;">
        <asp:DataList runat="server" DataSourceID="SqlDataSource1" 
            onitemcommand="Unnamed1_ItemCommand" >
        

    <HeaderTemplate>
      <div class="container">
    <div class="row">
                <div class="col-xs-12 col-md-8 text-center well">
            <legend class="text-center">Your Dashboard</legend>
            <table class="table table-striped">
                <thead class="thead">
              
                <th>Course Name</th>
               <th>Fees</th>
                <th>Payment Status</th>
                </thead>
                <tbody class="tbody">

    
    </HeaderTemplate>
    <ItemTemplate>
                          <tr>
                                
                                <td class="text-left"><%#Eval("course_name") %></td>
                                <td>Rs 2100/-</td>
                                <td class="text-left">
                                    <%--<asp:Button ID="btn_pay" class="btn btn-danger btn-block" runat="server" Text="Pay Rs 2100/- Now" /></td>--%>
                                        <a href="https://securegw.paytm.in/link/81129/LL_3486051" target='_blank' rel='im-checkout' data-behaviour='remote' data-style='light' data-text="Pay with Paytm" style="border-radius: 2px;display: inline-block;border: 1px solid #e6ebf3;padding: 0 40px;color: #182233;font-size: 14px;text-decoration: none;font-family: 'Nunito Sans', sans-serif;height: 48px;line-height: 48px;background: #00b9f5;color: #ffffff;border: 1px solid #00b9f5;">
                                     <img style="margin-left: 5px;vertical-align:sub;width: 100px; height: 30px;" src="https://static1.paytm.in/1.4/plogo/paytmlogo-white.png" /></a>
                            
                            </tr>
    
    </ItemTemplate>
    <FooterTemplate>
    
                       
                </tbody>
            </table>
        </div> 
    
    </FooterTemplate>


    </asp:DataList>
    
      </div>

  

    
                          
                                  
    





        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
        SelectCommand="SELECT * FROM [Admission_Course] WHERE ([course_id] = @course_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="course_id" QueryStringField="course_id" 
                    Type="Int32" />
            </SelectParameters>
    </asp:SqlDataSource>
    
      

  

    
                          
                                  
    




         <div class="col-xs-12 col-md-4 sidebar" style="width:30%; float:right; margin-right:30px;">
            <table class="table">
                <tr>
                    <td>First Name</td>
                    <td colspan="2">
                        <asp:Label ID="lbl_firstname" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td colspan="2">
                        <asp:Label ID="lbl_lastname" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>Mail Address</td>
                    <td colspan="2">
                        <asp:Label ID="lbl_email" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>Contact Number</td>
                    <td colspan="2">
                        <asp:Label ID="lbl_contact_number" runat="server" Text="Label"></asp:Label> </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td colspan="2"><address>
                        <asp:Label ID="lbl_address" runat="server" Text="Label"></asp:Label><br/>
                        <asp:Label ID="lbl_country" runat="server" Text="Label"></asp:Label>                            
                        <asp:Label ID="lbl_pincode" runat="server" Text="Label"></asp:Label>                        </address></td>
                </tr>
                <tr>
                    <td>
                       <%-- <input type="submit" class="btn btn-primary" id="btn_logout" name="btn_changeprofile" value="Edit Profile"/>--%>
                    <asp:Button ID="btn_edit" runat="server" Text="Edit Profile" type="submit" 
                            name="btn_changeprofile" class="btn btn-primary" onclick="btn_edit_Click" />
                        
                        
                        </td>

                    <td>
                        <%--<input type="submit" class="btn btn-primary" id="btn_logout" name="btn_pwdchange" value="Change Password"/>--%>
                    <asp:Button ID="btn_change" runat="server" Text="Change Password" type="submit" 
                            name="btn_pwdchange" class="btn btn-primary" onclick="btn_change_Click" />


                        </td>
                    <td>
                       
                        <%--<input type="submit" class="btn btn-primary" id="btn_logout" name="btn_logout" value="LOGOUT"/>--%>
                        <asp:Button ID="btn_logout" runat="server" Text="LOGOUT" type="submit" 
                            name="btn_logout" class="btn btn-primary" onclick="btn_logout_Click" />
                        </form>                    </td>
                </tr>
            </table>

        </div>
    </div>


    </div>
    </form>
</asp:Content>

