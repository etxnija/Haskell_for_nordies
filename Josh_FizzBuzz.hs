-- FizzBuzz.hs
-- Given a range of integers:
--		Returns "Fizz" if an integer is divisible by 3
--		Returns "Buzz" if an integer is divisible by 5
--		Returns "FizzBuzz" if an integer is divisible by both 3 AND 5
--      Else returns the integer (as a string)

fizzbuzz fb = [ if x `mod` 15 == 0
					then "FizzBuzz"
				else if x `mod` 5 == 0 
					then "Buzz"
				else if x `mod` 3 == 0
				 	then "Fizz"
				else
					 show x | x <- fb ]