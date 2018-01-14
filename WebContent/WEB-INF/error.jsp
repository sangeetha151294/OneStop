<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Sorry!</title>
	<link rel="stylesheet" href="css/error.css">
</head>
<body>
<script type="text/javascript">
function redirect(){
	window.location.href="index.jsp";
}
</script>
<div class="main">
		<div class="agile" style="padding-top: 55px; padding-left: 75px">
			
			<div class="w3l">
				<div class="text">
					<h1>Sorry!</h1>	
					
					<p>We are having issues loading the page you requested! Please try again later</p>
					<p style="text-align: center;"> <button type="button" style="height: 50px; width: 100px" onclick=redirect();>Home</button> </p>
				</div>
				<div class="image">
					<img src="images/smile.png">
				</div>
				<div class="clear"></div>
			</div>
				
		</div>
	</div>
</body>
</html>