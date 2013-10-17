import Data.Char
import qualified Data.Map as Map

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


--numLongChains :: Int 
--numLongChains = length (filter (\ xs -> length xs > 15) (map chain [1.. 100]))

sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc +x) 0 xs

encode :: Int -> String -> String
encode offset msg = map (\c -> chr  $ ord c + offset) msg

decode :: Int -> String -> String 
decode shift msg = encode (negate shift) msg

string2digits :: String -> [Int] 
string2digits = map digitToInt . filter isDigit

myHash :: Map.Map String (Map.Map String String)
myHash = Map.fromList $ 
	[
		("one", Map.fromList $ [("two", "two")]),
		("oneTwo", Map.fromList $ []),
		("oneThree", Map.fromList $ [("three", "three")])
	]

