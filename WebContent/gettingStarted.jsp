<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.util.HashMap"%>
<%@page import="onestop.details"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.ArrayList"%>

<link href="css/w3.css" rel="stylesheet" type="text/css" />
<%
	JSONObject obj = (JSONObject) session.getAttribute("userinfo");
	String name = obj.optString("name");
%>


<html>
<head>
<title>Getting Started</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link
	href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900"
	rel="stylesheet" type="text/css">
<link href="css/styles.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/imgeffect.css">
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="//code.jquery.com/jquery-1.11.3.min.js"
	type="text/javascript"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"
	type="text/javascript"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	type="text/javascript"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('.collapsible').collapsible();
	});
</script>
<!-- start gallery Script -->
<script type="text/javascript" src="js/jquery.easing.min.js"></script>
<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
<script type="text/javascript">
	function myFunction() {
		// Declare variables 
		var input, filter, table, tr, td, i;
		input = document.getElementById("myInput");
		filter = input.value.toUpperCase();
		table = document.getElementById("myTable");
		tr = table.getElementsByTagName("tr");

		// Loop through all table rows, and hide those who don't match the search query
		for (i = 0; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td")[0];
			if (td) {
				if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
					tr[i].style.display = "";
				} else {
					tr[i].style.display = "none";
				}
			}
		}
	}
	$(function() {

		var filterList = {

			init : function() {

				// MixItUp plugin
				// http://mixitup.io
				$('#portfoliolist').mixitup({
					targetSelector : '.portfolio',
					filterSelector : '.filter',
					effects : [ 'fade' ],
					easing : 'snap',
					// call the hover effect
					onMixEnd : filterList.hoverEffect()
				});

			},

			hoverEffect : function() {

				// Simple parallax effect
				$('#portfoliolist .portfolio').hover(function() {
					$(this).find('.label').stop().animate({
						bottom : 0
					}, 200, 'easeOutQuad');
					$(this).find('img').stop().animate({
						top : 0
					}, 500, 'easeOutQuad');
				}, function() {
					$(this).find('.label').stop().animate({
						bottom : 0
					}, 200, 'easeInQuad');
					$(this).find('img').stop().animate({
						top : 0
					}, 300, 'easeOutQuad');
				});

			}

		};

		// Run the show!
		filterList.init();

	});
</script>
<!-- Add fancyBox main JS and CSS files -->
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	
</script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!----end gallery----------->

<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1200);
		});
	});
</script>
</head>

