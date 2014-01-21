module Main where

to_binary_string:: Int -> String
to_binary_string n = if n < 2 then show n
              else to_binary_string (div n 2) ++ (to_binary_string $ mod n 2)

to_decimal_string:: Int -> String
to_decimal_string = show

is_palindrome s = s==reverse s

is_bin_dec_palindrome n = is_palindrome (to_decimal_string n) &&
                          is_palindrome (to_binary_string n)

main = do
     putStrLn $ show $ sum $ filter is_bin_dec_palindrome [1..999999]