#
# You need to run ruby 1.9.2
#

class Fixnum

  def say_fizz_buzz
    self.switch(
        fizz_buzz?: -> { "FizzBuzz" },
        fizz?: -> { "Fizz" },
        buzz?: -> { "Buzz" },
        Default: -> { self }
    )
  end

  def fizz_buzz?
    fizz? && buzz?
  end

  def fizz?
    self % 3 == 0 || self.to_s.include?("3")
  end

  def buzz?
    self % 5 == 0 || self.to_s.include?("5")
  end

end

# http://mlomnicki.com/ruby/tricks-and-quirks/2011/02/10/ruby-tricks2.html
# https://gist.github.com/823701

class Object
  def switch( hash )
    hash.each do |method, proc|
      return proc[] if method == :Default || send( method )
    end
  end
end
