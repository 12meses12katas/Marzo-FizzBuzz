-module(fizzbuzz).
-include_lib("eunit/include/eunit.hrl").

-export([fizzbuzz_number/1, test_all/0]).

%%% --- Tests first :) ---

test_all() ->
  eunit:test(fizzbuzz).

fizz_when_multiple_of_3_test_() ->
  lists:map(
    fun(N) -> ?_assertMatch("fizz", fizzbuzz_number(N)) end,
    [3, 6, 9, 12, 18, 21, 24, 27, 33, 36, 39, 42, 48, 51, 54, 57, 63, 66, 69]
  ).

buzz_when_multiple_of_5_test_() ->
  lists:map(
    fun(N) -> ?_assertMatch("buzz", fizzbuzz_number(N)) end,
    [5, 10, 20, 25, 35, 40, 50, 55, 65, 70, 80, 85, 95, 100]
  ).

fizzbuzz_when_multiple_of_3_and_5_test_() ->
  lists:map(
    fun(N) -> ?_assertMatch("fizzbuzz?", fizzbuzz_number(N)) end,
    [15, 30, 45, 60, 75, 90]
  ).

number_as_string_when_not_multiple_of_3_or_5_test_() ->
  lists:map(
    fun({N, S}) -> ?_assertMatch(S, fizzbuzz_number(N)) end,
    [{1, "1"}, {2, "2"}, {4, "4"}, {11, "11"}, {22, "22"}, {41, "41"}]
  ).

fizz_when_has_a_3_but_not_multiple_of_3_or_5_test_() ->
  lists:map(
    fun(N) -> ?_assertMatch("fizz", fizzbuzz_number(N)) end,
    [13, 23, 31, 32, 34, 37, 38, 43, 53, 73, 83]
  ).

buzz_when_has_a_5_but_not_multiple_of_3_or_5_test_() ->
  lists:map(
    fun(N) -> ?_assertMatch("buzz", fizzbuzz_number(N)) end,
    [52, 56, 58, 59]
  ).

%%% --- Implementation ---

fizzbuzz_number(N) when N rem 3 =:= 0, N rem 5 =:= 0 -> "fizzbuzz?";
fizzbuzz_number(N) when N rem 3 =:= 0                -> "fizz";
fizzbuzz_number(N) when N rem 5 =:= 0                -> "buzz";
fizzbuzz_number(N) ->
  NDigits = digits(N),
  With3 = lists:member(3, NDigits),
  With5 = lists:member(5, NDigits),
  if
    With3 -> "fizz";
    With5 -> "buzz";
    true  -> integer_to_list(N)
  end.

digits(N) when N < 10 -> [N];
digits(N) ->
  [N rem 10 | digits(N div 10)].

%%% TODO: Printing the numbers from 1 to 100 is left as an exercise for the
%%%       reader.
