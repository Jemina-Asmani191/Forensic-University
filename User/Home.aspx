<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Master.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <form id="form1" runat="server">

<html>

<head>


</head>
<body>

                        <div class="banner-container">
                    <div class="container-fluid">
                        <div class="col-lg-12">
                            <div class="row">

                                <div class="banner-inner">
                                    <div id="my_carousel" class="carousel fade" data-ride="carousel" data-interval="3000">
                                        <ol class="carousel-indicators">										                                             <li data-target="#my_carousel" data-slide-to="0" class="active"></li>
                                                                                         <li data-target="#my_carousel" data-slide-to="1" class=""></li>
                                                                                         <li data-target="#my_carousel" data-slide-to="2" class=""></li>
                                                                                         <li data-target="#my_carousel" data-slide-to="3" class=""></li>
                                                                                         <li data-target="#my_carousel" data-slide-to="4" class=""></li>
                                                                                         <li data-target="#my_carousel" data-slide-to="5" class=""></li>
                                                                                         <li data-target="#my_carousel" data-slide-to="6" class=""></li>
                                                                                         <li data-target="#my_carousel" data-slide-to="7" class=""></li>
                                                                                         <li data-target="#my_carousel" data-slide-to="8" class=""></li>
                                                                                         <li data-target="#my_carousel" data-slide-to="9" class=""></li>
                                             											
                                        </ol> 
                                        <div class="carousel-inner">
                                                                                            <div class="active item">
                                                    <img src="../Home Slider/banner-1-1-1.jpg" alt="banner-1-1" width="1900" height="700" >                                                    <div class="carousel-caption">
                                                        <h3><span class="sb">Education through Investigation</span></h3>
                                                    </div>
                                                </div>
                                                                                            <div class=" item">
                                                    <img src="../Home Slider/Areial-View.jpg" alt="Areial View" width="1900" height="700" >                                                    <div class="carousel-caption">
                                                        <h3><span class="sb">The World’s First Foren­sic Sci­ences Uni­ver­sity</span></h3>
                                                    </div>
                                                </div>
                                                                                            <div class=" item">
                                                    <img src="../Home Slider/Slider_3_new.jpg" alt="Slider_3_new" width="1900" height="700" >                                                    <div class="carousel-caption">
                                                        <h3><span class="sb">4<sup>th</sup> Convocation</span></h3>
                                                    </div>
                                                </div>
                                                                                            <div class=" item">
                                                    <img src="../Home Slider/Slider_4_new.jpg" alt="Slider_4_new" width="1900" height="700" >                                                    <div class="carousel-caption">
                                                        <h3><span class="sb">4<sup>th</sup> Convocation</span></h3>
                                                    </div>
                                                </div>
                                                                                            <div class=" item">
                                                    <img src="../Home Slider/Slider_5_new.jpg" alt="Slider_5_new" width="1900" height="700" >                                                    <div class="carousel-caption">
                                                        <h3><span class="sb">4<sup>th</sup> Convocation</span></h3>
                                                    </div>
                                                </div>
                                                                                            <div class=" item">
                                                    <img src="../Home Slider/Slider_6_new.jpg" alt="Slider_6_new" width="1900" height="700" >                                                    <div class="carousel-caption">
                                                        <h3><span class="sb">4<sup>th</sup> Convocation</span></h3>
                                                    </div>
                                                </div>
                                                                                            <div class=" item">
                                                    <img src="../Home Slider/Lab-Collage.jpg" alt="Lab Collage" width="1900" height="700" >                                                    <div class="carousel-caption">
                                                        <h3><span class="sb">State of The Art Laboratory</span></h3>
                                                    </div>
                                                </div>
                                                                                            <div class=" item">
                                                    <img src="../Home Slider/PM-sir-Students.jpg" alt="PM sir-Students" width="1900" height="700" >                                                    <div class="carousel-caption">
                                                        <h3><span class="sb">The World’s First Foren­sic Sci­ences Uni­ver­sity</span></h3>
                                                    </div>
                                                </div>
                                                                                            <div class=" item">
                                                    <img src="../Home Slider/APPROVED1-1.jpg" alt="APPROVED1 (1)" width="1900" height="700" >                                                    <div class="carousel-caption">
                                                        <h3><span class="sb">Ballistics Research & Testing Range</span></h3>
                                                    </div>
                                                </div>
                                                                                            <div class=" item">
                                                    <img src="../Home Slider/FINAL-1.jpg" alt="FINAL (1)" width="1900" height="700" >                                                    <div class="carousel-caption">
                                                        <h3><span class="sb">Cyber Defence Center (CDC) : First of it's kind</span></h3>
                                                    </div>
                                                </div>
                                                                                    </div>
                                    </div>
                                </div>
                               <div class="vt-icon">
                             
                            <div class="vt">
								<a href="Admission Home.aspx" target="_blank">
                                 		<img src="../LOGO/Admission_Btn_Final_2019.png" height="100px" width="100px" alt="GFSU"/>
                                    </a>
                                 </div>
                            
                               </div>

                            </div>
                        </div>
                    </div>
                </div>
            

 <div class="main-container">
  <div class="container">
    <div class="col-lg-12">
      <div class="row">
        <div class="main-inner">
          <div class="col-lg-4 col-md-4 col-sm-6 main-box">
            <div class="box-inner">
              <h2>Notice Board</h2>
              					<div class="box-lnk"><a href="Notice Board.aspx">view all</a></div>			
								<div style="width:90%" class="scroll-text" id="scrol-vert-notice">
									 
                                    
                                    <asp:DataList ID="DataList1" runat="server" DataKeyField="notice_id" 
                                        DataSourceID="SqlDataSource1">
                                        <ItemTemplate>
                                            <table class="style1">
                                                <tr class="home-pg-li">
                                                    <td>
                                                    <a href="../User/<%#Eval("notice_href") %>" >  
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("notice_desc") %>'></asp:Label>
                                                    </a>
                                                    </td>
                                                    <br />
                                                </tr>

                                            </table>
                                       
                                        </ItemTemplate>
                                    </asp:DataList>
                                    
                                    			
								                                                        
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
                                        SelectCommand="SELECT * FROM [Admin_Home_Notice_Board]"></asp:SqlDataSource>
                                    
                                    			
								                                                        
             
            </div>
          </div>
       
       
       
    </div>




    <div class="col-lg-4 col-md-4 col-sm-6 main-box">
            <div class="box-inner">
              <h2>Events Calender</h2>
              					<div class="event-tab" id="event-hm-teb">
						
						<div class="tab-content" id="scroll-tab">
							<div id="upcoming" class="tab-pane fade in active mCustomScrollbar _mCS_1" style="height: 260px;"><div id="mCSB_1" class="mCustomScrollBox mCS-inset-2-dark mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr">
								
																		<div id="wrapper-upcomingevent-hm">
											<div id="scroller-upcomingevent-hm">
										
                                        
                                        
                                        
                                                <asp:DataList ID="DataList2" runat="server" DataKeyField="event_id" 
                                                    DataSourceID="SqlDataSource2">
                                                    <ItemTemplate>
                                                        <table class="style1">
                                                            <tr class="events">
                                                                <td style="width:5%;" class="style2" >
                                                                    	<span style="height:80px; width:80px;" class="event-img">
                                                                    <span class="dt-data"><asp:Label ID="Label2" runat="server"  Text='<%# Eval("event_date") %>'></asp:Label></span>
                                                                    <br />
                                                                    <span class="mth-data"><asp:Label ID="Label3" runat="server" Text='<%# Eval("event_month") %>'></asp:Label></span>
                                                                    </span> 
                                                                </td>
                                                                <td style="width:95%;">
                                                                <span class="event-txt">
                                                                <a href='../User/HomeEventCalenderData.aspx?event_id=<%#Eval("event_id") %>'>
                                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("event_name") %>'></asp:Label>
                                                               </a>
                                                               </span>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                    </ItemTemplate>
                                                </asp:DataList>
                                        
                                        
                                        
                                        
                                        
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
                                                    SelectCommand="SELECT * FROM [Admin_Home_Event_Calender]">
                                                </asp:SqlDataSource>
                                        
                                        
                                        
                                        
                                    					
                                           </div>
									</div>
									 							</div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-inset-2-dark mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
							
							
						</div>
					</div>
								<div class="box-lnk"><a href="Event Calendar.aspx">view all</a></div>
            </div>
          </div>



          
					  
            



