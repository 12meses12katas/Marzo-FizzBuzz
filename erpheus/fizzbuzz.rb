def fizzbuzz(limit, mode)
    n=1
    m3=1
    m5=1
    limit.times do
        result=""
        if mode==1
        if m3==3 or m5==5
            if m3==3
                result+="fizz"
                m3=0
            end
            if m5==5
                result+="buzz"
                m5=0
            end
        else
           result=n.to_s
        end
        elsif mode==0
        if m3==3 or m5==5 or n.to_s.include?("3") or n.to_s.include?("5")
            if m3==3 or n.to_s.include?("3")
                result+="fizz"
                if m3==3
                    m3=0
                end
            end
            if m5==5 or n.to_s.include?("5")
                result+="buzz"
                if m5==5
                    m5=0
                end
            end
        else
           result=n.to_s
        end
            
        end
        puts n.to_s+": "+result
        n+=1
        m3+=1
        m5+=1
    end
end

fizzbuzz(100, 1)
fizzbuzz(100, 0)
