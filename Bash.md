# Logical operators 

#programming #bash #operators
- **;**
  -  you can run commands without creating a new line 
``` shell
echo "hello" ; echo "there"
# this is same as 
echo "hello"
echo "there"
```

- **&&** Operator
  -  if the first command **succeseded** then run the second command
``` shell
$ true && echo "Things went well"
Things went well
```

-**||** Operator
  - if the first command **failed** then run the second command
``` shell
$ false || echo "Oops, fail"
Oops, fail
```

- **&** Operator 
  - runs the first command and then **immeadiatly** runs the second command
``` shell
$ sleep 5 & echo "all done" 
[1] 45034
all done 
# after 5 seconds
[1]  + 45034 done       sleep 5
```

``` shell
sleep 5 ; echo "all done" 
# waits 5 seconds
all done
```

``` shell
$ false || echo "Oops, fail"
Oops, fail

$ true || echo "Will not be printed"
$  

$ true && echo "Things went well"
Things went well

$ false && echo "Will not be printed"
$

$ false ; echo "This will always run"
This will always run
```
-------

# Find file in current directory recursively

#script

```shell
find . -type f -name "*.svg"
```

