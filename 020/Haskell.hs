import Data.Char (digitToInt)

main = do
       print $ sum $ map digitToInt $ show $ product [1..100]
