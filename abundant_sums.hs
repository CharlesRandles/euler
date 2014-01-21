{- 
   Shit be going down with abundants. Again. 
   http://projecteuler.net/problem=23
-}

module Main where

limit = 28123 --28123 -- this is given to us.

factors n = filter (\f -> mod n f == 0) [1..(div n 2)]

is_abundant n = (sum $ factors n) > n

abundants = filter is_abundant [1..limit]

abundant_sums = [ x + y | x <- abundants, y <- abundants]

is_sum n [] abundants = False 
is_sum n candidates abundants =
           (elem ( n - (head candidates)) abundants) || (is_sum n (tail candidates) abundants)

non_sums = filter (\x -> (not $ elem x abundant_sums)) [1..limit]

solution = sum non_sums

main = do
     print $ sum $  filter (\x -> (is_sum x abundants abundants)) [1..limit]