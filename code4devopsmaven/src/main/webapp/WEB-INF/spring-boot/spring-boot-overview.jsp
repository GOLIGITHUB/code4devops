<h1><b>Spring Boot Overview</b></h1>
<p>The Problem Without Spring Boot. Building a spring application is really difficult like...</p>
<ul>
	<li>What Maven archetype to use?</li>
	<li>Which Maven dependencies do I need?</li>
	<li>How do I set Up configuration (XML or JAVA)?</li>
	<li>How do I install the server?(glassfish,Tomcat,JBoss,ibm etc...)</li>
	<li>Mode Detail Spring Boot Development Go to this Link <a href="https://spring.io/projects/spring-boot"> Spring Boot Reference Manual</a></li>
</ul>	
<h2>Using Spring Boot Resolve This Problem</h2>
<ul>
	<li>Create stand-alone Spring applications</li>
	<li>Embed glassfish,Tomcat,JBoss,ibm directly (no need to deploy WAR files)</li>
	<li>Provide opinionated 'starter' dependencies to simplify your build configuration</li>
	<li>Automatically configure Spring and 3rd party libraries whenever possible</li>
	<li>Provide production-ready features such as metrics, health checks, and externalized configuration</li>
	<li>Absulutely no code generation and no requirement for XML configuration</li>
	<li>Make it easier to get started with Spring Development</li>
	<li>Minimize the amount of manual configuration</li>
	<li>Preform auto-configuration based on props files and JAR classpath</li>
	<li>Help to resulve dependency conflicts (Maven or Gradle)</li>
	<li>Provide an embedded HTTP server so you can get start Quickly</li>
</ul>
<h1></h1>
<h3><b>Create Spring Boot Project Using Spring Initializr</b></h3>
<p>Quickly Create a starter Spring Project</p>
<ul>
	<li><a href="https://start.spring.io">Configure our project at Spring Initializr website</a></li>
	<li>select build tool maven or gradle</li>
	<li>select JDK Version 1.8</li>
	<li>Select your Dependencies</li>
	<li>Download the Spring Boot Project</li>
	<li>Unzip the file</li>
	<li>Import Maven project into our IDE</li>
</ul>
<h3><b>About Spring Boot Project Structure</b></h3>
<ul>
	<li>mvnw allows you to run a Maven project</li>
	<li>No need to have Maven installed or present on your path</li>
	<li>If correct version of Maven is NOT found on your computer</li>
	<li>Automatically downloads correct version and runs Maven</li>
	<li>Two files are provided</li>
	<li>mvnw.cmd for MS Windows  <strong> E:\coder_workstation\spring-boot\spring-boot-jar\spring-boot-jar>mvnw clean compile test</strong></li>
	<li>mvnw.sh for Linux/Mac    <strong>./mvnw clean compile test</strong></li>
	<li>If you already have Maven installed previously</li>
	<li> Then you can ignore/delete the mvnw files</li>
	<li> Just use Maven as you normally would</li>
</ul>	
<h4><b>About Spring Boot Embedded Server</b></h4>
<p>
Spring Boot provider Embedded Server by default tomcat server Embedd in spring boot.
So no need to install any external server. 
if you want you can change easily using the application.properties file
</p>
<h5><b>What does @SpringBootApplication?</b></h5>
<p>@SpringBootApplication is composed of the following annotations:</p>
<table class="table table-sm table-dark">
	<tr>
		<th>Annotaion</th>
		<th>Description</th>
	</tr>
	<tr>
		<td>@EnableAutoConfiguration</td>
		<td>Enables Spring Boot's auto-configuration support</td>
	</tr>
	<tr>
		<td>@ComponentScan</td>
		<td>Enables component scanning of current package Also recursively scans sub-packages</td>
	</tr>
	<tr>
		<td>@Configuration</td>
		<td>Able to register extra beans with @Bean or import other configuration classes</td>
	</tr>
</table>
<img alt="" src="${pageContext.request.contextPath}/static/img/spring-boot/deploying-spring-boot-application.jpg">
