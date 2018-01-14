<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<!-- saved from url=(0080)file:///Users/harisiddarthvk/Desktop/Roomate%20Finder/ContactFrom_v17/index.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Roommate Finder</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="file:///Users/harisiddarthvk/Desktop/Roomate%20Finder/ContactFrom_v17/images/icons/favicon.ico">
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
<body>


	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" action="javascript:void(0);">
				

				
				
				

				<label class="label-input100" for="email">Apartment</label>
				<div class="wrap-input100 validate-input">
					<select style = "width: 280px; margin: 10px; margin-left: 20px;">
					  <option value="default">Select Apartment</option>
					  <option value="1255">Paseo Del Sol</option>
					  <option value="omnia">Fountain Plaza</option>
					  <option value="omnia">Riverstone Apartment</option>
					  <option value="omnia">Tierra Hills</option>
					</select>
					<span class="focus-input100"></span>
				</div>

				<label class="label-input100" for="phone">Rent Range</label>
				<div class="wrap-input100">
					<select style = "width: 280px; margin: 10px; margin-left: 20px;">
					  <option value="default">Select Range</option>
					  <option value="1255">Below $200</option>
					  <option value="omnia">$200-$300</option>
					  <option value="omnia">$300-$400</option>
					  <option value="omnia">$400-$500</option>
					  <option value="omnia">Above $500</option>
					</select>
					<span class="focus-input100"></span>
				</div>

				<label class="label-input100" for="phone">Number of roommates</label>
				<div class="wrap-input100">
					<select style = "width: 280px; margin: 10px; margin-left: 20px;">
					  <option value="default">Select Number</option>
					  <option value="1255">1</option>
					  <option value="omnia">2</option>
					  <option value="omnia">3</option>
					  <option value="omnia">4</option>
					  <option value="omnia">5</option>
					</select>
					<span class="focus-input100"></span>
				</div>

				<label class="label-input100" for="phone">Lease Term (in months)</label>
				<div class="wrap-input100">
					<select style = "width: 280px; margin: 10px; margin-left: 20px;">
					  <option value="default">Select Term</option>
					  <option value="1255">3</option>
					  <option value="omnia">6</option>
					  <option value="omnia">9</option>
					  <option value="omnia">12</option>
					</select>
					<span class="focus-input100"></span>
				</div>

				
				<div class="wrap-input100 validate-input">
					
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn" onclick="redirect();">
						Submit
					</button>
				</div>
			</form>

			<div class="contact100-more flex-col-c-m" style="background-image: url(&#39;images/bg-08.jpg&#39;);">
				

				

				<div class="dis-flex size1 p-b-47">
					

					<div class="flex-col size2" style="padding-left: 20px">
						<span class="txt1 p-b-20" style="text-align: center; font-size: 30px; padding-left: 20px">Roommate Finder</span>

						
					</div>
				</div>
			</div>
		</div>
	</div>



	<div id="dropDownSelect1"></div>
	
	<script type = "text/javascript">
	function redirect(){ 
		alert('Thank you for submitting a response. We will contact you when we find a match!');
		window.location.href = "dashboard.jsp";
	}
	</script>


<!--===============================================================================================-->
	<script type="text/javascript" async="" src="./index_files/analytics.js"></script><script src="./index_files/jquery-3.2.1.min.js"></script>
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
