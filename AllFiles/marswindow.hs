main :: IO ()
main = do
    year <- readLn :: IO Int
    let 
        diff = year - 2018
        startMonth = diff * 12 + 1
        endMonth = diff * 12 + 12
        conditionMet = any (\x -> (x - 4) `mod` 26 == 0) [startMonth..endMonth]
    putStrLn $ if conditionMet then "yes" else "no"
