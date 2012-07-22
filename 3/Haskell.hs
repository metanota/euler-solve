
-- Sieve of Eratosthenes
primes = sieve [2..]
	where
		sieve (x:xs) = x:sieve (filter ((/= 0).(`mod` x)) xs)

primeFactors x = factors x primes

factors 1 _                  = []
factors m (p:ps) | r == 0    = p : factors q (p:ps)
                 | otherwise = factors m ps
                   where
                       (q, r) = quotRem m p

main = do
	   print $ maximum $ primeFactors 600851475143
