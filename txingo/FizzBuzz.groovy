
class FizzBuzz {
    
    String compute(int number){
        def fizzbuzz = ""
        if(number % 3 == 0)
            fizzbuzz += "Fizz"
        if(number % 5 == 0)
            fizzbuzz += "Buzz"
        
        fizzbuzz.count == 0 ? number.toString() : fizzbuzz
    }
    
    
    static main(args) {
        def app = new FizzBuzz()
        
        (1..100).each { println app.compute(it) }
    }
}
