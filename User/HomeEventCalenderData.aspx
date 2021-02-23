<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Master.master" AutoEventWireup="true" CodeFile="HomeEventCalenderData.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <form id="form1" runat="server">


    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">


   


    <ItemTemplate>

    

      <div class="banner-container">
                <div class="container-fluid">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="banner-inner">
                                <img src="../User Side Images/banner-inner.jpg" alt="GFSU">
                            </div>
                                                            <div class="banner-title">
                                                                    </div>
                            
                            <div class="breadcrums-con">
                                <div class="breadcrums-inner">
                                    <!-- Breadcrumb NavXT 6.1.0 -->
    <ul><li><a property="item" typeof="WebPage" title="Go to Gujarat Forensic Sciences University." href="Home.aspx" class="home">HOME</a></li>»<li><a property="item" typeof="WebPage" title="Go to the Events category archives." href="Event Calendar.aspx" class="taxonomy category">Events</a></li>»<li><%#Eval("event_name") %>                                </li></ul></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    <center>
    <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 main-inner-box">
       <article id="post-5011" class="post-5011 post type-post status-publish format-standard hentry category-events">
          <h1 class="entry-title"><%#Eval("event_name") %></h1>                                     <div class="event-info">
            <ul class="event-details list-inline">
               <li><i class="fa fa-calendar fa-2"></i> Date : <%#Eval("event_date") %> <%#Eval("event_month") %> 2019</li>
              
                     <li><i class="fa fa-map-marker fa-2"></i> Venue : <%#Eval("event_venue") %></li>

             </ul>
            </div>
          <div class="post-image">
           </div>
                                    <section class="entry-content">
                                                                                <p><%#Eval("event_name") %></p>
                                        <div class="entry-links"></div>
                                    </section>
                                </article>
                                <section id="comments">
    </section>                                                    </div>
    </center>
    
    </ItemTemplate>



    </asp:DataList>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
        SelectCommand="SELECT * FROM [Admin_Home_Event_Calender] WHERE ([event_id] = @event_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="event_id" QueryStringField="event_id" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>



</asp:Content>

