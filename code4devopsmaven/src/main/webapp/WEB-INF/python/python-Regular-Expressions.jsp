<p> in python you use Regular Expressions then first import <strong> re </strong> modules</p>
<p><strong>The special characters are:</strong></p>
<table class="table">
		<tr class="success">
			<td>"."</td>      
			<td>Matches any character except a newline.</td>
		</tr>
		<tr >	
		    <td>"^"</td>      
		    <td>Matches the start of the string.</td>
		</tr>
		<tr class="success">   
		    <td>"$"</td>
		    <td>Matches the end of the string or just before the newline at the end of the string.</td>
		</tr> 
		<tr>            
		    <td>"*"</td>
		    <td>Matches 0 or more occurrences </td>
		</tr>  
		<tr class="success">           
		    <td>"+"</td>
		    <td>Matches 1 or more occurrences.</td>
		</tr>
		<tr>
		    <td>"?"</td>
		    <td>Matches 0 or 1 occurrences.</td>
		</tr> 
		<tr class="success">   
		    <td>*?,+?,??</td>
		    <td>Non-greedy versions of the previous three special characters.</td>
		</tr> 
		<tr>   
		    <td>{m,n}</td>    
		    <td>Matches from m to n repetitions of the preceding RE.</td>
		</tr> 
		<tr class="success">   
		    <td>{m,n}?</td>   
		    <td>Non-greedy version of the above.</td>
		</tr>
		<tr>    
		    <td>"\\"</td>     
		    <td>Either escapes special characters or signals a special sequence.</td>
		</tr> 
		<tr class="success">   
		    <td>[]</td>       
		    <td>Indicates a set of characters.A "^" as the first character indicates a complementing set.</td>
		</tr> 
		<tr>       
		   <td> "|"</td>      
		   <td>A|B, creates an RE that will match either A or B.</td>
		</tr>
		<tr class="success">   
		    <td>(...)</td>
		    <td>Matches the RE inside the parentheses.The contents can be retrieved or matched later in the string.</td>
		</tr> 
		<tr >       
		    <td>(?aiLmsux)</td> 
		    <td>Set the A, I, L, M, S, U, or X flag for the RE (see below).</td>
		</tr>
		<tr class="success">    
		    <td>(?:...) </td> 
		    <td>Non-grouping version of regular parentheses.</td>
		</tr>
		<tr>    
		    <td>(?P<name>...)</td> 
		    <td>The substring matched by the group is accessible by name.</td>
		</tr>
		<tr class="success">    
		    <td>(?P=name) </td>    
		    <td>Matches the text matched earlier by the group named name.</td>
		</tr>
		<tr>    
		    <td>(?#...) </td> 
		    <td>A comment; ignored.</td>
		</tr>
		<tr class="success">    
		    <td>(?=...) </td> 
		    <td>Matches if ... matches next, but doesn't consume the string.</td>
		</tr>
		<tr>    
		    <td>(?!...) </td> 
		    <td>Matches if ... doesn't match next.</td>
		</tr>
		<tr class="success">    
		    <td>(?<=...)</td> 
		    <td>Matches if preceded by ... (must be fixed length).</td>
		</tr>    
</table>
<p><strong>This module exports the following functions:</strong></p>
<table class="table">
	<tr class="success">
		<td>match</td>
		<td> Match a regular expression pattern to the beginning of a string.</td>
	</tr>
	<tr class="success">
		<td>search</td>
		<td> Search a string for the presence of a pattern.</td>
	</tr>
	<tr class="success">
		<td>findall</td>
		<td> Find all occurrences of a pattern in a string.</td>
	</tr>

</table>
<h2>match() function in python:it find only starting String first charecter or word</h2>
<pre>
import re
def getRegularExpressions():
	searchKeyword=input("Enter the Search keyword :")
	se=re.match(searchKeyword,"I'm not a great programmer; I'm just a good programmer with great habits.")
	print(se)
getRegularExpressions() 
</pre> 
<pre>
Enter the Search keyword :I'm
<span><re.Match object; span=(0, 3), match="I'm"></span>
</pre>
<h4>If you want print if search keyword match  then use group() method</h4>
<pre>
import re
def getRegularExpressions():
	searchKeyword=input("Enter the Search keyword :")
	se=re.match(searchKeyword,"I'm not a great programmer; I'm just a good programmer with great habits.")
	print(se.group())
getRegularExpressions() 
</pre> 
<pre>
Enter the Search keyword :I'm
I'm
</pre>
<h4>If you want print if search keyword match  starting and ending index then use start() and end() method</h4>
<pre>
import re
def getRegularExpressions():
	searchKeyword=input("Enter the Search keyword :")
	se=re.match(searchKeyword,"I'm not a great programmer; I'm just a good programmer with great habits.")
	print(se.start()," ",se.end())
getRegularExpressions() 
</pre> 
<pre>
Enter the Search keyword :I'm
0   3
</pre>
<h4>span() method also print starting and ending index in tuple form</h4>
<pre>
import re
def getRegularExpressions():
	searchKeyword=input("Enter the Search keyword :")
	se=re.match(searchKeyword,"I'm not a great programmer; I'm just a good programmer with great habits.")
	print(se.span())
getRegularExpressions() 
</pre>
<pre>
Enter the Search keyword :I'm
(0, 3)
</pre>
<h3>If search keyword not match.It return <strong>None</strong></h3>    
<pre>
import re
def getRegularExpressions():
	searchKeyword=input("Enter the Search keyword :")
	se=re.match(searchKeyword,"I'm not a great programmer; I'm just a good programmer with great habits.")
	print(se)
getRegularExpressions() 
</pre>
<pre>
Enter the Search keyword :ashu
None
</pre>
<h2>search() function in python:it find enteriar String character or word only first occurrences.</h2>
<pre>
import re
def getRegularExpressions():
	searchKeyword=input("Enter the Search keyword :")
	se=re.search(searchKeyword,"I'm not a great programmer; I'm just a good programmer with great habits.")
	print(se)
getRegularExpressions() 
</pre>
<pre>
Enter the Search keyword :programmer
<re.Match object; span=(16, 26), match='programmer'>
</pre>
<h4>If you want print if search keyword match  then use group() method</h4>
<pre>
import re
def getRegularExpressions():
	searchKeyword=input("Enter the Search keyword :")
	se=re.search(searchKeyword,"I'm not a great programmer; I'm just a good programmer with great habits.")
	print(se.group())
getRegularExpressions()
</pre>
<pre>
Enter the Search keyword :programmer
programmer
</pre>
<h4>If you want print if search keyword match  starting and ending index then use start() and end() method</h4>
<pre>
import re
def getRegularExpressions():
	searchKeyword=input("Enter the Search keyword :")
	se=re.search(searchKeyword,"I'm not a great programmer; I'm just a good programmer with great habits.")
	print(se.start(),"  ",se.end())
getRegularExpressions() 	
</pre>
<pre>
Enter the Search keyword :programmer
16    26
</pre> 
<h4>span() method also print starting and ending index in tuple form</h4>    
<pre>
import re
def getRegularExpressions():
	searchKeyword=input("Enter the Search keyword :")
	se=re.search(searchKeyword,"I'm not a great programmer; I'm just a good programmer with great habits.")
	print(se.span())
getRegularExpressions() 
</pre>
<pre>
Enter the Search keyword :programmer
(16, 26)
</pre>
<h3>If search keyword not match.It return <strong>None</strong></h3> 
<pre>
import re
def getRegularExpressions():
	searchKeyword=input("Enter the Search keyword :")
	se=re.search(searchKeyword,"I'm not a great programmer; I'm just a good programmer with great habits.")
	print(se)
getRegularExpressions() 	
</pre>
<pre>
Enter the Search keyword :ashu
None
</pre>        
<h2>findall() function in python:it find enteriar String  charecter or word.if word charecter or word match then return in list format </h2>
<pre>
import re
def getRegularExpressions():
	searchKeyword=input("Enter the Search keyword :")
	se=re.findall(searchKeyword,"I'm not a great programmer; I'm just a good programmer with great habits.")
	print(se)
getRegularExpressions() 
</pre>
<pre>
Enter the Search keyword :programmer
['programmer', 'programmer']
</pre>

<pre>
import re
def getRegularExpressions():
	print(re.match("[abc]","abc"))
	print(re.match("[abc]","bca"))
	print(re.match("[abc]","cab"))
	print(re.match("[a-z]","aaaa"))
	print(re.match("[0-9]","111"))
	print(re.match("[123]","333"))
getRegularExpressions()
</pre>
<pre>
<re.Match object; span=(0, 1), match='a'>
<re.Match object; span=(0, 1), match='b'>
<re.Match object; span=(0, 1), match='c'>
<re.Match object; span=(0, 1), match='a'>
<re.Match object; span=(0, 1), match='1'>
<re.Match object; span=(0, 1), match='3'>
</pre>
<pre>
import re
def getRegularExpressions():
	print(re.match("[abc]*",""))
	print(re.match("[abc]*","."))
	print(re.match("[abc]*","xyz"))
	print(re.match("[abc]*","cab"))
	print(re.match("[a-z]*","aaaa"))
	print(re.match("[0-9]*","111"))
	print(re.match("[123]*","333"))
getRegularExpressions()
</pre>
<pre>
<re.Match object; span=(0, 3), match='abc'>
<re.Match object; span=(0, 3), match='bca'>
<re.Match object; span=(0, 3), match='cab'>
<re.Match object; span=(0, 4), match='aaaa'>
<re.Match object; span=(0, 3), match='111'>
<re.Match object; span=(0, 3), match='333'>
</pre>
<pre>
import re
def getRegularExpressions():
	print(re.match("[abc]+",""))
	print(re.match("[abc]+","."))
	print(re.match("[abc]+","xyz"))
	print(re.match("[abc]+","cab"))
	print(re.match("[a-z]+","aaaa"))
	print(re.match("[0-9]+","111"))
	print(re.match("[123]+","333"))
getRegularExpressions()
</pre>
<pre>
None
None
None
<re.Match object; span=(0, 3), match='cab'>
<re.Match object; span=(0, 4), match='aaaa'>
<re.Match object; span=(0, 3), match='111'>
<re.Match object; span=(0, 3), match='333'>
</pre>
<pre>
import re
def getRegularExpressions():
	print(re.match("[abc]?",""))
	print(re.match("[abc]?","."))
	print(re.match("[abc]?","xyz"))
	print(re.match("[abc]?","cab"))
	print(re.match("[a-z]?","aaaa"))
	print(re.match("[0-9]?","111"))
	print(re.match("[123]?","333"))
getRegularExpressions()
</pre>
<pre>
<re.Match object; span=(0, 0), match=''>
<re.Match object; span=(0, 0), match=''>
<re.Match object; span=(0, 0), match=''>
<re.Match object; span=(0, 1), match='c'>
<re.Match object; span=(0, 1), match='a'>
<re.Match object; span=(0, 1), match='1'>
<re.Match object; span=(0, 1), match='3'>
</pre>          
          
         
       
      
       
         
        