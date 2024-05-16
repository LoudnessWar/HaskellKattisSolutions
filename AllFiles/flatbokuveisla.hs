main :: IO()
main = do
    slice <- readLn :: IO Int
    people <- readLn :: IO Int
    print $ id (slice `mod` people)