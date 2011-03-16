unit uFizzBuzz;

interface

function FizzBuzz(n: integer): string;

implementation

uses
  sysutils;

function isDigitInNumber(digit, inNumber: integer): boolean;
begin
  result := Pos(IntToStr(digit), IntToStr(inNumber)) <> 0;
end;

function isDivisible(dividend, divisor: integer): boolean;
begin
  result := ((dividend mod divisor) = 0);
end;

function isFizz(n: integer): boolean;
begin
  result := isDivisible(n,3) or isDigitInNumber(3,n);
end;

function isBuzz(n: integer): boolean;
begin
  result := isDivisible(n,5) or isDigitInNumber(5,n)
end;

function isFizzBuzz(n: integer): boolean;
begin
  result := isFizz(n) and isBuzz(n);
end;

function FizzBuzz(n: integer): string;
begin
  result := IntToStr(n);
  if isFizz(n)  then result := 'Fizz';
  if isBuzz(n)  then result := 'Buzz';
  if isFizzBuzz(n) then result := 'FizzBuzz';
end;

end.
