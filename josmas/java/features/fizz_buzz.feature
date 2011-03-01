Feature: fizz buzz
  In order to avoid embarrasment in front of my whole class
  As a student who is bad with numbers
  I want to print out a list of numbers from 1 to 100 with fizzes and buzzes 

  Scenario: fizzing multiples of 3
    Given My turn is on number 99 
    Then I need to say fizz instead of the number

  Scenario: buzzing multiples of 5
    Given My turn is on number 55
    Then I need to say buzz instead of the number

  Scenario: fizzbuzzing multiples of 3 and 5
    Given My turn is on number 15
    Then I need to say fizzbuzz instead of the number

  Scenario: fizzing numbers with a 3 in them
    Given My turn is on number 37
    Then I need to say fizz instead of the number

  Scenario: buzzing numbers with a 58 in them
    Given My turn is on number 58
    Then I need to say buzz instead of the number
    
  Scenario: buzzing numbers with a 5 in them
    Given My turn is on number 51
    Then I need to say fizzbuzz instead of the number
        
#TODO this is shouting for tabular data!!! Look up how to do it.
