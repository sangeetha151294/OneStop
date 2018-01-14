<html class="gr__yocket_in" style=""><head>
<title>Discussions</title>
<meta name="description" content="Planning to study abroad but stuck on how to go about it? Post your queries and share your thoughts with more students like you">

<link rel="stylesheet" href="https://static.yocket.in/css/style.css?v=2.27.11" class="" media="all" async="async">
<link rel="stylesheet" href="css/style2.css">

   </head>
<body style="padding-top: 50px;" data-gr-c-s-loaded="true" class="" onload="getFeed()">


<div class="container">
<div class="row">
<div class="col-sm-9">

<script>
var user_id = 279898;

function postFeed(){
	var content = document.getElementById("contentz").value;
	url ="/OneStop/feed/post?"+"feed="+content;
	sendRequestWithCallback(url, null, true, callbackfn);
	document.getElementById("contentz").value="";
}

function getFeed(){
	
	url ="/OneStop/feed/getAll";
	sendRequestWithCallback(url, null, true, displayfeed);
}

function reload(){
	location.reload();
}

function sendRequestWithCallback(action, params, async, callback) {
    var objHTTP = xhr();
    objHTTP.open('GET', action, async);
    objHTTP.setRequestHeader('Content-Type','application/x-www-form-urlencoded;charset=UTF-8');
    if(async){
	objHTTP.onreadystatechange=function() {
	    if(objHTTP.readyState==4) {
		if(callback) {
		    callback(objHTTP.responseText);
		}
	    }
	};
    }
    objHTTP.send(params);
    if(!async) {
	if(callback) {
            callback(objHTTP.responseText);
        }
    }
} 


