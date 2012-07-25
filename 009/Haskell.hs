
isTriplet a b c = a < b && b < c && a*a + b*b == c*c

main = do
       print $ product $ head $ [[x,y,z] | x<-[1..1000], y<-[x+1..1000], z<-[1000 - x - y], isTriplet x y z]
