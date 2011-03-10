import groovy.util.GroovyTestCase;


class FizzBuzzMonkeyPatch extends GroovyTestCase {
    
    static {
        Number.metaClass.isDivisibleBy {n ->
            delegate % n == 0
        }
        
        Number.metaClass.contains {digit ->
            delegate.toString().contains (digit)
        }
        
        Number.metaClass.fizzbuzz {
            def result = ""
            if(delegate.isDivisibleBy(3) || delegate.contains("3"))
                result += "Fizz"
            if(delegate.isDivisibleBy(5) || delegate.contains("5"))
                result +="Buzz"
            
            result.empty ? delegate.toString() : result
        }
    }
    
    void test1(){ 
        assert "1" == 1.fizzbuzz();
    }
    
    void test2(){ 
        assert "2" == 2.fizzbuzz();
    }
    
    void test3(){ 
        assert "Fizz" == 3.fizzbuzz();
    }
    
    void test5(){ 
        assert "Buzz" == 5.fizzbuzz();
    }
    
    void test9(){ 
        assert "Fizz" == 9.fizzbuzz();
    }
    
    void test10(){ 
        assert "Buzz" == 10.fizzbuzz();
    }
    
    void test13(){ 
        assert "Fizz" == 13.fizzbuzz();
    }
    
    void test15(){ 
        assert "FizzBuzz" == 15.fizzbuzz();
    }
    
    void testPrint(){
        (1..100).each { println it.fizzbuzz() }
    }
}
