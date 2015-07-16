class Fizzbuzz


	
	def convertir(numero)
		@resultado=""
		@residuox3=0
        @residuox5=0
    

        residuox3=numero%3
        residuox5=numero%5
       
	
		if residuox3>0 and residuox5>0
			if numero.to_s().include?("5")
        	    @resultado = "buzz"	
            elsif numero.to_s().include?("3")
        	   @resultado = "fizz"
        	else   
			   @resultado = numero.to_s()
		    end
	    elsif residuox3==0 and residuox5==0
	    	@resultado = "fizzbuzz"	
	    elsif residuox3==0	
	    	@resultado = "fizz"	
	    elsif residuox5==0	
	    	@resultado = "buzz"	
	    end		

	    return @resultado
	end	

end