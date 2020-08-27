<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="Keywords" content="Python,Java,linux,rhel8,rhel7,Web development,spring,spring mvc,tutorials,programming,training,learning,lessons,references,examples,source code,demos,tips">
<meta name="Description" content="Well organized and easy to understand Web building tutorials with lots of examples of how to use HTML, CSS, JavaScript, SQL, PHP, Python, Bootstrap, Java and XML.">
<title>
<tiles:getAsString name="title"/>
</title>
<%@ include file="customelinkcss.html"%> 
<%@ include file="customelinkjs.html"%>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-MQDZLKRZ4H"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-MQDZLKRZ4H');
</script>
<script>
$(document).ready(function(){
  $("#springboot").click(function(){
    $("#showandhideSpringBoot").toggle();
  });
});
$(document).ready(function(){
	  $("#springmvcjstl").click(function(){
	    $("#showandhidespringmvcjstl").toggle();
	  });
	});
</script>
<link rel="icon" href="${pageContext.request.contextPath}/static/img/logo.png" type="image/png">
</head>
<body>
<tiles:insertAttribute name="navbar"/>
<br><br><br>
<div class="container-fluid "> 
	<div class="row content">
		<div class="col-sm-2">
			<tiles:insertAttribute name="menu"/>
			<img src="${pageContext.request.contextPath}/static/img/test-icic-bank.png"/>
		</div>
		<div class="col-sm-8 text-left"> 	
			<tiles:insertAttribute name="body"/>
		</div>
		<div class="col-sm-2">
			<div class="well">
	        	<img src="${pageContext.request.contextPath}/static/img/test-icic-bank.png" />
	      	</div>
	      	<div class="well">
	        	<img src="${pageContext.request.contextPath}/static/img/test-w3-ads.png" />
	      	</div>
		</div>
	</div>
</div>	
<tiles:insertAttribute name="footer"/>

</body>
</html>