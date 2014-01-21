module Main where

import Data.List

{-
http://projecteuler.net/problem=39

If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, there are exactly three solutions for p = 120.

{20,48,52}, {24,45,51}, {30,40,50}

For which value of p ≤ 1000, is the number of solutions maximised?
-}

--isPerfectSquare :: Int -> Num -> Bool
isPerfectSquare n =  (fromIntegral (floor $ sqrt n)) == (sqrt n)
                  
perim a b = a + b + sqrt(a*a + b*b) 

right_triangles = [(a,b, perim a b) | a<- [1..1000], b<- [1..1000], isPerfectSquare ((a*a)+(b*b))]

candidates = filter (\(a,b,c) -> c <= 1000) right_triangles

integrized = map (\(a,b,c) ->(round a, round b, round c)) candidates

perimiters = group $ sort $ map (\(a,b,c) -> c) integrized

runs = map (\x -> (length x, head x)) perimiters

big_runs = filter (\(a,b) -> a > 12) runs --It's 840.

main = do
     putStrLn $ show big_runs