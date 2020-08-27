<pre>
useradd type here user name
passwd  type here user password
usermod -c "User Name" username
</pre>

<pre>
cat /etc/passwd or tail /etc/passwd or tail -5 /etc/passwd
cat /etc/group or  tail /etc/group or  tail -5 /etc/group
cat /etc/shadow or tail /etc/shadow or tail -5 /etc/shadow
cat /etc/gshadow or tail /etc/gshadow or tail -5 /etc/gshadow
</pre>

<pre>
cat /etc/passwd or  head /etc/passwd or head -5 /etc/passwd
cat /etc/group  or  head /etc/group or  head -5 /etc/group
cat /etc/shadow or  head /etc/shadow or  head -5 /etc/shadow
cat /etc/gshadow or head /etc/gshadow or  head -5 /etc/gshadow
cd /etc/skel
ll or ll -a
cd /home/username
userdel username
cd /home/username
</pre>

<pre>
groupadd groupname
cat /etc/group => tail -5 /etc/group
usermod -a -G groupname ashu
usermod -a -G groupname aman
usermod -a -G groupname arun
tail /etc/group
groupdel groupname
groupdel -r username
[root@localhost ashu]$ chage -l ashu
</pre>

<pre>
-m (min day)
-M (max day)
-W (warn day) 
-I (inactive)
</pre>

<pre>
[root@localhost ashu]$ chage -m 2 -M 30 -W 3 -I(capital) 5 username
[root@localhost ashu]$ passwd
[root@localhost ashu]$ chage -E 2017-12-31 username or chage -E YYY-DD-MM username
[root@localhost ashu]$ chage -l username
[root@localhost ashu]$ ll /etc/login.defs
[root@localhost ashu]$ vim /etc/login.defs
</pre>


<pre>
 r=read permission = 4
 w=write permission = 2
 x=execute permission = 1
 -=no permission
 
 owner group  other
 </pre>
 
 <pre>
 	mode
 	1-absolute mode (number)
 	2-symbolic mode
 	
 	chmod permission filename
 	Stands for change mode
 	Using the command, We can set permission (read,write,executed) on a file/directory for the
 	owner,group,and the world 
 </pre>
 <table border="1">
 <tr>
 	<th>Number</th>
 	<th>Permission Type</th>
 	<th>Symbol</th>
 </tr>
 <tr>
 	<td>0</td>
 	<td>No Permission</td>
 	<td>---</td>
 </tr>
 <tr>
 	<td>1</td>
 	<td>execute</td>
 	<td>---</td>
 </tr>
 <tr>
 	<td>2</td>
 	<td>write</td>
 	<td>-w-</td>
 </tr>
 <tr>
 	<td>3</td>
 	<td>execute+write</td>
 	<td>-wx</td>
 </tr>
 <tr>
 	<td>4</td>
 	<td>Read</td>
 	<td>r--</td>
 </tr>
 <tr>
 	<td>5</td>
 	<td>read+execute</td>
 	<td>r-x</td>
 </tr>
 <tr>
 	<td>6</td>
 	<td>Read+write</td>
 	<td>rw-</td>
 </tr>
 <tr>
 	<td>7</td>
 	<td>read+write+execute</td>
 	<td>rwx</td>
 </tr>
 </table>

<h4>Symbolic Mode Change Permissions for a Specific Owner</h4>
<table border="1">
  <tr>
    <th>Operator</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>+</td>
    <td>Adds a permission to file or directory</td>
  </tr>
  <tr>
    <td>-</td>
    <td>remove permission</td>
  </tr>
  <tr>
    <td>=</td>
    <td>sets the permission and overrides the permissions set earlier</td>
  </tr>
</table>



<pre>
[root@localhost ashu]$ groups
[root@localhost ashu]$ chmod  u=rwx, g=rwx, o=rwx  foldername 
[root@localhost ashu]$ chmod  u=rwx, g=rwx, o-rwx  foldername 
[root@localhost ashu]$ chgrp groupname /foldername/
[root@localhost ashu]$ chown username /foldername/
[root@localhost ashu]$ chown username.groupname /ashu/
[root@localhost ashu]$ chown username:groupname /ashu/
</pre>

<pre>
[root@localhost ashu]$ chmod  777  foldername
[root@localhost ashu]$ chmod  770  foldername
[root@localhost ashu]$ chmod  -R 770  foldername( recursive sub direct also)
</pre>

<pre>
[root@localhost ashu]$ umask (0002)
[root@localhost ashu]$ default 666-002=664
[root@localhost ashu]$ umask 000
[root@localhost ashu]$ cat .bash_history
[root@localhost ashu]$ vim .bashrc(alias cls=clear and umask 066) (:Wq!) (:q!)
[O]pen Read-Only, (E)dit anyway, (R)ecover, (D)elete it, (Q)uit, (A)bort:
ctrl+n
ll /etc/bashrc(global configuration mode)
ll /etc/profile
</pre>


 