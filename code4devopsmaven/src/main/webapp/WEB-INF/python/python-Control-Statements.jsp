<p><h2>if and else</h2></p>
<p><strong>elseif(conditional)</strong>
	syntax python change into
	<strong>elif(conditional)</strong></p>
<pre id="codepre"><code>
a=99
b=75
c=60
print("A:",a,"B:",b,"C:",c)
if (a>b):
 print("a Greater then b")
elif(b>c):
 print("b Greater then c")
else:
 print("c smaller then a,b")
</code></pre>
<pre id="outputpre"><strong>Output:</strong>
A: 99 B: 75 C: 60
a Greater then b
</pre>
<p><h2>Loop</h2></p>
<p>A loop statement allows us to execute a statement or group of statements multiple times.</p>
<ol>
	<li>For</li>
	<li>While</li>
	<li>Nested</li>
</ol>
<p><h3>While</h3></p>
<p>Repeats a statement or group of statements while a given condition is true.
it the condition before executing the loop body.</p>
<pre><strong>Syntax:</strong>
	<strong>iterating_var</strong>
	 <strong>while(conditional):</strong>
	 			statements
</pre>
<pre id="codepre">
	<code>
		count=5
while (count>0):
	print("Hello...")
	count=count-1
print("Good Bye!")
	</code>
</pre>
<pre id="outputpre"><strong>Output:</strong>
Hello...
Hello...
Hello...
Hello...
Hello...
Good Bye!	
</pre>
<p><h3>for</h3></p>
<p>Repeats a statement or group of statements while a given condition is true.it tests the condition before executing the loop body.</p>
<pre><strong>Syntax:</strong>
	<strong>for</strong> iterating_var <strong>in</strong> sequence<strong>:</strong>
</pre>
<pre id="codepre"><code>
for x in range(2):
	print(x)

for x in range(1,2):
	print(x)	

for x in range(2,12,2):
	print(x)	
</code></pre>
<pre id="outputpre"><strong>Output:</strong>
0
1
1
2
4
6
8
10	
</pre>
<p><h2>Nested Loops</h2></p>
<p>python programming language allows use of one loop inside another loop.This is called Nested Loop.</p>

<p><h3>For</h3></p>
<pre>
<strong>for</strong>interating_var <strong>in</strong> sequence<strong>:</strong>
	<strong>for</strong>interating_var <strong>in</strong> sequence<strong>:</strong>
	statements
statements	
</pre>
<pre id="codepre"><code>
for x in range(3):
	for x in range(1,3):
		print(x)
print(x)	
</code></pre>
<pre  id="outputpre"><strong>Output:</strong>
1
2
1
2
1
2
2	
</pre>
<p><h3>while</h3></p>
<pre>
<strong>while</strong> expression:
	<strong>while</strong> expression:
		statements
statements		
</pre>
<pre id="codepre">
i=0
j=0
while (i<3):
	while (j<4):
		print("inner loop:",j)
		j=j+1
	i=i+1		
print("outer loop:",i)
print("say bye!")
</pre>
<pre  id="outputpre"><strong>Output:</strong>
inner loop: 0
inner loop: 1
inner loop: 2
inner loop: 3
outer loop: 3
say bye!	
</pre>