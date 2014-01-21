module Main where
import Data.List

pow _ 0 = 1
pow a 1 = a
pow a n = a * pow a (n-1)
subString :: Int -> Int -> Int
subString n startPos = mod (
                           div n (pow 10  (8 - startPos)))
                           1000
--http://projecteuler.net/problem=43
all_perms :: [Int]
all_perms = map read $ permutations "0123456789"

by_17 = filter  (\n -> (mod (subString n 8) 17)== 0)  all_perms
by_13 = filter  (\n -> (mod (subString n 7) 13)== 0)  by_17
by_11 = filter  (\n -> (mod (subString n 6) 11)== 0)  by_13
by_7  = filter  (\n -> (mod (subString n 5) 7)== 0)  by_11
by_5  = filter  (\n -> (mod (subString n 4) 5)== 0)  by_7
by_3  = filter  (\n -> (mod (subString n 3) 3)== 0)  by_5
by_2  = filter  (\n -> (mod (subString n 2) 2)== 0)  by_3

total = sum by_2 

main = do
     putStrLn $ show $ total
