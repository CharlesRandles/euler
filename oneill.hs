{-
http://www.cs.hmc.edu/~oneill/papers/Sieve-JFP.pdf
-}

primes = sieve [2..]

sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]

primes0 = 2 : [x | x <- [3..], isprime0 x]

isprime0 x = all (\p -> x `mod` p > 0) (factorsToTry x)
         where factorsToTry x = takeWhile (\p -> p * p <= x) primes

