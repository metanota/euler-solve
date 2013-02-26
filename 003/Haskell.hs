import Data.Numbers.Primes

factors 1 _                  = []
factors m (p:ps) | r == 0    = p : factors q (p:ps)
                 | otherwise = factors m ps
                   where
                       (q, r) = quotRem m p

main = do
       print $ maximum $ factors 600851475143 primes
