#Python try
# aesptux

for i in range(1,100):
    mod3 = i % 3
    mod5 = i % 5
    
    if mod3 == 0 and mod5 == 0:
        print("FizzBuzz")
    elif mod5 == 0:
        print("Buzz")
    elif mod3 == 0:
        print("Fizz")
    else:
        print(i)
    