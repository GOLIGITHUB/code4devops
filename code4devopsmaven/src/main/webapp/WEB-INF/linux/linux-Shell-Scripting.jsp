#!/bin/bash
echo "welcome to Linux"
echo "Please Enter your new password"
read newpassword
echo "Please Enter your re-password"
read repassword
# string compare
if [ $newpassword == $repassword ];
then
        echo 'GooD JoB'
else
        echo 'Sorry Boss'
fi
<pre>
#!/bin/bash
echo "welcome to Linux"
echo "Please Enter your new password"
read newpassword
echo "Please Enter your re-password"
read repassword
if [ $newpassword != $repassword ];
then
        echo 'GooD JoB'
else
        echo 'Sorry Boss'
fi
</pre>


<pre>
tmp=$ [ 123 -eq 123 ]
echo $?
#echo $ [ 123 -eq 234 ]; $?
tmp2=$ [ 223 -ne 345 ]
echo $?

</pre>

<pre>
#!/bin/bash
echo "Enter the number :"
read num
tmp=$(( $num % 2 ))
if [ $tmp -eq 0 ]
then
        echo "Even Number"
else
        echo "Odd Numer"        
fi
</pre>
<pre>
#!/bin/bash
value=$(systemctl is-active sshd)
echo $value
if [ $value == active ];
then

        $(systemctl stop sshd )
        echo "Successfully Stop"

else
        $(systemctl start sshd )
        echo "Successfully Start"
fi

</pre>
<pre>
#!/bin/bash
for TMP in host1 host2 host3 host4 host5 host6;
do
        echo $TMP
done
echo "========================================"
for TMP in host{1..6};
do
        echo $TMP
done
echo "===============Horizontal Display========================"
for TMP in "$*"
do
        echo $TMP
done
echo "==============Vertical display========================"
for TMP in "$@"
do
        echo $TMP
done

</pre>
<pre>
./command.sh ashu aman arun momo annu 
</pre>

<pre>
#!/bin/bash
while true;#outer loop
do
        var=1
        while [[ var -lt 800000 ]];#inner loop
        do
                var=$(($var+1))
                echo $var
        done
        sleep 1
done
</pre>
