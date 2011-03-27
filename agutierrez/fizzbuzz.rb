 class Fizzbuzz

   Delimiter = " "

   def initialize(rule_set = 1)
     @rule_set = rule_set
   end

   def list(number)

     return nil if number == 0
     @kata = ""
     if @rule_set == 1
       1.upto(number) do |counter|
         @kata += counter == 1 ? counter.to_s : Delimiter + eval_rules1(counter)
       end
     else
       1.upto(number) do |counter|
         @kata += counter == 1 ? counter.to_s : Delimiter + eval_rules2(counter)
       end
     end
     return @kata
   end # list

   private

   def eval_rules1(number)

     return "fizzbuzz" if number.modulo(15) == 0
     return "fizz" if number.modulo(3) == 0
     return "buzz" if number.modulo(5) == 0
     return number.to_s
   end # eval_rules1

   def eval_rules2(number)

     return "fizzbuzz" if number.modulo(15) == 0 && !number.to_s.index("5")
     return "fizz" if number.modulo(3) == 0 || number.to_s.index("3")
     return "buzz" if number.modulo(5) == 0 || number.to_s.index("5")
     return number.to_s
   end

 end # kata