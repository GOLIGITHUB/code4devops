<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<div class="row">
	<c:forEach var="blogObject" items="${list}">
    <div class="col-sm-4">
    	<div class="well well-lg">
	      <h3><a href="${pageContext.request.contextPath}/<c:out value="${blogObject.getBlog_url()}"></c:out>"><c:out value="${blogObject.getBlog_title()}"></c:out></a></h3>
	      <p><c:out value="${blogObject.getBlog_description()}"></c:out></p>
	      <p><c:out value="${blogObject.getBlog_datetime()}"></c:out></p>
      	</div>
    </div>
    </c:forEach>
</div>

