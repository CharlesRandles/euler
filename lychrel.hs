{-http://projecteuler.net/problem=55-}

{-Lychrel numbers-}

is_palindrome :: Integer -> Bool
is_palindrome n = s == reverse s where s = show n

num_reverse :: Integer -> Integer
num_reverse = read . reverse . show

is_lychrel_limited :: Integer -> Int -> Bool
is_lychrel_limited _ 0 = True
is_lychrel_limited n count
                   | is_palindrome n = False
                   | otherwise = is_lychrel_limited m (count - 1)
                                        where m = add_reverse n

add_reverse n = n + num_reverse n

is_50_lychrel :: Integer -> Bool
is_50_lychrel n = is_lychrel_limited (add_reverse n) 50

main = do
     putStrLn $ show $ length $ filter is_50_lychrel [0..10000]
                   