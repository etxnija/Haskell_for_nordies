-- FizzBuzz v1
-- Experimenting with Haskell syntax
-- @author Jason Suplizio
-- Warning: Don't try this at home!

-- Int and Num types do not work. Why?
fizzFuzzBuzz :: (Integral a) => a -> String
fizzFuzzBuzz x
--  Error handling? How do you defend agains null, Nothing, undefined, etc.?
--	| (x == undefined) = "Invalid function call: Number not provided."
	| mod15 	= "FizzBuzz" 
	| mod3 		= "Fizz"							
	| mod5      = "Fuzz"
--	Unable to print the integral number
    | otherwise = ""
    where mod15 = (x `mod` 15) == 0
    	  mod3 	= (x `mod` 3)  == 0
    	  mod5 	= (x `mod` 5)  == 0 