<div class="col-lg-4 col-md-4 col-sm-6 main-box">
            <div class="box-inner">
              <h2>News Update</h2>
              					<div class="box-lnk"><a href="News Update.aspx">view all</a></div>			
								<div style="width:90%" class="scroll-text" id="Div1">
									 
                                    
                                    <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3" >
                                        <ItemTemplate>
                                            <table class="style1">
                                                <tr class="home-pg-li">
                                                    <td>
                                                    <a href='../User/HomeNewsUpdateData.aspx?news_id=<%#Eval("news_id") %>'>
                                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("news_desc") %>'></asp:Label>
                                                               </a>
                                                    </td>
                                                    <br />
                                                </tr>

                                            </table>
                                       
                                        </ItemTemplate>
                                    </asp:DataList>
                                    
                                    			
								
								                                                        
             
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
                                        SelectCommand="SELECT * FROM [Admin_Home_News_Updates] ">
                                        
                                    </asp:SqlDataSource>
                                    
                                    			
								
								                                                        
             
            </div>
          </div>
       
       
       
    </div>




        <div class="col-lg-4 col-md-4 col-sm-6 main-box">
            <div class="box-inner">
             
              <h2>Director Message</h2>
              <div class="director-video"> <a href="https://www.youtube.com/embed/m7EwNs9VVcU?rel=0?iframe=true&amp;width=800&amp;height=500" title="Director's Message" data-rel="prettyPhoto[director]">
                <img src="https://www.gfsu.edu.in/wp-content/uploads/2017/09/video-back-349x239.jpg" alt="Director" width="349" height="239">                </a> </div>
              <div class="director-detail"> <h4>Dr. J. M. Vyas</h4>
