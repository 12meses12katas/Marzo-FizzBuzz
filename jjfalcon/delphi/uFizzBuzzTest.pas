unit uFizzBuzzTest;

interface

Uses
  TestFramework,
  GUITesting;

type

  Test_FizzBuzz = class(TGUITestCase)
  published
    procedure fb_1_is_1;
    procedure fb_2_is_2;
    procedure fb_3_is_Fizz;
    procedure fb_4_is_4;
    procedure fb_5_is_Buzz;
    procedure fb_6_is_Fizz;
    procedure fb_13_is_Fizz;
    procedure fb_15_is_Fizz;
    procedure fb_53_is_FizzBuzz;
    procedure fb_56_is_Buzz;
    procedure fb_100_is_Buzz;
  end;

implementation

uses
  uFizzBuzz;

procedure Test_FizzBuzz.fb_1_is_1;
begin
  CheckEquals('1', FizzBuzz(1));
end;

procedure Test_FizzBuzz.fb_2_is_2;
begin
  CheckEquals('2', FizzBuzz(2));
end;

procedure Test_FizzBuzz.fb_3_is_Fizz;
begin
  CheckEquals('Fizz', FizzBuzz(3));
end;

procedure Test_FizzBuzz.fb_4_is_4;
begin
  CheckEquals('4', FizzBuzz(4));
end;

procedure Test_FizzBuzz.fb_5_is_Buzz;
begin
  CheckEquals('Buzz', FizzBuzz(5));
end;

procedure Test_FizzBuzz.fb_6_is_Fizz;
begin
  CheckEquals('Fizz', FizzBuzz(6));
end;

procedure Test_FizzBuzz.fb_13_is_Fizz;
begin
  CheckEquals('Fizz', FizzBuzz(13));
end;

procedure Test_FizzBuzz.fb_15_is_Fizz;
begin
  CheckEquals('FizzBuzz', FizzBuzz(15));
end;

procedure Test_FizzBuzz.fb_53_is_FizzBuzz;
begin
  CheckEquals('FizzBuzz', FizzBuzz(53));
end;

procedure Test_FizzBuzz.fb_56_is_Buzz;
begin
  CheckEquals('Buzz', FizzBuzz(56));
end;

procedure Test_FizzBuzz.fb_100_is_Buzz;
begin
  CheckEquals('Buzz', FizzBuzz(100));
end;

initialization
  TestFramework.RegisterTest('', Test_FizzBuzz.Suite);
end.
