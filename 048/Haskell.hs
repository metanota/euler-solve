import Data.List (foldl')

main = do
       print $ flip mod (10^10) $ foldl' (\acc x -> acc + x^x) 1 [2..1000]
