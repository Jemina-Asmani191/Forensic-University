<%@ Page Title="" Language="C#" MasterPageFile="~/User/Admission.master" AutoEventWireup="true" CodeFile="Admission Dashboard Courses.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<form id="form1" runat="server">

<div class="menu-container">
            <div class="container">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="menu-inner">
                            <nav class="navbar">
                                <ul class="nav navbar-nav">
                                    <li><a href="">Home</a></li>
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
     
           <center>
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    >
               
            <HeaderTemplate>
            
            
             <div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-12 text-center well">
                        <legend class="text-center">Courses Offered</legend>
           
      




            <table class="table table-striped">
                <thead class="thead">
                <tr>
                <th>Course Title</th>
                <th>Course Duration</th>
                <th>Course Fee</th>
                <th>Apply</th>
                </tr>
                </thead>
                <tbody class="tbody">
            
            </HeaderTemplate>

           <ItemTemplate>
                    <tr>  
                            <td class="text-left"><%#Eval("course_name") %></td>
                            <td><%#Eval("course_duration") %></td>
                            <td><%#Eval("course_fee") %></td>
                            <td><%--<asp:Button ID="btnapply" class="btn btn-default" runat="server" 
                                    Text="Apply Now" oncommand="btnapply_Command" />--%>
                                <a class="btn btn-default" href='Admission Dashboard.aspx?course_id=<%#Eval("course_id") %>' >Apply Now</a>
                            <br>
                            </td>
                        </tr>  
                 </ItemTemplate>

                 <FooterTemplate>                  
                </tbody>
            </table>
        </div>
    </div>
</div>

</FooterTemplate>

      </asp:DataList>


</center>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
                SelectCommand="SELECT * FROM [Admission_Course]"></asp:SqlDataSource>
            </form>

</asp:Content>

