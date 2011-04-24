class FizzBuzz

    def Count
        (1..100).each do |n| 
            if n%3 == 0 and n%5 == 0 then
                puts "FizzBuzz"
            elsif isSomething?(n,3) then
                puts "Fizz"
            elsif isSomething?(n,5) then
                puts "Buzz"
            else
                puts "#{n}"
            end
        end 
    end

    def isSomething? (n, mod)
        if n%mod == 0 then 
            return true if n.to_s =~ /#{mod.to_s}/
        end

        return false
    end

end
