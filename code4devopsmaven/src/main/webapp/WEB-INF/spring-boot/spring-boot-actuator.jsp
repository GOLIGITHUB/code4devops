<h1>About Spring Boot Actuator</h1>
<p>
without Actuator, we face some problems like How can I monitor and manage spring boot applications. 
How can I check the status of the application? How can I access applications metrics
</p>

<h1>Spring Boot Actuator</h1>
<p>
When we use spring boot Actuator properties. these problems resolve automatically.
we can easily monitor, manage, status, and metrics our application. 
We can do more work with Actuator.by default 2 Actuator
properties enable when we add Actuator dependency. like /Actuator /info and /Actuator/heath 
</p>
<pre>
&lt;dependencies&gt;
    &lt;dependency&gt;
        &lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
        &lt;artifactId&gt;spring-boot-starter-actuator&lt;/artifactId&gt;
    &lt;/dependency&gt;
&lt;/dependencies&gt;
</pre>	
<p><b>Endpoints are prefixed with:/actuator</b></p>
<pre>
info.app.name=code4devops
info.app.email=code4devops@gmail.com
info.app.mobile=9999999999
</pre>
<h1><b>Spring boot Actuator</b></h1>
<table class="table">
	<tr>
		<th>Name:</th>
		<th>Description:</th>
	</tr>
	<tr>
		<td>/actuator/auditevents</td>
		<td>Audit events for your application</td>
	</tr>
	<tr>
		<td>/actuator/beans</td>
		<td>List of all beans registered in the Spring application context</td>
	</tr>
	<tr>
		<td>/actuator/mappings</td>
		<td>List of all @RequestMapping paths</td>
	</tr>
	<tr>
		<td>/actuator/threaddump</td>
		<td>All Runing threads in your application</td>
	</tr>
	<tr>
		<td>/actuator/env</td>
		<td>Exposes properties from Springs ConfigurableEnvironment</td>
	</tr>
</table>
<h4>Exposing Endpoints</h4>
<ol>
	<li>By default , Only /health and /info are exposed</li>
	<li>To exposed all Actuator endpoints  over HTTP</li>
</ol>
<pre>
Exposing 2 endpoint(s) beneath base path '/actuator'
</pre>
<p><strong>application.properties</strong></p>
<pre>
#use wildcard  "*" to exposed all endpoints
#Can also exposed individual endpoints with a comma-delimited list	
#
management.endpoints.web.exposure.include=*
management.endpoints.web.exposure.exclude=env,beans,health,info
</pre>
<p><a href="https://docs.spring.io/spring-boot/docs/current/reference/html/production-ready-features.html" target="_blank">For More Detail about  Actuator</a></p>