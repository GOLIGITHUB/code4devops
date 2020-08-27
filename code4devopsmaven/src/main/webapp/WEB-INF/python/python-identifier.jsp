<h1>What is identifier in Python ? </h1>
<p><strong>NOTE : </strong> python variable,method,class name Identifier start with small a to z , capital A to Z and _(underscor)</p>
<p><strong>NOTE : </strong> python variable,method,class name Identifier should not start with numarics  & dons'nt allow special symbols</p>
<p><strong>NOTE : </strong> python variable,method,class name Identifier is case sensitive</p>
<p><strong>NOTE : </strong> Keyword is not allow Identifer</p>
<p><strong>NOTE : </strong> python variable,method,class name Identifie no limit </p>
<p><strong>NOTE : </strong> python variable,method,class name Identifie duplicate name allow </p>

<h2>Identifier in python with example</h2>
<p><strong>Use isidentifire() fuction you check your varible name right or wrong in Pyhton</strong></p>
<pre id="codepre">
# use isidentifire() fuction you check your varible name right or wrong
print("name".isidentifier())
print("1name".isidentifier())
print("name.gmail".isidentifier())
print("name_gmail".isidentifier())
</pre>

<pre id="outputpre">
True
False
False
True
</pre>
<h1>id() and type() Function In Python</h1>
<pre id="codepre">
#id() and type() function use for implicitly value of varibale
empid=12002
empname="ashutosh"
empsalary=25.2
empstatus=True;
emp=1;
lang={"core java","Advance java","python only"}
print("Implicitly ID: ",id(empid),"Implicitly datatype: ",type(empid))
print("Implicitly ID: ",id(empname),"Implicitly datatype: ",type(empname))
print("Implicitly ID: ",id(empsalary),"Implicitly datatype: ",type(empsalary))
print("Implicitly ID: ",id(empstatus),"Implicitly datatype: ",type(empstatus))
print("Implicitly ID: ",id(emp),"Implicitly datatype: ",type(emp))
print("Implicitly ID: ",id(lang),"Implicitly datatype: ",type(lang))
</pre>

<pre id="outputpre">
<code>
Implicitly ID:  14827392 Implicitly datatype:  &lsaquo;class 'int'&rsaquo;
Implicitly ID:  15359056 Implicitly datatype:  &lsaquo;class 'str'&rsaquo;
Implicitly ID:  14824992 Implicitly datatype:  &lsaquo;class 'float'&rsaquo;
Implicitly ID:  1389297984 Implicitly datatype:&lsaquo;class 'bool'&rsaquo;
Implicitly ID:  1389422512 Implicitly datatype:&lsaquo;class 'int'&rsaquo;
Implicitly ID:  15790680 Implicitly datatype:  &lsaquo;class 'set'&rsaquo;
</code>
</pre>
<h1>What is separator in python? </h1>
<h2>How to use separator in python?</h2>
<pre id="codepre">
def getMySeparator():
	print(10,20,30,40,50,sep='%')
	print("ashu","aman","arun",sep="*")
	print(1,1,1,sep="**")
getMySeparator()	
</pre>
<pre id="outputpre">
10%20%30%40%50
ashu*aman*arun
1**1**1
</pre>
