main :: IO ()
main = do
    [a, b, c] <- map read . words <$> getLine
    --I tried to use my failed solution for 4 to solve this and then that didnt work so I just brute forced it
    putStrLn $ case () of
        _ | a + b == c -> 
            show a ++ "+" ++ show b ++ "=" ++ show c
          | a == b + c -> 
            show a ++ "=" ++ show b ++ "+" ++ show c
          | a == b - c -> 
            show a ++ "=" ++ show b ++ "-" ++ show c
          | a * b == c -> 
            show a ++ "*" ++ show b ++ "=" ++ show c
          | a == b * c -> 
            show a ++ "=" ++ show b ++ "*" ++ show c
          | c /= 0 && a == b `div` c -> 
            show a ++ "=" ++ show b ++ "/" ++ show c
          | otherwise -> 
            "err"






