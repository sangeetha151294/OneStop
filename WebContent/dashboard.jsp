<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.util.HashMap"%>
<link href="css/w3.css" rel="stylesheet" type="text/css" />
<%

JSONObject obj=(JSONObject)session.getAttribute("userinfo");
String name = obj.optString("name");
name=name.substring(2,name.length()-2);
String email = obj.optString("email");

%>


<html><head>
<title>One Stop</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet" type="text/css">
<link href="css/styles.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" type="text/css" href="css/imgeffect.css">
<script src="js/jquery.min.js"></script>
<!-- start gallery Script -->
	<script type="text/javascript" src="js/jquery.easing.min.js"></script>	
	<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
				<script type="text/javascript">
				$(function () {
					
					var filterList = {
					
						init: function () {
						
							// MixItUp plugin
							// http://mixitup.io
							$('#portfoliolist').mixitup({
								targetSelector: '.portfolio',
								filterSelector: '.filter',
								effects: ['fade'],
								easing: 'snap',
								// call the hover effect
								onMixEnd: filterList.hoverEffect()
							});				
						
						},
						
						hoverEffect: function () {
						
							// Simple parallax effect
							$('#portfoliolist .portfolio').hover(
								function () {
									$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
									$(this).find('img').stop().animate({top: 0}, 500, 'easeOutQuad');				
								},
								function () {
									$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeInQuad');
									$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
								}		
							);				
						
						}
			
					};
					
					// Run the show!
					filterList.init();
					
					
				});	
				</script>
				<!-- Add fancyBox main JS and CSS files -->
				<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
				<link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
						<script>
						</script>
				<script type="text/javascript" src="js/move-top.js"></script>
				<script type="text/javascript" src="js/easing.js"></script>
				<!----end gallery----------->
				

</head>

<body>
		<!----start-header----------->
				<div class="header_bg">
					<div class="wrap">
						<div class="header">
							<!--------start-logo------>
							<div class="logo">
								<a href="dashboard.jsp"><img src="images/oslogo.jpeg" style="
    width: 205px; height: 40px;"></a>
							</div>	
							<!--------end-logo--------->
							<!----start-nav-------->	
							<div class="nav">
								<ul>
								   
								   <li><a href="feedback" style="color:black" class="scroll">Feedback</a></li>
								   <li><a href="index.jsp"  style="color:black" class="scroll">Logout</a></li>
								 <div class="clear"> </div>
								 </ul>
							</div>
							<!-----end-nav-------->
							<div class="clear"> </div>
						</div>
					</div>
				</div>
		<!------end-header------------>
		<!-- start slider -->

<!-----end-slider-------->
<!--start portfolio------>
	<div class="wrap" id="portfolio">
				<div class="main">
					<!-- start gallery  -->
							<div class="gallery1">
					<!--start-mfp -->	
						<div id="small-dialog1" class="mfp-hide">
							<div class="pop_up">
								<h2>Lorem ipsum sit amet</h2>
								<img src="images/gsicon.svg" alt="">
								<p class="para">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.</p>
							</div>
						</div>
					<!--end-mfp -->	
			<!---start-content----->
			<div class="gallery">
					<div class="clear"> </div>
					<div class="container">
						<h2>Welcome, <%= name %> </h2>
						<p style="color:black; font-size: 1.6em;">Your One Stop Place to get things done!!!</p>
					
			<div id="portfoliolist" style="margin-top:8%;">
			
			<div class="portfolio logo mix_all" data-cat="logo" style="display: inline-block; opacity: 1; ">
				<div class="portfolio-wrapper">				
					<a class="popup-with-zoom-anim" href="dashboardpath?type=1&name='+<%=name %>">
						</a><ul class="ch-grid"><a class="popup-with-zoom-anim" href="dashboardpath?type=1&name='+<%=name %>">
							</a><li><a class="popup-with-zoom-anim" href="dashboardpath?type=1&name='+<%=name %>">
								</a><div class="ch-item ch-img-1"><a class="popup-with-zoom-anim" href="dashboardpath?type=1&name='+<%=name %>">
									</a><div class="ch-info"><a class="popup-with-zoom-anim" href="dashboardpath?type=1&name='+<%=name %>">
										<img src="images/zoom-white.png" style="top: 0px;">
										<h3>Getting Started</h3>
										</a><p><a class="popup-with-zoom-anim" href="dashboardpath?type=1&name='+<%=name %>"></a></p>
									</div>
								</div>
							</li>
						</ul>
					
				</div>
			</div>		
				
				
			
			
				
				
				
			<div class="hide">
			<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1; ">
				<div class="portfolio-wrapper">			
					<a class="popup-with-zoom-anim" href="discussionBoard.jsp">
						</a><ul class="ch-grid"><a class="popup-with-zoom-anim" href="discussionBoard.jsp">
							</a><li><a class="popup-with-zoom-anim" href="discussionBoard.jsp">
								</a><div class="ch-item ch-img-6"><a class="popup-with-zoom-anim" href="discussionBoard.jsp">
									</a><div class="ch-info"><a class="popup-with-zoom-anim" href="discussionBoard.jsp">
										<img src="images/zoom-white.png" style="top: 0px;">
										<h3>Discussions</h3>
										</a><p><a class="popup-with-zoom-anim" href="discussionBoard.jsp"></a><a href="#"></a></p>
									</div>
								</div>
							</li>
						</ul>
					
				</div>
			</div>	
			</div>
			<div>
			<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1; ">
				<div class="portfolio-wrapper">			
					<a class="popup-with-zoom-anim" href="Events.jsp">
						</a><ul class="ch-grid"><a class="popup-with-zoom-anim" href="Events.jsp">
							</a><li><a class="popup-with-zoom-anim" href="Events.jsp">
								</a><div class="ch-item ch-img-7"><a class="popup-with-zoom-anim" href="Events.jsp">
									</a><div class="ch-info"><a class="popup-with-zoom-anim" href="Events.jsp">
										<img src="images/zoom-white.png" style="top: 0px;">
										<h3>Events Near me</h3>
										</a><p><a class="popup-with-zoom-anim" href="Events.jsp"></a><a href="#"></a></p>
									</div>
								</div>
							</li>
						</ul>
					
				</div>
			</div>	
			</div>
			<div>
			<div class="portfolio logo mix_all" data-cat="logo" id="hide" style="display: inline-block; opacity: 1; ">
				<div class="portfolio-wrapper">			
					<a class="popup-with-zoom-anim" href="#small-dialog1">
						</a><ul class="ch-grid"><a class="popup-with-zoom-anim" href="rfindex.jsp">
							</a><li><a class="popup-with-zoom-anim" href=""rfindex.jsp"">
								</a><div class="ch-item ch-img-8"><a class="popup-with-zoom-anim" href="rfindex.jsp">
									</a><div class="ch-info"><a class="popup-with-zoom-anim" href="rfindex.jsp">
										<img src="images/zoom-white.png" style="top: 0px;">
										<h3>Roommate Finder!</h3>
										</a><p><a class="popup-with-zoom-anim" href="rfindex.jsp"></a><a href="#"></a></p>
									</div>
								</div>
							</li>
						</ul>
					
				</div>
			</div>																																							
		</div>
		</div>
	</div><!-- container -->
	<script type="text/javascript" src="js/fliplightbox.min.js"></script>
	<script type="text/javascript">$('body').flipLightBox()</script>
	<div class="clear"> </div>
	</div>
	</div>
	</div>
