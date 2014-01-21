module Main where

prime n = first_factor n == n

first_factor n = head [x | x <- [2..n], n `mod` x == 0]

factors n
        | prime n = [n]
        | otherwise = f : (factors $ n `div` f)
                         where f = first_factor n        

num_factors = length . nub . factors

consecs = [[x,x+1,x+2, x+3] | x<-[2..], num_factors x == 4, num_factors (x+1)==4, num_factors (x+2)==4, num_factors(x+3)==4]

main = do
     putStrLn $ show $ consecs
