
main = do
       print $ sum $ filter f [1..999]
       where
           f x = x `rem` 3 == 0 || x `rem` 5 == 0
