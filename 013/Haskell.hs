main = do
       input <- readFile "input.txt"
       print $ take 10 $ show $ sum $ map readInteger $ lines input

readInteger str = read str :: Integer
