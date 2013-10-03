maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maxumum of empty list"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
	| n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
	let smallerOREqual = [a | a <- xs, a <= x]; 
		larger = [a | a <- xs, a > x]
	in quicksort smallerOREqual ++ [x] ++ quicksort larger


isUpper :: Char -> Bool
isUpper = (`elem` ['A'..'Z'])

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f ( f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

largeestDivisable :: Integer
largeestDivisable = head (filter p [100000,99999..])
	where p x = x `mod` 3829 == 0


reverse1 :: [a] -> [a]
reverse1 [] = []
reverse1 (x:xs) = (reverse1 xs) ++ [x]
 