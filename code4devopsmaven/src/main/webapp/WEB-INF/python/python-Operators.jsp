<h1>Operators in Python</h1>
<p><strong>7 type of Operators in python</strong>
<ol>
	<li>Arithmetic Operators </li>
	<li>Comparison Operators</li>
	<li>Assignment Operators</li>
	<li>Identity Operators</li>
	<li>Bitwise Operators</li>
	<li>Membership Operators</li>
	<li>Logical Operators</li>
</ol>
<p><h2>Identity Operators</h2></p>
<p><strong>is :</strong>
Evaluates to ture if the variables on either side of the operator point to the same object and false otherwise
</p>
<p><strong>is not :</strong
>	
Evaluates to false if the variables on either side of the operator point to the same object and true otherwise
</p>
<pre >
<code lang="text/x-java">
		a=10
		b=10
		print("Both are equal:",a is b)
		print("Both are not equal:",a is not b)	
</code>
</pre>
<pre ><strong>Output:</strong>
Both are equal: True
Both are not equal: False
</pre>
<p><h2>Bitwise Operators</h2></p>
<pre><strong>Comeing Soon...</strong></pre>
<p><h2>Membership Operators</h2></p>
<p><strong>in :</strong>
	Evaluates to true if it finds a variable in the specified sequence and false otherwise
</p>
<p><strong>not in :</strong>Evaluates to true if it does not find a variable in the specified sequence and false otherwise</p>
<pre >
	<code>
		s1="annu"
		s2="roohi"
		list1=['annu','aman','arun','triloki']
		print(s1 in list1)
		print(s2 not in list1)
	</code>
</pre>
<pre ><strong>Output:</strong>
True
True	
</pre>
<p><h2>Logical Operators</h2></p>
<p><strong>a and b :</strong>returns a if a is false,b otherwise</p>
<p><strong>a or  b :</strong>returns b if b is false, a otherwise</p>
<p><strong>a not b :</strong>Returns true if a is true ,false otherwise</p>
<pre>
	<code>
		a=0
		b=1
		print(a and b)
		print(a or b)
		print(not a)
	</code>
</pre>
<pre ><strong>Output:</strong>
0
1
True
</pre>