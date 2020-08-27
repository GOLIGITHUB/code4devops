<h3>In python 4 type of number system</h3>
<table class="table">
		<tr class="success">
			<td>Number System Name</td>
			<td>Range</td>
			<td>Base</td>	
			<td>Start</td>	
		</tr>
		<tr>
			<td>Binary Number System</td>
			<td>0-1</td>
			<td>2</td>
			<td>0B or 0b</td>
		</tr>
		<tr class="success">
			<td>Decimal Number System</td>
			<td>0-9</td>
			<td>10</td>
			<td></td>
		</tr>
		<tr>
			<td>Octal Number System</td>
			<td>0-7</td>
			<td>8</td>
			<td>0O or 0o</td>
		</tr>
		<tr class="success">
			<td>Hexa-decimal Number System</td>
			<td>0-15</td>
			<td>0-9 a-f</td>
			<td>0X or 0x</td>
		</tr>
</table>
<h3>In Python Binary Number System</h3>
<p>Binary Number System use for digital Signal</p>
<pre>
def getBinaryValue():
	a=0b101010
	b=0B111111
	print(a," ",b)
getBinaryValue()
</pre>
<pre>
42   63
</pre>
<h3>In Python Decimal Number System</h3>
<pre>
def getDecimalValue():
	a=1234
	b=4321
	print(a," ",b)
getDecimalValue()
</pre>
<pre>
1234   4321
</pre>
<h3>In Python Octal Number System</h3>
<pre>
def getOctalValue():
	a=0o123
	b=0O321
	print(a," ",b)
getOctalValue()
</pre>
<pre>
83   209
</pre>
<h3>In Python Hexa-decimal Number System</h3>
<pre>
def getHexadecimalValue():
	a=0x1a2b3f
	b=0X3a2d1e
	print(a," ",b)
getHexadecimalValue()	
</pre>
<pre>1715007   3812638</pre>
<h3>In python Get ASCII Value using ord() function</h3>
<pre>
def getAnyASCIIValue():
	value=input("Enter any value and get ASCII value : ")
	print(ord(value))
getAnyASCIIValue()
</pre>
<pre>
Enter any value and get ASCII value : ~
126
Enter any value and get ASCII value : @
64
Enter any value and get ASCII value : a
97
Enter any value and get ASCII value : A
65
</pre>
<h3>In python Get Binary Value using bin() function</h3>
<pre>
def getInBinaryFrom():
	value=int(input("Enter any value and get Binary value : "))
	print(bin(value))
getInBinaryFrom()
</pre>
<pre>
Enter any value and get Binary value : 12345
0b11000000111001
</pre>
<h3>In python Get Octal Value using oct() function</h3>
<pre>
def getInOctalFrom():
	value=int(input("Enter any value and get Binary value : "))
	print(oct(value))
getInOctalFrom()
</pre>
<pre>
Enter any value and get Binary value : 123456
0o361100
</pre>
<h3>In python Get Hexadecimal Value using oct() function</h3>
<pre>
def getInHexadecimalFrom():
	value=int(input("Enter any value and get Hexadecimal value : "))
	print(hex(value))
getInHexadecimalFrom()	
</pre>
<pre>
Enter any value and get Hexadecimal value : 123
0x7b
</pre>