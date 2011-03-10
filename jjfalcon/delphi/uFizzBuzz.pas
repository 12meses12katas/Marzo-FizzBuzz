unit uFizzBuzz;

interface

function FizzBuzz(n: integer): string;

implementation

uses
  sysutils;

function Contains(digit, inNumber: integer): boolean;
begin
  result := Pos(IntToStr(digit), IntToStr(inNumber)) <> 0;
end;

function isFizz(n: integer): boolean;
begin
  result := ((n mod 3) = 0) or Contains(3,n);
end;

function isBuzz(n: integer): boolean;
begin
  result := ((n mod 5) = 0) or Contains(5,n)
end;

function FizzBuzz(n: integer): string;
begin
  result := '';
  if isFizz(n)   then result := 'Fizz';
  if isBuzz(n)   then result := result + 'Buzz';
  if result = '' then result := IntToStr(n);
end;

end.
