
isTriplet a b c = a < b && b < c && a*a + b*b == c*c

isSolved a b c = a + b + c == 1000

main = do
       print $ product $ head $ [[x,y,z] | x<-[1..1000], y<-[1..1000], z<-[1..1000],
                                           isTriplet x y z && isSolved x y z]
