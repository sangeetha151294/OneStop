<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="onestop.details" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Feedback</title>
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="https://colorlib.com/etc/cf/ContactFrom_v17/images/icons/favicon.ico">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./index_files/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./index_files/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./index_files/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./index_files/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./index_files/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./index_files/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./index_files/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./index_files/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./index_files/util.css">
	<link rel="stylesheet" type="text/css" href="./index_files/main.css">
<!--===============================================================================================-->
</head>

<body data-gr-c-s-loaded="true">


	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" action=javascript:void(0);>

				<label class="label-input100" for="first-name">Where do you live?</label>
				<div class="wrap-input100 rs1-wrap-input100">
					<select name="apt" style = "width: 180px; margin: 10px; margin-left: 20px;">
					<option value="default">Select Apartment</option>
					  <%
						ArrayList<details> detailList = new ArrayList<details>();
						detailList = (ArrayList<details>) request.getAttribute("apt");
						for (int i = 0; i < detailList.size(); i++) {
							String name1 = detailList.get(i).getName();
					%>
					  <option value="<%= name1 %>"><%= name1 %></option>
					 <% } %>
					</select>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 rs2-wrap-input100">
					<select name="aptrating" style = "width: 180px; margin: 10px; margin-left: 20px;">
					  <option value="default">Rate Apartment</option>
					  <option value="5">1</option>
					  <option value="4">2</option>
					  <option value="4">3</option>
					  <option value="4">4</option>
					  <option value="4">5</option>
					</select>
					<span class="focus-input100"></span>
				</div>

				<label class="label-input100" for="message">What do you feel about your apartment?</label>
				<div class="wrap-input100">
					<textarea id="message" class="input100" name="message" placeholder="Write us a comment"></textarea>
					<span class="focus-input100"></span>
				</div>

				<label class="label-input100" for="first-name">Which carrier network do you use?</label>
				<div class="wrap-input100 rs1-wrap-input100">
					<select style = "width: 180px; margin: 10px; margin-left: 20px;">
					  <option value="default">Select Carrier</option>
					  
					   <%
						ArrayList<details> detailList2 = new ArrayList<details>();
						detailList2 = (ArrayList<details>) request.getAttribute("carrier");
						for (int i = 0; i < detailList2.size(); i++) {
							String name2 = detailList2.get(i).getName();
					%>
					  
					   <option value="<%= name2 %>"><%= name2 %></option>
					 <% } %>
					</select>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 rs2-wrap-input100">
					<select style = "width: 180px; margin: 10px; margin-left: 20px;">
					  <option value="default">Rate Carrier</option>
					  <option value="5">1</option>
					  <option value="4">2</option>
					  <option value="4">3</option>
					  <option value="4">4</option>
					  <option value="4">5</option>
					</select>
					<span class="focus-input100"></span>
				</div>

				<label class="label-input100" for="message">What do you feel about your carrier?</label>
				<div class="wrap-input100">
					<textarea id="message" class="input100" name="message" placeholder="Write us a comment"></textarea>
					<span class="focus-input100"></span>
				</div>

				<label class="label-input100" for="first-name">What bank are you with?</label>
				<div class="wrap-input100 rs1-wrap-input100">
					<select style = "width: 180px; margin: 10px; margin-left: 20px;">
					  <option value="default">Select Bank</option>
					   <%
						ArrayList<details> detailList3 = new ArrayList<details>();
						detailList3 = (ArrayList<details>) request.getAttribute("bank");
						for (int i = 0; i < detailList3.size(); i++) {
							String name3 = detailList3.get(i).getName();
					%>
					  
					   <option value="<%= name3 %>"><%= name3 %></option>
					 <% } %>
					</select>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 rs2-wrap-input100">
					<select style = "width: 180px; margin: 10px; margin-left: 20px;">
					  <option value="default">Rate Bank</option>
					  <option value="5">1</option>
					  <option value="4">2</option>
					  <option value="4">3</option>
					  <option value="4">4</option>
					  <option value="4">5</option>
					</select>
					<span class="focus-input100"></span>
				</div>

				<label class="label-input100" for="message">What do you feel about your bank?</label>
				<div class="wrap-input100">
					<textarea id="message" class="input100" name="message" placeholder="Write us a comment"></textarea>
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn" onclick="{window.location.href='feedbacksubmit'}">
						Submit
					</button>
				</div>
			</form>

			<div class="contact100-more flex-col-c-m" style="background-image: url(&#39;images/bg-03.jpg&#39;);">
				

				

				<div class="dis-flex size1 p-b-47">
					

					<div class="flex-col size2" style="text-align: center;">
						<span class="txt1 p-b-20" style=" font-size: 40px;">
							We value your feedback
						</span>

						
					</div>
				</div>
			</div>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script type="text/javascript" async="" src="./index_files/analytics.js"></script><script data-cfasync="false" src="./index_files/email-decode.min.js"></script><script src="./index_files/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="./index_files/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="./index_files/popper.js"></script>
	<script src="./index_files/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="./index_files/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
<!--===============================================================================================-->
	<script src="./index_files/moment.min.js"></script>
	<script src="./index_files/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="./index_files/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="./index_files/main.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async="" src="./index_files/js"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>


</body></html>
