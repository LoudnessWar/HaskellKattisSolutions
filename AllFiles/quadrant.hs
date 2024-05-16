main :: IO()
main = do
    x <- readLn :: IO Int
    y <- readLn :: IO Int
    print (eval x y)
    
eval :: Int -> Int -> Int
eval x y
    | x > 0 && y > 0 = 1
    | x < 0 && y > 0 = 2
    | x > 0 && y < 0 = 4
    | otherwise = 3
    