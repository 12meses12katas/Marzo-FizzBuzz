fizzbuzz :: Int -> String
fizzbuzz x =
	let	cond x y palabra
			| x `mod` y == 0 || show y !! 0 `elem` show x = palabra
			| otherwise = ""
		str = cond x 3 "Fizz" ++ cond x 5 "Buzz"
	in (if str=="" then show x else str)
	
main = do
	putStrLn $ foldl (\acc x -> acc ++ fizzbuzz x ++ "\n") "" [1..100]