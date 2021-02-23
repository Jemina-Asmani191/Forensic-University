<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admission Receipt.aspx.cs" Inherits="User_Admission_Receipt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html>
<head>
<title>
Receipt for admission
</title>

</head>
<body>


<center>

<div style="border:2%; height:auto; width:68%;  ">

<br />

<div>

<img src="../LOGO/DruryHorizontalStackedBW (1).png" width="50%" height="120px"/>
</div>


<div>
<h2>Application For 2019 Admission</h2>
<h3>Indian Forensic Science University</h3>
<h3>
ONLINE APPLICATION FOR ADMISSION TO FORENSIC SCIENCE UNIVERSITY OF
 FULL TIME POST GRADUATE DEGREE COURSE IN
    <asp:Label ID="lbl_course" runat="server" Text=""></asp:Label> FOR THE
ACADEMIC YEAR 2019-20</h3>
</div>



<div>
E- RECEIPT (CANDIDATE'S COPY)
</div>
<div>
Application Fee Payment Details
</div>

<div style="width:80%; float:left; font-size:x-large; text-align:left;">
<br />
<br />
<br />
Registration Number : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl_register" runat="server" Text=""></asp:Label>
    <br />
    <br />
Applicant's  Name : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl_fname" runat="server" Text=""></asp:Label>
    <asp:Label ID="lbl_mname" runat="server" Text=""></asp:Label>
      <asp:Label ID="lbl_lname" runat="server" Text=""></asp:Label>
    <br />
    <br />
Father's Name : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl_fathername" runat="server" Text=""></asp:Label>
    <br />
    <br />
Gender : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl_gender" runat="server" Text=""></asp:Label>
    <br />
    <br />
Date of Birth : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl_dob" runat="server" Text=""></asp:Label>
    <br />
    <br />
Email : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl_email" runat="server" Text=""></asp:Label>
    <br />
    <br />
Transaction Amount : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl_amt" runat="server" Text=""></asp:Label>
    <br />
    <br />
Address: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl_address" runat="server" Text=""></asp:Label><br />
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Label ID="lbl_country" runat="server" Text=""></asp:Label> 

    <asp:Label ID="lbl_pincode" runat="server" Text=""></asp:Label>
    <br />
    <br />
Mobile Number : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl_number" runat="server" Text=""></asp:Label>
    <br />
    <br />
</div >

<div style="width:20%; float:right;font-size:x-large; text-align:left;">

    <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" />
    <%--<img src="" runat="server" ID="Image1" />--%>
</div>


</div>
</center>



    

</body>



</html>