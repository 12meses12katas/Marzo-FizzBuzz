
class FizzBuzz {
    
    def compute(def number){
        def fizzbuzz = ""
        if(isFizz(number))
            fizzbuzz += "Fizz"
        if(isBuzz(number))
            fizzbuzz += "Buzz"
        
        fizzbuzz.count == 0 ? number.toString() : fizzbuzz
    }
    
    private def isFizz(def number){
        isDivisibleBy (number, 3) || containsDigit (number, "3")
    }
    
    private def isBuzz(def number){
        isDivisibleBy (number, 5) || containsDigit (number, "5")
    }
    
    private def isDivisibleBy(def number, def n){
        number % n == 0
    }
    
    private boolean containsDigit(def number, def digit){
        number.toString().contains(digit)
    }
    
    static main(args) {
        def app = new FizzBuzz()
        
        (1..100).each { println app.compute(it) }
    }
}
