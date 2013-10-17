import qualified Data.Map as Map

--data MyValues = StringValue String | MapValue (Map.Map String MyValues) deriving (Show)
--stringValue :: MyValues -> String
--stringValue (StringValue value) = value

--theMapValue :: MyValues -> (Map.Map String MyValues) 
--theMapValue (MapValue map) = map

data MyValues = StringValue {valueString :: String} | MapValue {valueMap :: (Map.Map String MyValues)} deriving (Show)

-- Find in hash
--findInHash :: (Eq k, Hashable k, MyValues a) => k -> Map.Map k a -> Maybe v
--findInHash _  h
--	| Map.Map.null h = Nothing
