import Data.List (group, inits, tails)
import Math.NumberTheory.Primes.Sieve (primes)
import Math.NumberTheory.Primes.Testing (isPrime)

readInteger x = read x :: Integer

perms f = map readInteger . f . show
lToR = init . tails
rToL = tail . inits

truncs x = concat $ group $ foldr g [] [lToR, rToL]
    where g f acc = perms f x ++ acc

main = do
       print $ sum $ take 11 $ filter (all isPrime . truncs) $ drop 4 primes