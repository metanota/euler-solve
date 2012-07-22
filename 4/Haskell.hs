
isPalindrome x = reverse (show x) == show x

main = do
       print $ maximum [x*y | x <- [1..999], y <- [1..999], isPalindrome(x*y)]
