import List

isDiv x y | mod x y == 0 = True
          | mod x y /= 0 = False

fizzbuzz x
  | isDiv x 15 = "FizzBuzz"
  | isDiv x 3 = "Fizz"
  | isDiv x 5 = "Buzz"
  | otherwise = show x

main = do putStr $ concat $ intersperse "\n" $ map fizzbuzz [1..100]