<p>M.Sc. Ph.D. L.L.B.<br>
 Director General</p> </div>
              <div class="box-lnk put-bottom"> <a href="University Messages.aspx" title="Director's Message">Read More...</a> </div>
            </div>
             
          </div>    

          
         <div class="col-lg-4 col-md-4 col-sm-6 main-box">
            <div class="box-inner">
              <h2>Media Coverage</h2>
                            <div id="myCarousel" class="carousel slide" data-interval="3000000" data-ride="carousel"> 
                <!-- Wrapper for carousel items -->
                <div class="carousel-inner">
                                    <div class="active item">
                    <img width="349" height="249" src="../Home Media Image/india-post-to-get-forensic-lessions-349x249.png" class="attachment-img-post-thumb size-img-post-thumb wp-post-image" alt="">						<h5 class="media-caption-hm"><a href="https://www.gfsu.edu.in/india-post-to-get-forensic-lessons-toi-13th-march-2019/" target="_blank">India Post to get Forensic Lessons | TOI 13th March 2019</a></h5> 
                  </div>
                                    <div class=" item">
                    <img width="349" height="249" src="../Home Media Image/DNA-349x249.png" class="attachment-img-post-thumb size-img-post-thumb wp-post-image" alt="">						<h5 class="media-caption-hm"><a href="https://www.gfsu.edu.in/gfsu-team-to-train-directorate-of-revenue-intelligence-officials-dna-26th-feb-2019/" target="_blank">IFSU team to train Directorate of Revenue Intelligence Officials | DNA 26th Feb, 2019</a></h5> 
                  </div>
                                    <div class=" item">
                    <img width="349" height="249" src="../Home Media Image/Navgujarat-349x249.jpg" class="attachment-img-post-thumb size-img-post-thumb wp-post-image" alt="">						<h5 class="media-caption-hm"><a href="https://www.gfsu.edu.in/dri-is-firm-to-stop-the-circulation-of-fantalin-which-is-100-more-dangerous-than-morphine-navgujarat-samay-26th-feb-2019/" target="_blank">DRI is firm to stop the circulation of Fantalin which is 100% more dangerous than Morphine | Navgujarat Samay 26th Feb, 2019</a></h5> 
                  </div>
                                    <div class=" item">
                    <img width="349" height="249" src="../Home Media Image/Gujarat-Samachar-349x249.jpg" target="_blank">DRI Officials will take the advantage of Skills of Gujarat Forensic Sciences University’s Students | Gujarat Samachar 26th Feb, 2019</a></h5> 
                  </div>
                                    <div class=" item">
                    <img width="349" height="249" src="../Home Media Image/Gujarat-Samachar-14-Feb-2019-349x249.jpg" class="attachment-img-post-thumb size-img-post-thumb wp-post-image" alt="">						<h5 class="media-caption-hm"><a href="https://www.gfsu.edu.in/technical-tools-and-training-can-prevent-cyber-crime-honble-director-general-dr-j-m-vyas-gfsu-gujarat-samachar-14th-feb-2019/" target="_blank">Technical Tools and Training can prevent Cyber Crime : Hon’ble Director General, Dr. J. M. Vyas, IFSU | Gujarat Samachar 14th Feb, 2019</a></h5> 
                  </div>
                                    <div class=" item">
                    <img width="349" height="249" src="../Home Media Image/The-Times-of-India-349x249.jpg" class="attachment-img-post-thumb size-img-post-thumb wp-post-image" alt="">						<h5 class="media-caption-hm"><a href="https://www.gfsu.edu.in/gfsu-to-train-interpa-members-in-cyber-security-forensics-toi-12th-february-2019/" target="_blank">IFSU to Train INTERPA members in Cyber Security, Forensics | TOI 12th February 2019</a></h5> 
                  </div>
                                  </div>
                <ol class="carousel-indicators">
                                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                    <li data-target="#myCarousel" data-slide-to="1" class=""></li>
                                    <li data-target="#myCarousel" data-slide-to="2" class=""></li>
                                    <li data-target="#myCarousel" data-slide-to="3" class=""></li>
                                    <li data-target="#myCarousel" data-slide-to="4" class=""></li>
                                    <li data-target="#myCarousel" data-slide-to="5" class=""></li>
                                  </ol>
              </div>
                          </div>
          </div> 





          <div class="col-lg-4 col-md-4 col-sm-6 main-box">
            <div class="box-inner">
              <h2>Gallery</h2>
                            <div id="myCarouselgallery" class="carousel slide" data-interval="3000000" data-ride="carousel"> 
                <!-- Wrapper for carousel items -->
                <div class="carousel-inner">
                                    <div class="active item"> 
                    <img width="349" height="249" src="../Home Gallery Image/IMG_5832-349x249.jpg" class="attachment-img-post-thumb size-img-post-thumb wp-post-image" alt="">                    
                    <h5>Dr. J M Vyas, Hon’ble Director General, IFSU addressing Judicial Officers of Maharashtra | 13th March 2019</h5>
                  </div>
                                    <div class=" item"> 
                    <img width="349" height="249" src="../Home Gallery Image/IMG_5736-349x249.jpg" class="attachment-img-post-thumb size-img-post-thumb wp-post-image" alt="">                   
                    <h5>Dr. J M Vyas, Hon’ble Director General, IFSU addressing the participants of various Training Programs | 11th March 2019</h5>
                  </div>
                                    <div class=" item"> 
                    <img width="349" height="249" src="../Home Gallery Image/IMG_5652-349x249.jpg" class="attachment-img-post-thumb size-img-post-thumb wp-post-image" alt="">                  
                    <h5>Stone Laying Ceremony of new campus of Indian Forensic Sciences University | 7th March 2019</h5>
                  </div>
                                    <div class=" item"> 
                    <img width="349" height="249" src="../Home Gallery Image/IMG_5389-349x249.jpg" class="attachment-img-post-thumb size-img-post-thumb wp-post-image" alt="">                   
                    <h5>Training Program on “Modern Techniques of Psychological Methods of Investigation (Polygraph, Narco, BEOS, SDS, LVA)” for the Police Officers of Bangladesh and Myanmar | 06th March 2019</h5>
                  </div>
                                    <div class=" item"> 
                    <img width="349" height="249" src="../Home Gallery Image/IMG_5426-349x249.jpg" class="attachment-img-post-thumb size-img-post-thumb wp-post-image" alt="">               
                    <h5>Practical session of participants of Training on “DNA Fingerprinting” for Bangladesh Police Officers | 06th March 2019</h5>
                  </div>
                                  </div>
                <ol class="carousel-indicators">
                                    <li data-target="#myCarouselgallery" data-slide-to="0" class="active"></li>
                                    <li data-target="#myCarouselgallery" data-slide-to="1" class=""></li>
                                    <li data-target="#myCarouselgallery" data-slide-to="2" class=""></li>
                                    <li data-target="#myCarouselgallery" data-slide-to="3" class=""></li>
                                    <li data-target="#myCarouselgallery" data-slide-to="4" class=""></li>
                                  </ol>
              </div>
                          </div>
          </div>





           </div>
        </div>
      </div>
    </div>
 </div>






