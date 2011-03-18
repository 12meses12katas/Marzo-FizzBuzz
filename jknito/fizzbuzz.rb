=begin
jknito kata
=end
class Fixnum
    def isCero ( dev = 1 )
	    self % dev == 0
	end
	def isCeroAndIn( dev )
		self % dev == 0 or self.to_s.include? dev.to_s
	end
	def printNum ( msg)
	    print  self.to_s + "\t" + msg + "\n"
	end
end

def fizzbuzz ( cant=3)
	print "\n=FizzBuzz Normal=\n"
    cant.times{ |x| y=x+1
	                msg = y.to_s
	                if y.isCero(3)
					    msg = "Fizz"
					end
					if y.isCero(5)
					    msg = "Buzz"
					end
	                if y.isCero(3) and y.isCero(5)
					    msg = "FizzBuzz"
					end
					y.printNum msg
					}
end

def fizzbuzz2 ( cant=3)
	print "\n=FizzBuzz Ext=\n"
    cant.times{ |x| y=x+1
	                msg = y.to_s
					if y.isCeroAndIn(3)
					    msg = "Fizz"
					end
					if y.isCeroAndIn(5)
					    msg = "Buzz"
					end
	                if y.isCeroAndIn(3) and y.isCeroAndIn(5)
					    msg = "FizzBuzz"
					end
					y.printNum msg
					}
end

fizzbuzz  60
fizzbuzz2 60