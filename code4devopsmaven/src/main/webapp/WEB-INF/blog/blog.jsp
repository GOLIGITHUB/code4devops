<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<h1>Recent posts</h1>
<c:forEach var="blogObject" items="${list}">
<div class="well">
      <div class="media">
      	<a class="pull-left" href="#">
    		<img class="img-circle" src="${pageContext.request.contextPath}/<c:out value="${blogObject.blog_image}"></c:out>">
  		</a>
  		<div class="media-body">
    	<h3 class="media-heading"><a href="${pageContext.request.contextPath}/<c:out value="${blogObject.blog_url}"></c:out>"><c:out value="${blogObject.blog_title}"></c:out></a></h3>
         	<p> 
         	<c:out value="${blogObject.blog_description}"></c:out>
         	</p>
          	<br>
          	<ul class="list-inline list-unstyled">
  			<li><span><i class="glyphicon glyphicon-calendar"></i> <c:out value="${blogObject.blog_datetime}"></c:out> </span></li>
            <li>|</li>
            <span><i class="glyphicon glyphicon-comment"></i> 2 comments</span>
            <li>|</li>
            <li>
               <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star-empty"></span>
            </li>
           
			</ul>
       </div>
	</div>
</div>
</c:forEach>	
 <ul class="pagination pagination-lg">
  <li><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
</ul>