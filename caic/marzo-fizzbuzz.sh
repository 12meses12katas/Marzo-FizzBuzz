
#!/bin/bash

for i in {1..100}
do
 if [ $(expr $i % 3) -eq 0 ] || [ $(echo $i | grep 3) ]; then
   echo "Fizz"
 elif [ $(expr $i % 5) -eq 0 ] || [ $(echo $i | grep 5) ]; then
   echo "Buzz"
 else
   echo $i
 fi
done
