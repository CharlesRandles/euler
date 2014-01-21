module Main where
import qualified Data.Text.Lazy as L
import Data.Char

toWords :: String -> [String]
toWords s =
        map (reverse. tail. reverse . tail) (map L.unpack $ L.splitOn (L.pack ",")  (L.pack s))

isPerfectSquare n = fromIntegral(truncate(sqrt(fromIntegral n))) == sqrt (fromIntegral n)

{-
        You're a triangle number if you're part of the sequence n (n+1) / 2
        So if 2x = n(n+1) .... so...
-}
isTriangleNumber x = isPerfectSquare (8 * x + 1)

charValue x = ord x - ord 'A' + 1

wordValue = sum . map charValue

main = do
     w <- readFile "words.txt"
     putStrLn $ show $ length $ filter isTriangleNumber (map wordValue (toWords w))