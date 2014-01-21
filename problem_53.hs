{-http://projecteuler.net/problem=53-}

factorial :: Integer -> Integer
factorial n = foldl (*) 1 [1..n]

nCr :: Integer -> Integer -> Integer
nCr n r = (factorial n) `div` ((factorial r) * (factorial (n-r)))

millions = [(n,r) | n<-[1..100], r<-[1..n], nCr n r > 999999]

main = do
     putStrLn $ show $ length millions