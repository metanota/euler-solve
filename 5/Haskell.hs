
isDivided x = all ((==0).(rem x)) [1..20]

main = do
       print $ head $ filter (isDivided) [20,40..]
