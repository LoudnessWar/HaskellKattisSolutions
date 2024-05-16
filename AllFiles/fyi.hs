main :: IO()
main = do
    input <-readLn :: IO Int
    
    let yesorno = reout input
    print yesorno
    
reout :: Int -> Int
reout num
    | firstThree == "555" = 1
    | otherwise = 0
    where
        firstThree = take 3 $ show num -- this is an easy way to get 3
        -- but i wonder if its the best?