main :: IO()
main = do
    input <- readLn :: IO Int
    if input `mod` 2 == 0 then
        putStrLn $ id "second"
    else 
        putStrLn $ id "first"
