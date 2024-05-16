main :: IO()
main = do
    input <- readLn :: IO Int
    let winner = if input `mod` 2 == 1 then "Alice" else "Bob"
    putStrLn $ id winner