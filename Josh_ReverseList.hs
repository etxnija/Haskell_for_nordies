-- Josh_ReverseList.hs
-- Given a list of elements, returns the list in reverse.


-- This is the kind of efficiency that earns me the medium dollars.
reverseListEZ :: [a] -> [a]
reverseListEZ list = reverse list


reverseList :: [a] -> [a]
-- Given an empty list, return an empty list.
-- This pattern match serves as the recursion terminator.
reverseList [] = []
{-
(x:xs) binds the first element in the list to x, and the rest of the list to xs.
In other words, x = head, xs = tail.
In a singleton list, x = singleton, xs = empty list.

Thus, given a list, we recurse using the tail as input until the tail is an empty list,
which triggers the first pattern match and terminates recursion.

The output of each recursion is the tail (reversed),
to which the head (at the level that initiated the recursive call) is appended.
-}
reverseList (x:xs) = reverseList xs ++ [x]