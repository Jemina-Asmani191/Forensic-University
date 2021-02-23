<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Master.master" AutoEventWireup="true" CodeFile="Students Achievement.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<html>
<head>


</head>


<body>
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
<ul><li><a property="item" typeof="WebPage" title="Go to Gujarat Forensic Sciences University." href="Home.aspx" class="home">HOME</a></li>&raquo;<li>Students Achievement</li>                                
</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

 


    <form id="form1" runat="server">

    <asp:DataList ID="DataList_students" runat="server" DataKeyField="achievement_id" 
         RepeatColumns="3" RepeatDirection="Horizontal" 
        onselectedindexchanged="DataList_students_SelectedIndexChanged" Width="80%">
       <HeaderTemplate>
         <h1 class="card-title" style="margin-left:10%; border-bottom: 1px solid rgba(197, 45, 51, 0.5);
    color: #c52d33;
    font-size: 26px;
    margin-bottom: 24px;
    margin-top: 3%;
    padding-bottom: 8px; width:100%;    line-height: 1.1; ">Students Achievement</h1>
                <br />
        </HeaderTemplate>
        <ItemTemplate>

        

            <table style="width: 100%; margin-left:25%; font-color:#c52d33; ">
            
            
                <tr >
                     <div style="border:1px;">
                    <td style="padding:5% 10% 1% 10%; ">
                            <img src='../Students Achievement Image/<%#Eval("achievement_image") %>' Height="100px" Width="300px" />
                    </div>
                    </td>
                </tr>
                <tr>
                
                    <td style="padding: 0% 10% 0% 10%; width:20%">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("achievement_desc") %>' 
                            Width="300px" style="font-family:Georgia, serif; font-size:18px; " ></asp:Label>
                    </td>
                </tr>
                
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
        SelectCommand="SELECT * FROM [Admin_Students_Achievement]"></asp:SqlDataSource>


        <div class="clearfix"></div>
          
    <div style="text-align: center">
        <ul class="pagination" style="margin: auto">
            <asp:Repeater ID="rpPaging" runat="server" OnItemDataBound="rpPaging_ItemDataBound">
                <ItemTemplate>
                    <asp:HiddenField ID="hdValue" Value='<%# Eval("CrrPage") %>' runat="server" />
                    <li class='<%# Eval("Acitve") %>'>
                        <asp:LinkButton Style="border-radius:0px;" ID="btnPageChange" OnClick="btnPageChange_Click" runat="server"><%# Eval("CrrPage") %></asp:LinkButton>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
	
    <div style="float:right; margin-right:10%;">
     <asp:Button ID="btn_prev" class="frm_button_submit" runat="server" Text="<<" onclick="btn_prev_Click" 
          style=" z-index: 0; color: #fff!important;
    background-color: #343374 !important; font-size: 24px!important; border-radius: 50%; transition: opacity 0s; webkit-touch-callout: none;
    -webkit-user-select: none;
    -khtml-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none; border: none;
    display: inline-block;
    padding: 8px 16px;
    vertical-align: middle;
    overflow: hidden;
    text-decoration: none;
    color: inherit;
    background-color: inherit;
    text-align: center;
    cursor: pointer;
    white-space: nowrap; " />



    
            <asp:Button ID="btn_next" class="frm_button_submit" runat="server" Text=">>" onclick="btn_next_Click" 
            style="    z-index: 0; color: #fff!important;
    background-color: #343374 !important; font-size: 24px!important; border-radius: 50%; transition: opacity 0s; webkit-touch-callout: none;
    -webkit-user-select: none;
    -khtml-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none; border: none;
    display: inline-block;
    padding: 8px 16px;
    vertical-align: middle;
    overflow: hidden;
    text-decoration: none;
    color: inherit;
    background-color: inherit;
    text-align: center;
    cursor: pointer;
    white-space: nowrap; " />

             </div>
            
            <br />
            <br />         


    </form>
</body>
</html>

</asp:Content>

