main :: IO()
main = do
    total <- readLn :: IO Int
    gotten <- readLn :: IO Int
    print $ id (total - gotten)