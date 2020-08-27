<pre>
<strong>File</strong> : .txt,.c,.java etc
<strong>Database</strong> : oracle,mysql,mariadb
<strong>Big data</strong> : hadoop
</pre>
<h3>Two type of file in python</h3>
<ul>
  <li><strong>Binary files</strong>: mp3 , image , pdf , video , audio </li>
  <li><strong>Text files</strong>: .txt , .c , .java </li>
</ul>
<h3>3 Mode in python File Handing</h3>
<ul>
	<li>r : read mode</li>
	<li>w : write mode</li>
	<li>a : append mode</li>
</ul>
		<table class="table">
                <caption>Character Meaning</caption>
                <tr class="success">
                    <td>'r'</td>
                    <td>open for reading (default)</td>
                 </tr> 
                 <tr>
                    <td>'w'</td>
                    <td>open for writing, truncating the file first</td>
                 </tr>   
                 <tr class="success">
                    <td>'x'</td>
                    <td>create a new file and open it for writing</td>
                 </tr> 
                 <tr>
                    <td>'a'</td>
                    <td>open for writing, appending to the end of the file if it exists</td>
                 </tr> 
                 <tr  class="success">
                    <td>'b'</td>
                    <td> binary mode</td>
                 </tr> 
                 <tr>
                    <td>'t'</td>
                    <td>text mode (default)</td>
                 </tr>
                 <tr class="success">
                    <td>'+'</td>
                    <td>open a disk file for updating (reading and writing)</td>
                 </tr> 
                 <tr>
                    <td>'U'</td>
                    <td>universal newline mode (deprecated)</td>
                 </tr>  
        </table>	
<pre>
1.open the file
		open() function
2.read or write or append operations
		read() readLine() readLines()
		write()
3.close the file
		close() function
</pre>		
<p><strong>NOTE 1 :In Python file handing default operations mode is  read</strong></p>
<p><strong>NOTE 2 :In Python file handing if you read the data on file.file is mandatory</strong></p>
<h3>if you preform write operations in file.file exits ya not exits is not mandatory in python</h3>
<pre>
file=open("index.html","w")
file.write("Hello Sir \n this is javablackbook website")
file.close()
print("operations are completed")
</pre>
<h3>if you preform read operations in python.file exits is mandatory in python</h3>
<pre>
try:
	file=open("index.html")
	data=file.read()
	print(data)
	file.close()
except IOError as a:
	print("Operations fail : ",a)
print("Operations are completed")
</pre>
<p><strong>
	Here remove r args in open("html") method because in python default 
	opreation is read and index.html file exits
</strong></p>
<pre>
try:
	file=open("index.html")
	data=file.read()
	print(data)
	file.close()
except IOError as a:
	print("Operations fail : ",a)
print("Operations are completed")
</pre>
<pre>
this is javablackbook website
Operations are completed
</pre>
<p><strong>Here remove r args in open("html") method and html file not exits</strong></p>
<pre>
try:
	file=open("html")
	data=file.read()
	print(data)
	file.close()
except IOError as a:
	print("Operations fail : ",a)
print("Operations are completed")
</pre>
<pre>
Operations fail :  [Errno 2] No such file or directory: 'html'
Operations are completed
</pre>
<h3>append opreation in python.""index.html"" file is already available then data is appended</h3>
<pre>
try:
	file=open("index.html","a")
	data=file.write("\n keep doing and keep movie")
	file.close()
except IOError as e:
	print("Operations fail : ",e)
print("Operations are completed")
</pre>
<pre>
Operations are completed 
</pre>
<h3>append opreation in python.view.html file is not available then create the file write the data</h3>
<pre>
try:
	file=open("view.html","a")
	data=file.write("\n keep doing and keep movie")
	file.close()
except IOError as e:
	print("Operations fail : ",e)
print("Operations are completed")
</pre>
<h3>How to get file mode,name and close or not in pyhton </h3>
<pre>
try:
	file=open("index.html","w")
	print(file)
	print(file.name)
	print(file.mode)
	print(file.closed)
	file.close()
	print(file.closed)
except IOError as e:
	print("Operations fail : ",e)
print("Operations are completed")
</pre>
<pre>
<_io.TextIOWrapper name='index.html' mode='w' encoding='cp1252'>
index.html
w
False
True
Operations are completed
</pre>