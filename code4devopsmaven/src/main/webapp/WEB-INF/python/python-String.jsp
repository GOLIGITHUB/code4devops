<p>in python string define double qute or single qoute and modification are not allowed</p>
<pre id="codepre">
def getstring(fname,lname):
	print(fname," ",lname)
	print(type(fname)," ",type(lname))
getstring("annu",'ashu')
</pre>

<p><strong>String with positive indexing</strong></p>
<pre id="codepre">
#ev  -8-7-6-5-4-3-2-1
#     ashutosh
#pv  0 1 2 3 4 5 6 7
def getstring(name):
	print("name[2]   :",name[2])
	print("name[2:4] :",name[2:4])
	print("name[2:4:2] :",name[2:4:2])
	print("name[2:]  :",name[2:])
	print("name[:4]  :",name[:4])
	#print("name[10] :",name[10])#IndexError: string index out of range
	#print("name[]   :",name[])#SyntaxError: invalid syntax
getstring("ashutosh")		
</pre>

<p><strong>String with negative indexing</strong></p>

<pre id="codepre">
#ev  -8-7-6-5-4-3-2-1
#     ashutosh
#pv  0 1 2 3 4 5 6 7
def getstring(name):
	print("name[-3]    :",name[-3])
	print("name[-3:-5] :",name[-3:-5])#blank and no error
	print("name[-5:-3] :",name[-5:-3])
	print("name[:-3]   :",name[:-3])
	print("name[-5:]   :",name[-5:])
	print("name[:]     :",name[:])
	print("name[5:-3]  :",name[5:-3])
	print("name[:-3]   :",name[:-3])
	#print("name[:-8]   :",name[8])#IndexError: string index out of range
getstring("ashutosh")
</pre>

<pre id="codepre">
def getstring(name):
	print(len(name))
	print(name.strip())#remove left and right space in python
	print(len(name.strip()))
getstring("    ashutosh   ")	
</pre>

<pre id="codepre">
def getstring(name):
	print(name.lstrip("@"))
	print(name.rstrip("#"))
	print(name.rstrip("#").lstrip("@"))
getstring("@@@@@@@@@@@@@ashutosh########")	
</pre>

<pre id="codepre">
	id() : print the memory address
	is , is not : memory comparison : return boolean
	== , != : data comparison :return boolean
	in , not in : check data available or not : boolean
</pre>

<pre id="codepre">
def getstring():
	name1="annu"
	name2="ashu"
	name3="annu"

	#id() : print the memory address
	print(id(name1))
	print(id(name2))
	print(id(name3))

	l1 = [10,20,30]
	l2 = [10,20,30]
	print(id(l1))
	print(id(l2))

	#is , is not : memory comparison : return boolean
	print(name1 is name2)
	print(name1 is name3)
	print(name1 is not name2)
	print(name1 is not name3)

	#== , != : data comparison :return boolean
	print(name1 == name2)
	print(name1 == name3)
	print(name1 != name2)
	print(name1 != name3)

	#in , not in : check data available or not : boolean
	print("as" in name1)
	print("aa" not in name1)
getstring()
</pre>
<p><strong>formatting the data</strong></p>
<pre id="codepre">
	# %s string formatting {}
	# %d int formatting {}
	# %g float formatting {}

def getstring():
	empid,empname,empsal=1012,"annu",1000.45
	print("empid=%d ,empname=%s ,empsal=%g"%(empid,empname,empsal))
	print("empid={} ,empname={} ,empsal={} ".format(empid,empname,empsal))
	print("empid={0} ,empname={1} ,empsal={2}".format(empid,empname,empsal))
getstring()
</pre>
<p><strong>concat replication </strong> </p>
<pre id="codepre">
def getstring():
	s1="ashu"
	s2="annu"
	s3 = s1+s2
	print(s3)
	ss=s1*3+s2*3
	print(ss)
getstring()	
</pre>

<pre id="codepre">
def getstring():
	message="never give up"
	print("Upper Case :",message.upper())
	print("Lower :",message.lower())
	print("Capitalize :",message.capitalize())
	print("join : ","+".join(message.split()))
	print("replace : ", "+" ,message.replace("up","hello"))
getstring()
</pre>

<p><strong> relational operators  > < >= <= == != </strong></p>
<pre id="codepre">
def getstring():
	name1="ashu"
	name2="Ashu"
	print(name1 < name2)
	print(name1 > name2)
	print(name1 >= name2)
	print(name1 <= name2)
	print(name1 == name2)
	print(name1 != name2)
getstring()	
</pre>

<pre id="codepre">
def getstring():
	message="never give up"
	print("Upper Case :",message.upper())
	print("Lower :",message.lower())
	print("Capitalize :",message.capitalize())
	print("join : ","+".join(message.split()))
	print("replace : ", "+" ,message.replace("up","hello"))
getstring()
</pre>	
<pre id="codepre">
def getstring():
	message="never give up as.hu.to.sh"
	print(message.split())#default splitting character is space  
	print(message.split("."))
	message4="welcome"
	#enumerate()
	print(tuple(enumerate(message4)))
	print(list(enumerate(message4)))
getstring()	
</pre>
<pre id="codepre">
def getstring():
	message="javajava and python"
	print(message.count('a'))
	print(message.count('and'))
	print(message.count('a',2))
	print(message.count('a',2,7))
getstring()	
</pre>
<pre id="codepre">
def getstring():
	message="Never give up.welcome to java black book"
	print(message.endswith("k"))
	print(message.endswith("to",15,40))
	print(message.startswith("Never"))
	print(message.startswith("come",5,20))
getstring()	
</pre>
<pre id="codepre">
def getstring():
	message="Never give up.welcome to java black book"
	print(message.find("up"))
	print(message.find("xyz"))
	print(message.index("java"))
	print(message.index("up",5,20))
	#print(message.index("xyz"))
	print(message.swapcase())
getstring()
</pre>
<pre id="codepre">
def getstring():
	message1="Welcome to java black book"
	print(message1.isalnum())
	message2="java123"
	print(message2.isalnum())
	message3="HELLOJAVA"
	print(message3.isalpha())
	message4="python3.7"
	print(message4.isalpha())
	message5="python"
	print(message5.isdigit())
	message6="12143243243242"
	print(message6.isdigit())
getstring()	
</pre>
<pre id="codepre">
def getstring():
	message1="javablackbook"
	print(message1.islower())
	message2="JavaBlackBook"
	print(message2.islower())
	message3="javablackbook"
	print(message3.isupper())
	message4="JAVABLACKBOOK"
	print(message4.isupper())
	message5="Welcome to jbb"
	print(message5.isspace())
	message6=" "
	print(message6.isspace())
getstring()	
</pre>
