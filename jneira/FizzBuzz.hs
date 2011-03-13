module FizzBuzz where
import Test.HUnit

data FizzBuzz = ConsString String 
              | ConsInt Int
              deriving (Show,Eq)

fizzbuzz :: [FizzBuzz]
fizzbuzz= map pred [1..100]
  where pred n  
          | divBy 3 && divBy 5 = ConsString "fizzbuzz"
          | divBy 3 = ConsString "fizz"
          | divBy 5 = ConsString "buzz"
          | otherwise = ConsInt n                 
            where divBy d = mod n d==0

testTrivial = TestCase $ assertEqual
              "Debe devolver el numero"
              (ConsInt 1) (fizzbuzz !! 0)

testFizz = TestCase $ assertEqual
           "Debe devolver fizz si el numero es divisible por 3"
           (ConsString "fizz") (fizzbuzz !! 2)
           
testBuzz = TestCase $ assertEqual
           "Debe devolver buzz si el numero es divisible por 5"
           (ConsString "buzz") (fizzbuzz !! 4)
           
testFizzBuzz = TestCase $ assertEqual
           "Debe devolver fizzbuzz si el numero es divisible por 5 y 3"
           (ConsString "fizzbuzz") (fizzbuzz !! 14)
           
main= runTestTT $ TestList [testTrivial,testFizz,testBuzz,testFizzBuzz]
