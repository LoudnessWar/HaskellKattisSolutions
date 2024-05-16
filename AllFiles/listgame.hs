main :: IO ()
main = do
  num <- readLn :: IO Int
  print $ countFactors num

countFactors :: Int -> Int
countFactors num = length $ primeFactorize num

primeFactorize :: Int -> [Int]
primeFactorize num = factorloop num 2
  where
    factorloop n factor
      | factor * factor > n = [n]
      | n `mod` factor == 0 = factor : factorloop (n `div` factor) factor
      | otherwise = factorloop n (factor + 1)