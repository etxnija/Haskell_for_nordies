import Network.HTTP.Conduit
import qualified Data.ByteString.Lazy as L

main = simpleHttp "http://api.flickr.com/services/rest/?method=flickr.people.getPhotos&api_key=c10966a1dcaa457689948e1e354d2540&user_id=40386806%40N02&format=json&nojsoncallback=1" >>= L.putStr