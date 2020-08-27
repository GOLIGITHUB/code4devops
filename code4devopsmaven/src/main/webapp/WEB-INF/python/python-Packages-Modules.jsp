<p><strong>module : </strong> module that means nothing, that means simple dot py file that's it</p>
<p><strong>NOTE:</strong>Any python file referenced as a modules</p>	
<p><strong>package :</strong> package that means nothing, that means simple folders</p>
<h3>In Python two types of modules</h3>
<ul>
	<li>per-defined modules</li>
	<li>user defined modules</li>
</ul>
<p>
 <strong>per-defined modules : </strong>
 the module create by python.org that is call per-defined modules, for example re,abc,time,threading,os
</p>

<p>
 <strong>user defined modules : </strong>
 the module create by user that is call user-defined modules
</p>

<h2>three way to access other modules data in python</h2>
<ul>
	<li>access the function by using module name</li>
	<li>access the function directly</li>
	<li>access all function,access directly</li>
</ul>
<h3>First Way:</h3>
<p>this source file save as <strong>a10.py</strong> that is call modules name</p>
<pre id="codepre">
def openTickets(message):
	return message;
def closeTickets(message):
	return message;
</pre>
<p>this source file save as <strong>b10.py</strong> that is call modules name</p>
<pre id="codepre">
import a10
print(a10.openTickets("ticket range"))
print(a10.closeTickets("ticket close"))
</pre>
<pre id="outputpre">
ticket range
ticket close
</pre>
<h3>Second Way:</h3>
<p>this source file save as <strong>a10.py</strong> that is call modules name</p>
<pre id="codepre">
def openTickets(message):
	return message;
def closeTickets(message):
	return message;
</pre>
<p>this source file save as <strong>b10.py</strong> that is call modules name</p>
<pre id="codepre">
from a10 import openTickets,closeTickets
print(openTickets("ticket range"))
print(closeTickets("ticket close"))
</pre>
<pre id="outputpre">
ticket range
ticket close
</pre>
<h3>Third Way:</h3>
<p>if you have multiple method.then this approach good </p>
<p>this source file save as <strong>a10.py</strong> that is call modules name</p>
<pre id="codepre">
def openTickets(message):
	return message;
def closeTickets(message):
	return message;
</pre>
<p>this source file save as <strong>b10.py</strong> that is call modules name</p>
<pre id="codepre">
from a10 import * 
print(openTickets("ticket range"))
print(closeTickets("ticket close"))
</pre>
<pre id="outputpre">
ticket range
ticket close
</pre>
<h3>Different modules name with same methods</h3>
<p>this source file save as <strong>a10.py</strong> that is call modules name</p>
<pre id="codepre">
def openTickets(message):
	return message;
</pre>
<p>this source file save as <strong>c10.py</strong> that is call modules name</p>
<pre id="codepre">
def openTickets(message):
	return message;
</pre>
<p>this source file save as <strong>b10.py</strong> that is call modules name</p>
<pre id="codepre">
#First Approach
import a10
import c10
print(a10.openTickets("A10 : ticket range"))
print(c10.openTickets("C10 : ticket range"))

#Second Approach
from a10 import openTickets
from c10 import openTickets
print(openTickets("A10 : ticket range"))
print(openTickets("C10 : ticket range"))

#Third Approach
from a10 import *
from c10 import *
print(openTickets("A10 : ticket range"))
print(openTickets("C10 : ticket range"))
</pre>
<pre>
A10 : ticket range
C10 : ticket range
A10 : ticket range
C10 : ticket range
A10 : ticket range
C10 : ticket range
</pre>
<h3>Different modules name with class and same methods</h3>
<p>this source file save as <strong>a10.py</strong> that is call modules name</p>
<pre id="codepre">
class sbi:
	def getBankName(self,name):
		return name;
</pre>
<p>this source file save as <strong>c10.py</strong> that is call modules name</p>
<pre id="codepre">
class pnb:
	def getBankName(self,name):
		return name;
</pre>
<p>this source file save as <strong>b10.py</strong> that is call modules name</p>
<pre id="codepre">
#First Approach
import a10
import c10
obj1=a10.sbi()
obj2=c10.pnb()
print(obj1.getBankName("PNB"))
print(obj2.getBankName("SBI"))

#Second Approach
from a10 import sbi
from c10 import pnb
obj3=a10.sbi()
obj4=c10.pnb()
print(obj3.getBankName("PNB"))
print(obj4.getBankName("SBI"))

#Thrid Approach
from a10 import *
from c10 import *
obj5=a10.sbi()
obj6=c10.pnb()
print(obj5.getBankName("PNB"))
print(obj6.getBankName("SBI"))
</pre>
<pre>
PNB
SBI
PNB
SBI
PNB
SBI
</pre>