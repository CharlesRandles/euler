module Main where

isPerfectSquare n = fromIntegral(truncate(sqrt(fromIntegral n))) == sqrt (fromIntegral n)

tri n = div (n * (n+1)) 2
triangles = map tri [1..]

pent n = div (n * (3*n - 1)) 2
pentagonals = map pent [1..]

is_pentagonal x = isPerfectSquare (24 * x + 1)

is_triangle x = isPerfectSquare (8 * x + 1)

tri_n x = (-1 + sqrt (1 + 8 * x))/2

hex n = n * (2*n - 1)
hexagonals = map hex [1..]

main = do
     putStrLn $ show $ take 4 $ filter is_triangle $ filter is_pentagonal hexagonals