-module(fizzbuzz).
-export([print_fizzbuzz/0]).

compute(A) when ( (A rem 15) == 0) ->
	fizzbuzz;
compute(A) when ( (A rem 3) == 0)  -> 
	fizz;
compute(A) when ( (A  rem 5) == 0) ->
	buzz;
compute(A) ->
	A.

print_aux(100) ->
	io:format("~p~n", [compute(100)]);
print_aux(N) ->
	io:format("~p~n", [compute(N)]),
	print_aux(N+1).
	
print_fizzbuzz() ->
	print_aux(1).
