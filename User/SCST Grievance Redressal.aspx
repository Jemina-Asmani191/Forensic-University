<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Master.master" AutoEventWireup="true" CodeFile="SCST Grievance Redressal.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<html>
<head>

</head>
<body>

<form id="form1" runat="server" >

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
<ul><li><a property="item" typeof="WebPage" title="Go to Gujarat Forensic Sciences University." href="Home.aspx" class="home">HOME</a></li>&raquo;<li>SC/ST Grievance Redressal</li>                                
</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

 <h1 class="card-title" style="margin-left:8%; border-bottom: 1px solid rgba(197, 45, 51, 0.5);
    color: #c52d33;
    font-size: 26px;
    margin-bottom: 24px;
    margin-top: 3%;
    padding-bottom: 8px; width:80%;    line-height: 1.1; ">SC/ST Grievance Redressal</h1>

    <h4 style="color: #343374;
    font-family: poppinsmedium;
    font-size: 22px; width:80%;
    padding-bottom: 1px;
    padding-top: 10px; margin-left:8%">  Lodging complaints of Caste Based Discrimination to SC/ST/OBC Students/Teachers/Non-Teaching Staff(s) </h4>

    <center>
    <div class="frm_forms  with_frm_style frm_style_formidable-style" style="width:84%" id="frm_form_3_container">
<div class="frm_form_fields ">


<div class="frm_fields_container">

<div id="frm_field_11_container" class="frm_form_field form-field  frm_required_field frm_top_container frm_first frm_half">
   <%-- <label for="field_cn84f" class="frm_primary_label">Name--%>
   <asp:Label ID="Label1"  class="frm_primary_label"
       runat="server" Text="Name"></asp:Label>
        <span class="frm_required">*</span>
    
    <%--<input type="text" id="field_cn84f" name="item_meta[11]" value="" data-reqmsg="This field cannot be blank." data-invmsg="Text is invalid" pattern="\[-'[a-z]-z[A-Z]-Z\]$">--%>
    <asp:TextBox ID="txt_name" runat="server" type="text" name="item_meta[11]" 
        value="" data-reqmsg="This field cannot be blank." 
        data-invmsg="Text is invalid" MaxLength="30" required=""></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                            ErrorMessage="Only Character is valid" ControlToValidate="txt_name" 
                                            ForeColor="Red" 
                                            ValidationExpression="^[a-zA-Z'.\s]{1,15}"></asp:RegularExpressionValidator>
    
</div>
<div id="frm_field_12_container" class="frm_form_field form-field  frm_required_field frm_top_container frm_first frm_half">
    
    <asp:Label ID="Label2" runat="server" Text="Email" class="frm_primary_label"></asp:Label>
        <span class="frm_required">*</span>
  
    <asp:TextBox ID="txt_email" runat="server" type="email" name="item_meta[12]" 
        value="" data-reqmsg="This field cannot be blank." 
        data-invmsg="Email is invalid" MaxLength="40" required=""></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                                runat="server" ControlToValidate="txt_email" 
                                ErrorMessage="Enter Correct Email Address" ForeColor="Red" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    
    
</div>
<div id="frm_field_13_container" class="frm_form_field form-field  frm_required_field frm_top_container frm_first frm_half">
    
    <asp:Label ID="Label3" runat="server" Text="Complaint" class="frm_primary_label"></asp:Label>
        <span class="frm_required">*</span>

    
    <asp:TextBox ID="txt_complain" runat="server" name="item_meta[13]" rows="5" 
        data-reqmsg="This field cannot be blank." data-invmsg="Complaint is invalid" 
        TextMode="MultiLine" MaxLength="500" required=""></asp:TextBox>
    
    
</div>
<%--<input type="hidden" name="item_key" value="">--%>
<div class="frm_submit">

<%--<button class="frm_button_submit" type="submit">Submit</button>--%>
    <asp:Button ID="btn_submit" runat="server" Text="Submit" 
        class="frm_button_submit" type="submit" onclick="btn_submit_Click" />

</div></div>

</div>

</div>

</center>
    </form>
</body>
</html>


</asp:Content>

