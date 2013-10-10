import Data.HashMap

-- Find in hash
findInHash :: (Eq k, Hashable k) => k -> HashMap k a -> Maybe v
findInHash _  h
	| HashMap.null h = Nothing
