import qualified Data.Map as Map
import qualified Data.Set as Set
import qualified Data.Maybe as Maybe

--data MyValues = StringValue String | MapValue (Map.Map String MyValues) deriving (Show)
--stringValue :: MyValues -> String
--stringValue (StringValue value) = value

--theMapValue :: MyValues -> (Map.Map String MyValues) 
--theMapValue (MapValue map) = map

data MyValues = StringValue {valueString :: String} | MapValue {valueMap :: (Map.Map String MyValues)} deriving (Show)

-- Find in hash
--findInMap :: (Eq k) => k -> Map.Map k a -> Maybe v
--findInMap _ h
--	| Map.null h = Nothing;
--pullOutMap :: MapValue -> (Map.Map String MyValues)
--pullOutMap () 

someStringValue = StringValue "theValue"
singelton = 	Map.singleton "one" someStringValue
someStringValue1 = StringValue "theValue1"
two = MapValue singelton	
mapmap = 	Map.fromList  [("one1", someStringValue1),("2", two)]
mapValueMap = MapValue mapmap


findInMap :: String -> MyValues -> Maybe String
findInMap _ (StringValue v) = Just v
findInMap kk	 (MapValue  m) 	
	| Map.member kk m = Just $ valueString $ Maybe.fromJust $ Map.lookup kk m
	| otherwise = overList kk $ Map.toList m
	where overList kkk ((k3, v3):rest) = findInMap kkk v3
--	where overList kkk ((k3, v3):rest) = findInMap kkk $ MapValue $ Map.fromList rest





