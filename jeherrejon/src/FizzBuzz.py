'''
Created on 04/03/2011

@author: JE
'''

class FizzBuzz():
    '''
    FizzBuzz Class
    '''


    def __init__(self):
        '''
        Empty
        '''
        pass
    
    def fizzbuzz(self,number):
        ret = ""
        if self.isFizz(number):
            ret+= "Fizz"
            if self.isBuzz(number): ret+="Buzz"
        elif self.isBuzz(number):
            ret+= "Buzz"
        else: return str(number)
        return ret
    
    def isFizz(self,number):
        return number%3==0
    def isBuzz(self,number):
        return number%5==0
    
def main():
    fizzBuzz = FizzBuzz()
    for i in range(1,101):
        print fizzBuzz.fizzbuzz(i)
        
if __name__=='__main__': main()