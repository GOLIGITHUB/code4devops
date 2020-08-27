<h1>Polymorphism</h1>
<p>The ability to appears in more then one from that is polymorphism</p>
<h3>In Python Two type of polymorphism</h3>
<ul>
	<li>Method Overloading</li>
	<li>Method Overriding</li>
</ul>
<h3>What is method Overloading in python?</h3>
<p>Method name same with changing the number of argument name is call method Overloading in python.
but in python Overloading achieve in other hand</p>
<h3>Method Overloading not possible in single class</h3>
<pre id="codepre" >
class B10:
	def getName(self,fname):
		print(fname)
	def getName(self,fname,lname):
		 print(fname,lname)
b1=B10()
b1.getName("Ashu")
b1.getName("Arun","singh")
</pre>
<pre id="outputpre">
TypeError: getName() missing 1 required positional argument: 'lname'
</pre>
<h3>Method Overloading not possible in is-a relationship</h3>
<pre id="codepre">
class B10:
	def getName(self,fname):
		print(fname)
class C10(B10):		
	def getName(self,fname,lname):
		 print(fname,lname)
b1=C10()
b1.getName("Ashu")
b1.getName("Arun","singh")
</pre>
<pre id="outputpre">
TypeError: getName() missing 1 required positional argument: 'lname'
</pre>
<h3>This way to achieve method overloading in python</h3>
<pre id="codepre">
class B10:
	def getName(self,f=None,l=None,e=None,m=None):
		print(f,":",l,":",e,":",m)
		
b1=B10()
b1.getName()
b1.getName("Arun")
b1.getName("Arun","singh")
b1.getName("Arun","singh","arun@gmail.com")
b1.getName("Arun","singh","arun@gmail.com","9560822035")
</pre>
<pre id="outputpre">
None : None : None : None
Arun : None : None : None
Arun : singh : None : None
Arun : singh : arun@gmail.com : None
Arun : singh : arun@gmail.com : 9560822035
</pre>
<h3>What is method Overriding in python?</h3>
<p>Method name same with same argument name is call method Overriding.</p>
<h3>Method Overriding possible in single class</h3>
<p><strong>if we are overriding then our class method executed</strong></p>
<p><strong>if we are not overriding then parent class method executed</strong></p>
<pre id="codepre">
class B10:
	def getName(self,fname):
		print("same to same 1:",fname)
	def getName(self,fname):
		print("same to same 2:",fname)
b1=B10()
b1.getName("Ashu")
b1.getName("Arun")
</pre>
<pre id="outputpre">
same to same 2: Ashu
same to same 2: Arun
</pre>

<h2>Method Overriding possible in is-a relationship</h2>
<pre id="codepre">
class B10:
	def getName(self,fname):
		print("Parent same to same 1:",fname)
class C10(B10):		
	def getName(self,fname):
		print("Child same to same 2:",fname)
b1=C10()
b1.getName("Ashu")
b1.getName("Arun")
</pre>
<pre id="outputpre">
Child same to same 2: Ashu
Child same to same 2: Arun
</pre>
<h2>Variable Overriding possible in single class</h2>
<pre id="codepre">
class B10:
	comName="TCS"
	comName="JTP"
b1=B10()
print(b1.comName)
</pre>
<pre id="outputpre">
JTP
</pre>
<h2>Variable Overriding possible in is-a relationship</h2>
<p>if we are overriding then our class variable executed</p>
<p>if we are not overriding then parent class variable executed</p>
<pre id="codepre">
class B10:
	comName="TCS"
class C10(B10):		
	comName="JTP"
b1=C10()
print(b1.comName)
</pre>
<pre id="outputpre">
JTP
</pre>
<h1>Python Interface</h1>
<pre id="codepre">
class ABC10:
	def getAge(self):
		return 25
	def getName(self):
		return "ninja"
class XYZ10:
	def getAge(self):
		return 26
	def getName(self):
		return "Ashu"	
# create one interface
def getClassObject(obj):
	print(obj.getName())
	print(obj.getAge())
# create the object
xy=XYZ10()
ab=ABC10()
getClassObject(ab) 	
</pre>
<pre id="outputpre">
ninja
25
</pre>