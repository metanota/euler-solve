import Control.Applicative ((<*>))
import Data.List           (group)
import Data.Numbers.Primes (primeFactors)

main = do
       print $ head $ filter ((> 500) . snd) $ zipF divisorsCount triangles

-- | http://en.wikipedia.org/wiki/Divisor_function
divisorsCount = product . map (+1) . map (length) . group . primeFactors

triangles = scanl1 (+) [1..]

zipF f = zip <*> map f