</div><div id="flb-lightbox" style="position: fixed; top: 0px; left: 0px; width: 100%; height: 100%; z-index: 1000; box-sizing: content-box; display: none;"><div id="flb-lightbox-background" style="width: 100%; height: 100%; background-color: #000; opacity:0.8; box-sizing: content-box; -moz-box-sizing: content-box; -webkit-box-sizing: content-box;"></div><div id="flb-lightbox-content" style="position: fixed; top: 0px; left: 0px; width: 100%; height: 100%; background: none; text-align: center; box-sizing: content-box; display: none;"></div><div id="flb-load" style="position: fixed; top: 40%; left: 0px; width: 100%; text-align: center; font-size: 14px; color: #fff; opacity: 0.3; box-sizing: content-box; -moz-box-sizing: content-box; -webkit-box-sizing: content-box;"></div><div id="flb-lightbox-text" style="position: fixed; bottom: 0px; width: 90%; padding: 15px 6% 15px 5%; margin-right: auto; margin-left: auto; background-color: rgb(255, 255, 255); opacity: 0.8; font-size: 14px; line-height: 1.4; color: rgb(0, 0, 0); text-align: center; box-sizing: content-box; display: none;"></div><div id="flb-load2" style="position: fixed; top: 40%; left: 0px; width: 100%; text-align: center; font-size: 14px; color: #fff; opacity: 0.3;"></div></div><div id="flb-lightbox" style="position: fixed; top: 0px; left: 0px; width: 100%; height: 100%; z-index: 1000; box-sizing: content-box; display: none;"><div id="flb-lightbox-background" style="width: 100%; height: 100%; background-color: #000; opacity:0.8; box-sizing: content-box; -moz-box-sizing: content-box; -webkit-box-sizing: content-box;"></div><div id="flb-lightbox-content" style="position: fixed; top: 0px; left: 0px; width: 100%; height: 100%; background: none; text-align: center; box-sizing: content-box; display: none;"></div><div id="flb-load" style="position: fixed; top: 40%; left: 0px; width: 100%; text-align: center; font-size: 14px; color: #fff; opacity: 0.3; box-sizing: content-box; -moz-box-sizing: content-box; -webkit-box-sizing: content-box;"></div><div id="flb-lightbox-text" style="position: fixed; bottom: 0px; width: 90%; padding: 15px 6% 15px 5%; margin-right: auto; margin-left: auto; background-color: rgb(255, 255, 255); opacity: 0.8; font-size: 14px; line-height: 1.4; color: rgb(0, 0, 0); text-align: center; box-sizing: content-box; display: none;"></div><div id="flb-load2" style="position: fixed; top: 40%; left: 0px; width: 100%; text-align: center; font-size: 14px; color: #fff; opacity: 0.3;"></div></div>
<!---End-gallery----->
<!-----start-about-------->


<!---------end-about------------->

     

<a href="#" id="toTop" style="display: none;">To Top</a></body></html>
