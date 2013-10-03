-- this is a comment
myReverse :: [a] -> [a]
-- This is a recursive way to think about list reversal.
myReverse xs = if null xs  then [] else (last xs) : myReverse (init xs)
-- this is the real-world, practical way to do it: Use the built-in function.
myReverse' xs = reverse xs