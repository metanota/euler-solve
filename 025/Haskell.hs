import Data.List  (findIndex)
import Data.Maybe (fromJust)

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

main = do
       print $ fromJust $ findIndex (\x -> 1000 == length (show x)) $ tail fibs
