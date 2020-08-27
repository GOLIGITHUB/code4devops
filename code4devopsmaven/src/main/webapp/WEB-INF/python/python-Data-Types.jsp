	<h1>Python 3 The Standard Type Hierarchy</h1>
<img src="../img/python/Python_3._The_standard_type_hierarchy.png" class="img-thumbnail" alt="Python_3._The_standard_type_hierarchy">
<h1>In Python 3 types of data type</h1>
<ul>
	<li>Number</li>
	<li>String</li>
	<li>Boolean</li>
</ul>
<table  class="table">
	<tr class="success">
		<td>number</td>
		<td>string</td>
		<td>boolean</td>
	</tr>
	<tr>
		<td>int,float</td>
		<td>str</td>
		<td>bool</td>
	</tr>
	<tr class="success">
		<td>12,18.9</td>
		<td>' '  or  " "</td>
		<td>True, False</td>
	</tr>
</table>
<pre id="codepre">
userName="Ashu"
userAge=29
userSalary=19.9
userBool=True
userList=['Ashu','pankaj','aman','aman']
userTuple=('Ashu','pankaj','aman')
userSet={'Ashu','pankaj','aman'}
userDict={'A1':'Ashu','B1':'pankaj','C1':'aman'}
print(type(userName))
print(type(userAge))
print(type(userSalary))
print(type(userBool))
print(type(userList))
print(type(userTuple))
print(type(userSet))
print(type(userDict))
</pre>
<pre>
&#60;class &#96str&#96&#62;
&#60;class &#96int&#96&#62;
&#60;class &#96float&#96&#62;
&#60;class &#96bool&#96&#62;
&#60;class &#96list&#96&#62;
&#60;class &#96tuple&#96&#62;
&#60;class &#96set&#96&#62;
&#60;class &#96dict&#96&#62;
</pre>
<h1>How many ways to formated data in python ?</h1>
<p><strong>In Python formatting the date in two way</strong></p>
<ul>
	<li>percentage(%)</li>
	<li>braces({})</li>
</ul>
<table class="table">
		<tr class="success" >
			<td>String</td>
			<td>Integer</td>
			<td>Float</td>
			<td>Float</td>
		</tr>
		<tr class="success">
			<td>%s</td>
			<td>%d</td>
			<td>%f</td>
			<td>%g</td>
		</tr>
		<tr class="success">
			<td></td>
			<td></td>
			<td>it only print 17 digit</td>
			<td>Only print 6 digit</td>
		</tr>
</table>
<pre id="codepre">
def getValueFrom(id,name,marks):
	# substitute must be same order
	print("Student ID=%d Student Name=%s Student Marks=%g"%(id1,name,marks))	
id1=int(input("Enter Student ID: "))
name=input("Enter Student Name: ")	
marks=float(input("Enter Student Marks: "))
getValueFrom(id1,name,marks)</pre>
<pre id="outputpre">
Enter Student ID: 1002
Enter Student Name: Ashutosh
Enter Student Marks: 98.9
Student ID=1002 Student Name=Ashutosh Student Marks=98.9
</pre>
<pre id="codepre">
def getValueFrom(id,name,marks):
	#substitute must be same order.Here Type is important
	print("Student ID=%d Student Name=%s Student Marks=%g"%(id1,name,marks))
	#Here in this case Type is not important
	print("Student ID={} Student Name={} Student Marks={}".format(id1,name,marks))
	print("Student ID={0} Student Name={1} Student Marks={2}".format(id1,name,marks))	
id1=int(input("Enter Student ID: "))
name=input("Enter Student Name: ")	
marks=float(input("Enter Student Marks: "))
getValueFrom(id1,name,marks)
</pre>
<pre id="outputpre">
Enter Student ID: 1002
Enter Student Name: ashu
Enter Student Marks: 98.78
Student ID=1002 Student Name=ashu Student Marks=98.78
Student ID=1002 Student Name=ashu Student Marks=98.78
Student ID=1002 Student Name=ashu Student Marks=98.78
</pre>