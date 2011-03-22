
#!/bin/bash

for i in {1..100}
do
 F=0
 B=0
 if [ $(expr $i % 3) -eq 0 ] || [ $(echo $i | grep 3) ]; then
   F=1
 fi
 if [ $(expr $i % 5) -eq 0 ] || [ $(echo $i | grep 5) ]; then
   B=1
 fi

 case $F in
   0) if [ $B -eq 1 ]; then
        echo "Buzz"
      else
        echo $i
      fi
      ;;

   1) if [ $B -eq 1 ]; then
        echo "FizzBuzz"
      else
        echo "Fizz"
      fi
      ;;
 
 esac
done
