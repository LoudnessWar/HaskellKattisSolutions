main :: IO ()
main = do
    n <- readLn
    if n < 17
        then do
        factorials <- precalculateFactorials (n)
        let approximation = eulerApproximation factorials
        print approximation
        else print 2.7182818284590455

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

precalculateFactorials :: Integer -> IO [Integer]
precalculateFactorials n = mapM (\i -> return $ factorial i) [0..n]

eulerApproximation :: [Integer] -> Double
eulerApproximation n = sum [1 / fromIntegral (n !! i) | i <- [0..length n - 1]]
