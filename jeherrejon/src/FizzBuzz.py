'''
Created on 04/03/2011

@author: JE
'''

class FizzBuzz():
    '''
    FizzBuzz Class
    '''

    FIZZ = "Fizz"
    BUZZ = "Buzz"
    FIZZ_FACTOR = 3
    BUZZ_FACTOR = 5
    ZERO = 0
        
    def __init__(self):
        '''
        Empty
        '''
        pass
    
    def say(self,number):
        ret = ""
        if self.isFizzBuzz(number,self.FIZZ_FACTOR): ret+= self.FIZZ
        if self.isFizzBuzz(number,self.BUZZ_FACTOR): ret+= self.BUZZ
        if "" == ret: ret+= str(number)
        return ret
    
    
    def include(self,number,numberToInclude):
        return str(number).find(str(numberToInclude))>self.ZERO
    def isFizzBuzz(self,number,factor):
        return number%factor==self.ZERO or self.include(number,factor)

    
def main():
    fizzBuzz = FizzBuzz()
    for i in range(1,101):
        print fizzBuzz.fizzbuzz(i)
        
if __name__=='__main__': main()