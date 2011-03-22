unit uFizzBuzzTest;

interface

Uses
  TestFramework,
  GUITesting;

type

  FizzBuzz_Spec = class(TGUITestCase)
  private
    procedure CheckFizz(n: integer; val: string); overload;
    procedure CheckFizz(msg: string; n: integer; val: string); overload;
  published
    procedure WhenNumber_ThenNumber;
    procedure WhenNumberIsMultipleOf3_ThenFizz;
    procedure WhenNumberIsMultipleOf5_ThenBuzz;
    procedure WhenNumberHas3_ThenFizz;
    procedure WhenNumberHas5_ThenBuzz;
    procedure WhenNumberIsFizzAndBuzz_ThenFizzBuzz;
  end;

implementation

uses
  sysutils,
  uFizzBuzz;

procedure FizzBuzz_Spec.CheckFizz(n: integer; val: string);
begin
  CheckEquals(val, FizzBuzz(n), 'Fizz('+IntToStr(n)+')');
end;

procedure FizzBuzz_Spec.CheckFizz(msg: string; n: integer; val: string);
begin
  CheckEquals(val, FizzBuzz(n), Msg + ' Fizz('+IntToStr(n)+')');
end;

procedure FizzBuzz_Spec.WhenNumber_ThenNumber;
begin
  CheckFizz('it will say the given number', 1, '1');
  CheckFizz(2, '2');
  CheckFizz(4, '4');
end;

procedure FizzBuzz_Spec.WhenNumberIsMultipleOf3_ThenFizz;
var
  msg: string;
begin
  msg := 'it will say Fizz when the number is multiple of 3';
  CheckFizz(msg, 3, 'Fizz');
  CheckFizz(6, 'Fizz');
  CheckFizz(9, 'Fizz');
end;

procedure FizzBuzz_Spec.WhenNumberIsMultipleOf5_ThenBuzz;
begin
  CheckFizz( 5, 'Buzz');
  CheckFizz(10, 'Buzz');
  CheckFizz(20, 'Buzz');
end;

procedure FizzBuzz_Spec.WhenNumberHas3_ThenFizz;
begin
  CheckFizz(13, 'Fizz');
  CheckFizz(23, 'Fizz');
  CheckFizz(31, 'Fizz');
end;

procedure FizzBuzz_Spec.WhenNumberHas5_ThenBuzz;
begin
  CheckFizz(56, 'Buzz');
end;

procedure FizzBuzz_Spec.WhenNumberIsFizzAndBuzz_ThenFizzBuzz;
begin
  CheckFizz(15, 'FizzBuzz');
  CheckFizz(30, 'FizzBuzz');
  CheckFizz(45, 'FizzBuzz');
  CheckFizz(53, 'FizzBuzz');
end;

initialization
  TestFramework.RegisterTest('', FizzBuzz_Spec.Suite);
end.
