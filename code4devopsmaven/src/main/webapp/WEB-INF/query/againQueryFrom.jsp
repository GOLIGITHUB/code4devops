<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<h1 align="center">Get in Touch</h1>
<b style="color:green"> $ { success }</b>
<div class="container">
<form:form method="post" modelAttribute="queryCandidateDetails" action="submitQuery">
	<div class="row">
	  <div class="col-lg-6">
	  		<div class="form-group">
      			<label for="email">Name:</label>
      			<form:errors cssStyle="color:red" path="candidateName"/>
      			<form:input type="text" class="form-control" id="name" placeholder="Your Name..." name="name" path="candidateName"/>
    		</div>
	  </div>
	  <div class="col-lg-6">
	  		<div class="form-group">
      			<label for="email">Email:</label>
      			<form:errors cssStyle="color:red" path="candidateEmail"/>
      			<form:input type="email" class="form-control" id="email" placeholder="Your Email..." name="email" path="candidateEmail"/>
    		</div>
	  </div>
	</div>
	<div class="row">
	  <div class="col-lg-6">
			<div class="form-group">
      			<label for="text">Subject:</label>
      			<form:errors cssStyle="color:red" path="candidateSubject"/>
      			<form:input type="text" class="form-control" id="subject" placeholder="Technology Looking for..." name="subject" path="candidateSubject"/>
    		</div>	  
	  </div>
	 <div class="col-lg-6">
		  		<div class="form-group">
	      			<label for="email">Contact Detail:</label>
	      			<form:errors cssStyle="color:red" path="candidateContactDetail"/>
	      			<form:input type="text" class="form-control" id="Contact" placeholder="Contact Number..." name="Contact" path="candidateContactDetail"/>
	    		</div>
	</div>			
	</div>
	<div class="row">
	 	<div class="col-lg-12">
			  <div class="form-group">
				  	 <label for="comment">Message:</label>
				  	 <form:errors cssStyle="color:red" path="candidateComment"/>
				  	 <form:textarea class="form-control" cssStyle="resize: none;" rows="5" id="comment" placeholder="Your Message..." name="comment" path="candidateComment"/>
		      </div>
		</div>
	</div>	
	<div class="checkbox">
    <label><input type="checkbox"> I understand that your personal data will be used in accordance with the Privacy Policy here </label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>	
</form:form>	
</div>