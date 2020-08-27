<h1>Run a spring boot project from command line</h1>
<p>Some points here to know for if you run your spring boot project using the command line</p>
<ol>
	<li>During Development we spend most of our time in the IDE IntellIj,eclipse,Netbeans</li>
	<li>However, We may want to run our Spring Boot App outside of the IDE</li>
	<li>One approach is running from the command-line</li>
	<li>When running from the command -line </li>
	<li>No need to have IDE  open / running</li>
	<li>Since we using Spring Boot, the server is embedded in our JAR File</li>
	<li>No need to have separate  server installed /running</li>
	<li>Spring boot apps are self-contained server all ready</li>
</ol>
<h3>Using Two way to running your application using Command Line(CMD)</h3>
<ol>
	<li><strong>Way 1:</strong> Use java -jar (java -jar app.jar)</li>
	<li><strong>Way 2:</strong> Use Spring Boot Maven Plugin (mvnw spring-boot:run)</li>
</ol>
<h4>Development Process for the Command-Line to run our project</h4>
<ol>
	<li>Exit the IDE</li>
	<li>Package the app using mvnw package</li>
	<li>Run app using java -jar</li>
	<li>Run app using Spring boot Maven plugin ,mvnw spring-boot:run</li>
</ol>
<h5><b>Using First Way</b></h5>
<p><b>step 1 : Go to workspace project directory and write mvnw package</b></p>
<p>C:\Users\xyz\Documents\workspace\commandline-demo>mvnw package</p>
<p><b>step 2 :It creates the JAR file for our application in the project target directory. 
JAR is created in the target directory and go to the target subdirectory</b></p>
<p>C:\Users\xyz\Documents\workspace\commandline-demo> cd target</strong></p>
<p>C:\Users\xyz\Documents\workspace\commandline-demo>java -jar demowithtool-0.0.1-SNAPSHOT.jar</strong></p>
<p><strong>NOTE : </strong> Stop our Spring Boot app with CTRL+C</p>
<h5><b>Using Second Way</b></h5>
<p><b>If you want Run your application using Spring Boot Maven Plugin then write on cmd mvnw spring-boot:run</b></p>
<p>\Users\xyz\Documents\workspace\commandline-demo>mvnw spring-boot:run</strong></p>