<body>
	<a href="dashboard.jsp"><img src="images/oslogo.jpeg" style="
    width: 205px; height: 40px;"></a>
	<div align="center">


		<form name="frm" method="post" action="">

    
			<button type="button" class=" ch-img-9" value="1" style="margin-left: 5%; margin-right: 2%;"
				onclick="{window.location.href='dashboardpath?type=1'}"></button>
			<button type="button" class=" ch-img-10" value="2"
				onclick="{window.location.href='dashboardpath?type=2'}"></button>
			<button type="button" class=" ch-img-11" value="3" Style="margin-left: 2%; margin-right: 2%;"
				onclick="{window.location.href='dashboardpath?type=3'}"></button>
			<button type="button" class=" ch-img-12" value="4"
				onclick="{window.location.href='dashboardpath?type=4'}"></button>
		</form>

	</div>
	<!------end-header------------>
	<!-- start slider -->

	<!-----end-slider-------->
	<!--start portfolio------>
	<div class="wrap" id="portfolio">
		<div class="main">



			<!---start-content----->
			<div class="gallery">
				<div class="clear"></div>
				<div class="container" style="width:700px;">
					<%
						String name2 = (String) request.getSession().getAttribute("name1");
					%>
					<h3>
						<%
							request.getAttribute("name1");
						%>
					</h3>
					
					<%
						ArrayList<details> detailList = new ArrayList<details>();
						detailList = (ArrayList<details>) request.getAttribute("detail");
					%>
					<% if(detailList.size()>0) { %>
					<input type="text" id="myInput" onkeyup="myFunction()" style="width:112.5%;"
						placeholder="Search ...">
					<table id="myTable" width="200px">
					
						<tr class="header">
							<th style="width: 60%;"><%= detailList.get(0).getType() %></th>
						</tr>
						

						<%
							for (int i = 0; i < detailList.size(); i++) {
								String name1 = detailList.get(i).getName();
								String description = detailList.get(i).getDescription();
								name2=name1.replaceAll("\\s+","");
								
								int rating = detailList.get(i).getRating();
						%>
						<tr ata-toggle="collapse" data-target="#<%=name2%>">
							<td>
								<button type="button" class="btn btn-info" style="width: 729px;     font-size: 18px;background-color: #ffffff; opacity: 0.6; color: black;border-width: 0"
									data-toggle="collapse" data-target="#<%=name2%>"><b><%=name1%></b></button>
								<div id="<%=name2%>" style="margin-top: 1%;" class="collapse">
									<b>About : </b><%=description%>
									<br><b>Rating : </b><%=rating%> / 5
								</div>
							</td>

						</tr>
						<%
							}
						%>
					</table>
					<% } %>

				</div>
				<!-- container -->
				<script type="text/javascript" src="js/fliplightbox.min.js"></script>
				<script type="text/javascript">
					$('body').flipLightBox()
				</script>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<div></div>
	<div id="flb-lightbox"
		style="position: fixed; top: 0px; left: 0px; width: 100%; height: 100%; z-index: 1000; box-sizing: content-box; display: none;">
		<div id="flb-lightbox-background"
			style="width: 100%; height: 100%; background-color: #000; opacity: 0.8; box-sizing: content-box; -moz-box-sizing: content-box; -webkit-box-sizing: content-box;"></div>
		<div id="flb-lightbox-content"
			style="position: fixed; top: 0px; left: 0px; width: 100%; height: 100%; background: none; text-align: center; box-sizing: content-box; display: none;"></div>
		<div id="flb-load"
			style="position: fixed; top: 40%; left: 0px; width: 100%; text-align: center; font-size: 14px; color: #fff; opacity: 0.3; box-sizing: content-box; -moz-box-sizing: content-box; -webkit-box-sizing: content-box;"></div>
		<div id="flb-lightbox-text"
			style="position: fixed; bottom: 0px; width: 90%; padding: 15px 6% 15px 5%; margin-right: auto; margin-left: auto; background-color: rgb(255, 255, 255); opacity: 0.8; font-size: 14px; line-height: 1.4; color: rgb(0, 0, 0); text-align: center; box-sizing: content-box; display: none;"></div>
		<div id="flb-load2"
			style="position: fixed; top: 40%; left: 0px; width: 100%; text-align: center; font-size: 14px; color: #fff; opacity: 0.3;"></div>
	</div>
	<div id="flb-lightbox"
		style="position: fixed; top: 0px; left: 0px; width: 100%; height: 100%; z-index: 1000; box-sizing: content-box; display: none;">
		<div id="flb-lightbox-background"
			style="width: 100%; height: 100%; background-color: #000; opacity: 0.8; box-sizing: content-box; -moz-box-sizing: content-box; -webkit-box-sizing: content-box;"></div>
		<div id="flb-lightbox-content"
			style="position: fixed; top: 0px; left: 0px; width: 100%; height: 100%; background: none; text-align: center; box-sizing: content-box; display: none;"></div>
		<div id="flb-load"
			style="position: fixed; top: 40%; left: 0px; width: 100%; text-align: center; font-size: 14px; color: #fff; opacity: 0.3; box-sizing: content-box; -moz-box-sizing: content-box; -webkit-box-sizing: content-box;"></div>
		<div id="flb-lightbox-text"
			style="position: fixed; bottom: 0px; width: 90%; padding: 15px 6% 15px 5%; margin-right: auto; margin-left: auto; background-color: rgb(255, 255, 255); opacity: 0.8; font-size: 14px; line-height: 1.4; color: rgb(0, 0, 0); text-align: center; box-sizing: content-box; display: none;"></div>
		<div id="flb-load2"
			style="position: fixed; top: 40%; left: 0px; width: 100%; text-align: center; font-size: 14px; color: #fff; opacity: 0.3;"></div>
	</div>
	<!---End-gallery----->
	<!-----start-about-------->


	<!---------end-about------------->



	<a href="#" id="toTop" style="display: none;">To Top</a>
</body>
</html>
