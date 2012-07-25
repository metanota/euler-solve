
square x = x*x

sumOfSquares xs = sum $ map (square) xs

squareOfSums xs = square $ sum xs

main = do
       print $ (squareOfSums list) - (sumOfSquares list)
       where
           list = [1..100]