function xhr() {
    var xmlhttp;
    if (window.XMLHttpRequest) {
	xmlhttp=new XMLHttpRequest();
    }
    else if(window.ActiveXObject) {
	try {
	    xmlhttp=new ActiveXObject("Msxml2.XMLHTTP");
	}
	catch(e) {
	    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
    }
    return xmlhttp;
}

function callbackfn(response){
	var posts = document.getElementById("posts").innerHTML;
	posts = response + posts;
	document.getElementById("posts").innerHTML=posts;
}

function displayfeed(response)
{
	document.getElementById("posts").innerHTML=response;
	}

</script>

<div class="row">
</div>
<div class="row">
<div class="col-sm-4 hidden-xs">
<div class="panel panel-info">
<div class="panel-heading text-center">
<span class="panel-title">TRENDING USERS THIS WEEK</span>
</div>
<div class="panel-body text-center">
<h4>
<a href="/profiles/h4k3r" style="color: #1565C0;" class="username" data-user-id="328614">@h4k3r</a> <br>
 <small>106 comments</small>
</h4>
<h4>
<a href="/profiles/Nik921" style="color: #1565C0;" class="username" data-user-id="323920">@Nik921</a> <br>
<small>51 comments</small>
</h4>
<h4>
<a href="/profiles/SUMA356" style="color: #1565C0;" class="username" data-user-id="365178">@SUMA356</a> <br>
<small>40 comments</small>
</h4>
<h4>
<a href="/profiles/gurjotk26" style="color: #1565C0;" class="username" data-user-id="353441">@gurjotk26</a> <br>
<small>38 comments</small>
</h4>
<h4>
<a href="/profiles/BKiran" style="color: #1565C0;" class="username" data-user-id="356204">@BKiran</a> <br>
<small>27 comments</small>
</h4>
<h4>
<a href="/profiles/Priyanka101" style="color: #1565C0;" class="username" data-user-id="332913">@Priyanka101</a> <br>
<small>22 comments</small>
</h4>
<h4>
<a href="/profiles/rahulkhanna2" style="color: #1565C0;" class="username" data-user-id="323059">@rahulkhanna2</a> <br>
<small>21 comments</small>
</h4>
<h4>
<a href="/profiles/monikayadav90" style="color: #1565C0;" class="username" data-user-id="360076">@monikayadav90</a> <br>
<small>20 comments</small>
</h4>
<h4>
<a href="/profiles/shrikant333" style="color: #1565C0;" class="username" data-user-id="329832">@shrikant333</a> <br>
<small>19 comments</small>
</h4>
<h4>
<a href="/profiles/Adithyahb14" style="color: #1565C0;" class="username" data-user-id="315655">@Adithyahb14</a> <br>
<small>19 comments</small>
</h4>
</div>
</div>
</div>
<div class="col-sm-8">
<style>
.module {
	background-color: #009688;
	color: #fff;
	border-radius: 8px;
	margin: 16px 0px 16px 0px;
	padding: 16px 4px 16px 4px;
}
.module a {
	color: #fff;
	text-decoration:underline;
}
</style>

<h4>
START NEW DISCUSSION
</h4>
<br>
<div class="col-sm-12">
<div class="form-group">
<div class="mentions js-discussions-writer" Style="margin-top: 10%;" data-textarea-placeholder="Write a post..." data-textarea-name="content" ><textarea placeholder="Write a post..." id="contentz" name="content" class="form-control mentions--textarea" Style="height: 110px; margin-top: -10%; font-size:20px; color: aliceblue;"></textarea></div>

</div>

<div class="form-group text-right">
<button id="add-post-button" class="btn btn-primary btn-sm" onclick="postFeed()">Post</button> </div>
  </div>
<div class="clearfix"></div>

<hr>
<div class="row">
<div class="col-sm-12">
<h4>RECENT DISCUSSIONS</h4>
</div>
</div>


<div id="posts">  
<div class="panel panel-default" style="border-top: 4px solid #2196f3">
<div class="panel-body">

<div class="row">


 
 

<br> </div>
</div>
<div class="clearfix"></div>

<div class="hovercard js-hovercard-wrapper fade-in hidden" style="top: 272.2px; left: 232.7px;">
<h3 style="margin: .3em 0 .5em; line-height: 1.4em">
<div data-bind-key="name" style="margin-bottom: -.4em;">Gurjot Kaur</div>
<small data-bind-key="nickname">@gurjotk26</small>
</h3>
<span data-bind-key="undergradDetails">Computer Science from Chitkara university,Punjab, Rajpura</span>
<div class="row">
<div class="col-sm-3 col-xs-6 text-center">
<h4>
<i class="fa fa-globe fa-2x text-warning"></i><br>
<small>GRE</small><br>
<span data-bind-key="greScore">314</span>
</h4>
</div>
<div class="col-sm-3 col-xs-6 text-center">
<h4>
<i class="fa fa-book fa-2x text-warning"></i><br>
<small><span data-bind-key="enExam">TOEFL</span></small><br>
<span data-bind-key="enExamScore">112</span>
</h4>
</div>
<div class="col-sm-3 col-xs-6 text-center">
<h4>
<i class="fa fa-graduation-cap fa-2x text-warning"></i><br>
<small>UG Score</small><br>
<span data-bind-key="ugScore">8.15</span>
<span data-bind-key="ugScoreFormat">CGPA</span>
</h4>
</div>
<div class="col-sm-3 col-xs-6 text-center">
<h4>
<i class="fa fa-briefcase fa-2x text-warning"></i><br>
<small>Work Exp.</small><br>
<span data-bind-key="workExp">NA</span>
</h4>
</div>
</div>
<br>
<div class="row">
<div class="col-xs-12">
<a href="/profiles/gurjotk26" class="btn btn-primary btn-block" data-bind-key="profileUrl" data-bind-attribute="href">
<i class="fa fa-user"></i>
View Profile
</a>
 </div>
</div>
<br>
<div class="row">
<div class="col-sm-6">
<a href="/posts/view-user-posts/gurjotk26" class="btn btn-default btn-block" data-bind-key="postsUrl" data-bind-attribute="href">
<i class="fa fa-question-circle"></i>
Questions
</a>
</div>
<div class="col-sm-6">
<a href="/posts/view-user-child-posts/gurjotk26" class="btn btn-default btn-block" data-bind-key="commentsUrl" data-bind-attribute="href">
<i class="fa fa-comments-o"></i>
Comments
</a>
</div>
</div>
<br>
</div> </div>
<div class="col-sm-3">
<div style="padding-top: 16px;">
<div class="col-sm-12">


<div id="div-gpt-ad-1486040951439-0" style="height:250px; width:300px;" data-google-query-id="CPj29Lvm0tgCFQN8YgodTMkH0Q">
<div id="google_ads_iframe_/118013234/yocket-right-1_0__container__" style="border: 0pt none;"><iframe id="google_ads_iframe_/118013234/yocket-right-1_0" title="3rd party ad content" name="google_ads_iframe_/118013234/yocket-right-1_0" width="300" height="250" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" srcdoc="" style="border: 0px; vertical-align: bottom;"></iframe></div></div>
<br><br>

</div>
</div>
</div>
<div class="clearfix"></div>
</div>
</div>







</body></html>