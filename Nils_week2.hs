
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


