function FizzBuzz() {
};

FizzBuzz.prototype.fizz = "Fizz";

FizzBuzz.prototype.buzz = "Buzz";

FizzBuzz.prototype.say = function(number) {
	var result = "";
	if (this.isMultipleOfThree(number) || this.containsTree(number))
		result += this.fizz;
	if (this.isMultipleOfFive(number) || this.containsFive(number))
		result += this.buzz;
	if (result.length == 0)
		result += number;
	return result;
};

FizzBuzz.prototype.isMultipleOfThree = function(number) {
	return number % 3 === 0;
};

FizzBuzz.prototype.isMultipleOfFive = function(number) {
	return number % 5 === 0;
};

FizzBuzz.prototype.containsTree = function(number) {
	return number.toString().indexOf('3') != -1;
};

FizzBuzz.prototype.containsFive = function(number) {
	return number.toString().indexOf('5') != -1;
};