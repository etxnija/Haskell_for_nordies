fizzBuzz :: Int -> String
fizzBuzz x 
	| modthree && modfive = "fizzBuzz"
	| modthree = "fizz"
	| modfive = "buzz"
	| otherwise  = show x
	where 	modthree = (mod x 3 == 0);
			modfive = (mod x 5 == 0)