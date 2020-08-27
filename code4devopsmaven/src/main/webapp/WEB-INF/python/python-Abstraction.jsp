<h3>What is abstraction in python ?</h3>
<p>handling the internal details show the functionality is call abstraction in pyhton</p>
<p><strong>ABC</strong> predefine abstract class it present in <strong> abc module</strong> in pyhton</p>
<p><strong>NOTE:</strong> Make your class abstract class. your class must be extends the ABC predefine abstract class in python</p>
<h3>We not create a object of abstract  classes in python</h3>
 <pre id="codepre">
 from abc import ABC,abstractmethod
class A10(ABC):
	@abstractmethod
	def getDebitCard(self):
		pass 
	@abstractmethod
	def getCreditCard(self):
		pass
class B10(A10):
	def getDebitCard(self,amount):
		return amount
	def getCreditCard(self,amount):
		return amount
a10=A10()
print(a10.getCreditCard(100000))
print(a10.getDebitCard(2000000))	
</pre>
<pre id="outputpre">
 TypeError: Can't instantiate abstract class A10 with abstract methods getCreditCard, getDebitCard
</pre>
<h3>Here, Create child class object.using this object access abstract class implemented method</h3>
<pre id="codepre">
from abc import ABC,abstractmethod
class A10(ABC):
	@abstractmethod
	def getDebitCard(self):
		pass 
	@abstractmethod
	def getCreditCard(self):
		pass
class B10(A10):
	def getDebitCard(self,amount):
		return amount
	def getCreditCard(self,amount):
		return amount
b10=B10()
print(b10.getCreditCard(100000))
print(b10.getDebitCard(2000000))
 </pre>
 <pre id="outputpre">
100000
2000000
 </pre>
 <h3>If any class extends to abstract class.there can provide own implementation</h3>
 <pre id="codepre">
 from abc import ABC,abstractmethod
class A10(ABC):
	@abstractmethod
	def getDebitCard(self):
		pass 
class B10(A10):
	def getDebitCard(self,amount):
		return amount
class D10(A10):
	def getDebitCard(self,amount):
		return amount

b1=B10()
print(b1.getDebitCard(500000))	
d2=D10()
print(d2.getDebitCard(600000))
 </pre>
 <pre id="outputpre">
500000
600000
 </pre>
<h3>if we extends the abstract class must implement all method </h3>
<pre id="codepre">
from abc import ABC,abstractmethod
class A10(ABC):
	@abstractmethod
	def getDebitCard(self,message):
		pass 
	@abstractmethod	
	def getCreditCard(self,message):
		pass 	
class B10(A10):
	def getDebitCard(self,message):
		return message
b10=B10()
print(b10.getDebitCard("By B10"))	
print(b10.getCreditCard("By D10")
</pre>

 <pre id="outputpre">
 TypeError: Can't instantiate abstract class B10 with abstract methods getCreditCard
 </pre>
 
<h3>if we extends the abstract class must implement all method.Create number of child classes</h3> 
<pre id="codepre">
from abc import ABC,abstractmethod
class A10(ABC):
	@abstractmethod
	def getDebitCard(self,message):
		pass 
	@abstractmethod	
	def getCreditCard(self,message):
		pass 	
class B10(A10):
	def getDebitCard(self,message):
		return message
class D10(B10):
	def getCreditCard(self,message):
		return message
d1=D10()
print(d1.getDebitCard("By B10"))	
print(d1.getCreditCard("By D10"))
</pre> 
 <pre id="outputpre">
By B10
By D10
 </pre>
 <pre id="codepre">
 from abc import ABC,abstractmethod
class CalAbc:
	def __init__(self,a,b):
		print("CalAbc")
		self.a=a
		self.b=b
	@abstractmethod	
	def display(self):
			pass	
class CalImpl1(CalAbc):
	def display(self):
		return self.a+self.b 			
class CalImpl2(CalAbc):
	def display(self):
		return self.a/self.b 			
class CalImpl3(CalAbc):
	def display(self):
		return self.a*self.b 			
class CalImpl4(CalAbc):
	def display(self):
		return self.a%self.b 
print(CalImpl1(100,200).display());
print(CalImpl1(153,2).display());
print(CalImpl1(100,300).display());					
print(CalImpl1(153,2).display());
 </pre>
<pre id="outputpre">
CalAbc
300
CalAbc
155
CalAbc
400
CalAbc
155
 </pre>