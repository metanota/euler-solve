import Control.Applicative ((<*>))
import Data.List (maximumBy)
import Data.Ord (comparing)

generateChain 1 =  [1]
generateChain n |  even n    = (n : generateChain (n `div` 2))
                |  otherwise = (n : generateChain (3*n + 1))

main = do
       print $ maximumBy (comparing snd) $ map (\(x,y) -> (x, length y)) $ (zip <*> map (generateChain)) [1..999999]
