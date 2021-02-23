<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Master.master" AutoEventWireup="true" CodeFile="HomeNewsUpdateData.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <form id="form1" runat="server">



    <asp:DataList ID="DataList1" runat="server" DataKeyField="news_id" 
        DataSourceID="SqlDataSource1">
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
<ul><li><a property="item" typeof="WebPage" title="Go to Gujarat Forensic Sciences University." href="Home.aspx" class="home">HOME</a></li>»<li><a property="item" typeof="WebPage" title="Go to the Gallery category archives." href="News Update.aspx" class="taxonomy category">News Update</a></li>»<li><%#Eval("news_desc") %>                                </li></ul></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <center>
            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 main-inner-box">
                        <article id="post-5253" class="post-5253 post type-post status-publish format-standard has-post-thumbnail hentry category-media-coverage category-news">
              <h1 class="entry-title">
                <%#Eval("news_desc") %>             </h1>
                            <div class="post-image">
                <a href="../Home News Image/<%#Eval("news_image") %>" title="india post to get forensic lessions" data-rel="prettyPhoto[news-event]"><img src="../Home News Image/<%#Eval("news_image") %>" height="500px" width="700px" alt="india post to get forensic lessions" width="1092" height="526" class="img-responsive img-thumbnail"></a>              </div>
              <section class="entry-content">
                                <div class="entry-links">
                                  </div>
              </section>
            </article>
            <section id="comments">
    </section>                      </div>


    </center>

            <br />
        </ItemTemplate>
    </asp:DataList>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
        SelectCommand="SELECT * FROM [Admin_Home_News_Updates] WHERE ([news_id] = @news_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="news_id" QueryStringField="news_id" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>






    </form>


</asp:Content>

