myGCD :: Int -> Int => Int
myGCD a 0 = a
myGCD a b = myGCD b (mod a b)

--myGCD' :: Int -> Int => Int
--myGCD' 0 a = a
--myGCD' a 0 = a
--myGCD' a (b==a) = 1
--myGCD' ((mod a 2) == 0) ((mod b 2) == 0) =  2 * (myGCD' a/2 b/2)
--myGCD' ((mod a 2) == 0) b = myGCD' a/2 b
--myGCD' a ((mod b 2) == 0) = myGCD' a b/2
-- at this point, both values have to be odd.
--myGCD' a b  = if a >= b then myGCD' (a-b)/2 b else myGCD' (b-a)/2 a