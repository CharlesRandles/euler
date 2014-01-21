module Main where
import Data.List

num_powers = length $ nub  [a ** b | a <- [2..100], b <- [2..100]]

main = do
     putStrLn $ show num_powers