module FizzBuzz where
import Test.HUnit

data FizzBuzz = ConsString String 
              | ConsInt Int
              deriving (Show,Eq)

fizzbuzz :: [FizzBuzz]
fizzbuzz= map pred [1..100]
  where pred n  
          | divByOrHas 3 && divByOrHas 5 = ConsString "fizzbuzz"
          | divByOrHas 3 = ConsString "fizz"
          | divByOrHas 5 = ConsString "buzz"
          | otherwise = ConsInt n                 
            where divByOrHas d = 
                    let (dec,unid)=(div n 10,mod n 10) in
                    mod n d==0 ||
                    unid == d || dec == d
                    
                    
testTrivial = TestCase $ assertEqual
              "Debe devolver el numero"
              (ConsInt 1) (fizzbuzz !! 0)

testFizz = TestCase $ do
  assertEqual
    "Debe devolver fizz si el numero es divisible por 3"
    (ConsString "fizz") (fizzbuzz !! 2)
  assertEqual    
    "...o si el numero contiene un 3"
    (ConsString "fizz") (fizzbuzz !! 12)
    
testBuzz = TestCase $ do
  assertEqual
    "Debe devolver buzz si el numero es divisible por 5"
    (ConsString "buzz") (fizzbuzz !! 4)
  assertEqual
    "tambien si el numero contiene un 5"
    (ConsString "buzz") (fizzbuzz !! 51)
    
testFizzBuzz = TestCase $ do 
  assertEqual
    "Debe devolver fizzbuzz si el numero es divisible por 5 y 3"
    (ConsString "fizzbuzz") (fizzbuzz !! 14)
  assertEqual
    "o si tiene un 5 y un 3"
    (ConsString "fizzbuzz") (fizzbuzz !! 34)
           
main= runTestTT $ TestList [testTrivial,testFizz,testBuzz,testFizzBuzz]