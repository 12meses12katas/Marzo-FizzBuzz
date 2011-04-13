1 to: 100 do: [:i |
  ((i \\ 3 = 0) & (i \\ 5 = 0))
    ifTrue: [ 'FizzBuzz?' displayNl ]
    ifFalse: [
  (i \\ 3 = 0)
    ifTrue: [ 'Fizz' displayNl ]
    ifFalse: [
  (i \\ 5 = 0)
    ifTrue: [ 'Buzz' displayNl ]
    ifFalse: [ i displayNl ]]].
]

