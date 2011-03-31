describe("FizzBuzz", function() {
	var fizzBuzz;
	
	beforeEach(function() {
		fizzBuzz = new FizzBuzz();

	  });
	
	it('should return number', function() {
		expect(fizzBuzz.say(2)).toEqual('2');
		expect(fizzBuzz.say(4)).toEqual('4');
		expect(fizzBuzz.say(7)).toEqual('7');
		expect(fizzBuzz.say(19)).toEqual('19');
	});
	
	it('should return Fizz', function() {
		expect(fizzBuzz.say(3)).toEqual('Fizz');
		expect(fizzBuzz.say(13)).toEqual('Fizz');
		expect(fizzBuzz.say(18)).toEqual('Fizz');
		expect(fizzBuzz.say(96)).toEqual('Fizz');
	});

	it('should return Buzz', function() {
		expect(fizzBuzz.say(5)).toEqual('Buzz');
		expect(fizzBuzz.say(20)).toEqual('Buzz');
		expect(fizzBuzz.say(95)).toEqual('Buzz');
		expect(fizzBuzz.say(100)).toEqual('Buzz');
	});

	it('should return FizzBuzz', function() {
		expect(fizzBuzz.say(15)).toEqual('FizzBuzz');
		expect(fizzBuzz.say(35)).toEqual('FizzBuzz');
		expect(fizzBuzz.say(54)).toEqual('FizzBuzz');
		expect(fizzBuzz.say(75)).toEqual('FizzBuzz');
		expect(fizzBuzz.say(90)).toEqual('FizzBuzz');
	});
	
	for ( var x = 0; x < 101; x++) {
		console.log(fizzBuzz.say(x));
	}

});