<div class="map-container">
  <div class="container-fluid">
    <div class="col-lg-12">
      <div class="row">
        <h2>Campus Map</h2>
        <div class="map-inner"> <a href="https://www.google.co.in/maps/place/Gujarat+Forensic+Sciences+University/@23.2104235,72.6618614,15z/data=!4m5!3m4!1s0x0:0x4f9616711f2fb4e5!8m2!3d23.2104235!4d72.6618614" title="GFSU Map" target="_blank">
          <img src="../Map/map-img.png" alt="Location" width="2000" height="298">          </a> </div>
      </div>
    </div>
  </div>
</div>







         <div class="placements_container">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="placements-inner">
          <h2>PLACEMENTS</h2>
                    <div id="placement" class="owl-carousel">
                        <div class="item"> <img src="../Placements/ABB.jpg" alt="ABB" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/Axis-Bank.jpg" alt="Axis-Bank" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/Adobe.jpg" alt="Adobe" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/CFMID.jpg" alt="CFMID" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/Ernst-and-Young.jpg" alt="Ernst and Young" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/deloitte_touche_tohmatsu.jpg" alt="Deloitte Touche Tohmatsu" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/deutsche-bank-logo.jpg" alt="Deutsche Bank" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/HDFC-Bank.jpg" alt="HDFC Bank" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/HDFC-Ergo.jpg" alt="HDFC Ergo" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/Intas.jpg" alt="Intas" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/KPMG.jpg" alt="KPMG" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/Lambda-research-logo.jpg" alt="Lambda" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/Mahindra.jpg" alt="Mahindra" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/NetMonastery.jpg" alt="Net Monastery" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/Network-Intellingence.jpg" alt="Network-Intellingence" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/Paladion-Networks.jpg" alt="Paladion Networks" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/Quick-Heel.jpg" alt="Quick Heel" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/Sophos.jpg" alt="Sophos" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/Sun-pharna.jpg" alt="Sun Pharna" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/synopsys.jpg" alt="Synopsys" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/Troikaa.jpg" alt="Troikaa" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/VEdanta.jpg" alt="Vedanta" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/Zydus.jpg" alt="Zydus" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/PWC.jpg" alt="PWC" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/SiSa.jpg" alt="SISA" width="116" height="50" > </div>
                        <div class="item"> <img src="../Placements/Relience-Industries.jpg" alt="Relience Industries" width="116" height="50" > </div>
                      </div>
                  </div>
      </div>
    </div>
  </div>
