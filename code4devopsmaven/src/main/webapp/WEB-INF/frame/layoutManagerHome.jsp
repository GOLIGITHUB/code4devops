<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>  
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>
<tiles:getAsString name="title"/>
</title>
<%@ include file="customelinkcss.html"%> 
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-MQDZLKRZ4H"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-MQDZLKRZ4H');
</script>
<link rel="icon" href="${pageContext.request.contextPath}/static/img/logo.png" type="image/png"> 
</head>
<body >
<div class="jumbotron">
  <h1 class="text-center">Towards excellence</h1>
  <p>We believe in "Sharing is caring".
	 We make  contents available  for professionals using complex techniques 
	 from basics to production level codes.
	 We are constantly updating our code base to share insights motivated 
	 to help those who needs more.
	 it might help in your project brain storming or optimization.
	 Otherwise just for fun...
  </p>
</div>
<tiles:insertAttribute name="navbar"/>
<div class="container-fluid"> 
<tiles:insertAttribute name="body"/>
</div>
<br><br>
<tiles:insertAttribute name="footer"/>
<%@ include file="customelinkjs.html"%>
</body>
</html>