
-- Sieve of Eratosthenes
primes = sieve [2..]
    where
        sieve (x:xs) = x:sieve (filter ((/= 0).(`mod` x)) xs)

main = do
       print $ primes !! 10000 -- indexing from 0