</div> 


























        <%--    <style>
        /* POP-UP */
        #age_button_area
        {
    	padding-top:10px;
    	position: relative;
    	width: 100%;
    	bottom: 5px;
    	padding-top:5px;
        }

        #ageEnterButton
        {
    	border-color:;
    	background:;
    	color: ;
        }

        #ageLeaveButton
        {
    	border-color:;
    	background:;
    	color: ;
        }

        #popup_content
        {
	    overflow-y:hidden;    	overflow-x: auto;
    	height: 100%;
    	width:100%;
        }

        #itro_popup
        {
    	visibility: hidden;
    	opacity: 0;
    	position: fixed;
    	background-image: ;
    	background-repeat: no-repeat;
    	background-position: center center;
    	margin: 0 auto;
    	left:1px;
    	right:1px;
    	z-index: 2147483647 !important;
	    padding:2px !important;	        	border-radius: 8px;
    	border-width: 3px;
    	width: 980px;
    	height: auto;
    	background-color: #FFFFFF;
	            }

        #close_cross
        {
    	cursor:pointer; 
    	width:20px; 
    	position:absolute; 
    	top:-22px; 
    	right:-22px;
        }

        #popup_countdown 
        {
    	color: ;
    	width: 100%;
    	padding-top: 0px ;
    	padding-bottom:0px ;
    	background-color: ;
    	height: 0px ;
    	overflow: hidden;
    	position:absolute;
    	bottom:0px;
    	left:0px;
    	border-bottom-left:8px;
    	border-bottom-right:8px;
        }

        #itro_opaco{
    	display: none;
    	position:fixed;
    	background-color:  #8A8A8A;
    	font-size: 10px;
    	font-family: Verdana;
    	top: 100px;    
    	width: 100%;
    	height: 100%;
    	z-index: 2147483646 !important;
    	left: 0px ;
    	right: 0px;
    	top: 0px;
    	bottom: 0px;
    	opacity: 0.40 ;
    	filter:alpha(opacity = 40); /* For IE8 and earlier */
        }

        /* label under the popup used to close it for mobile devices */
        #ipp_mobile_close_tab{
    	display: none;
    	border:none;
    	position: absolute;
    	padding: 5px;
    	width: 80px;
    	text-align: center;
    	left: 1px;
    	right: 1px;
    	margin: auto;
    	background-color: white        }
        #ipp_mobile_close_txt{
    	font-weight: bold;
    	cursor: pointer;
        }

        /* RESPONSIVE CSS */
        @media screen and (max-width: 780px)
        {
    	#itro_popup{
    	    max-width: 470px;
		    	}
    	#close_cross{
    	    display: none;
    	}
    	#ipp_mobile_close_tab{
    	    display: block;
    	}
        }
        @media screen and (max-width: 480px){
    	#itro_popup{
    	    max-width: 300px
    	}
        }

	            .style1
                {
                    width: 100%;
                }

	            .style2
                {
                    width: 26%;
                }

	    </style>--%>
    <%--	<div id="itro_popup">
	<div id="popup_countdown" align="center">This popup will close in:<b id="timer"></b></div><img id="close_cross" src="https://www.gfsu.edu.in/wp-content/plugins/itro-popup/images/close-icon.png" alt="CLOSE" title="CLOSE" onclick="itro_exit_anim();">		<div id="popup_content"><p><img class="aligncenter size-full wp-image-4998" src="http://www.gfsu.edu.in/wp-content/uploads/2019/02/interpa_popup-1.jpg" alt="" width="1620" height="809" /></p>		</div>
				<div id="ipp_mobile_close_tab">
			<span id="ipp_mobile_close_txt"  onclick="itro_exit_anim();">CLOSE</span>
		</div> 
			</div>--%>
	<div id="itro_opaco"  ></div>
	

   
</body>
</html>

    </form>
</asp:Content>

