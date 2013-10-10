import Data.List
-- The reverse function will reverese a list so that the first element 
-- becomes the lase and so on. 
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]


-- Compares two Ord values and return true if the first is larger or equal to the secound
comarator' :: (Ord a) => a -> a -> Bool
comarator' x y = x >= y

thequicksort' :: (Ord a) => (a -> a -> Bool) -> [a] -> [a]
thequicksort' _ [] = []
thequicksort' f (x:xs) = 
	let smallerOREqual = [a | a <- xs, f x a];
		larger = [a | a <- xs, f a x] 
	in thequicksort' f smallerOREqual ++ [x] ++ thequicksort' f larger


--largestCommonDominator :: (Integral a) => a -> a -> a
--largestCommonDominator _ 1 = 1
--largestCommonDominator 1 _ = 1
--largestCommonDominator x y = head (filter p [(m), (m -1).. ])
--	where p le = le `mod` 
range x = [x,(x-1)..1]

dominator :: (Integral a) => a -> [a]
dominator x = [y | y <- [x, (x-1)..1], y <= x, mod x y == 0]

largestCommonDominator :: (Integral a) => a -> a -> a
largestCommonDominator x y = head (Data.List.intersect (dominator y) (dominator x) )



