{-http://projecteuler.net/problem=56-}

digit_sum :: Integer -> Integer
digit_sum n
          | n < 10 = n
          | otherwise =  (n `mod` 10) + (digit_sum (n `div` 10))

power a b = foldl (*) 1 $ take b [a,a..]

digit_sums = [digit_sum $ power a b | a<-[1..99], b<-[1..99]]

main = do
     putStrLn $ show $ maximum digit_sums