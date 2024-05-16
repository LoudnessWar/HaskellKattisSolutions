main :: IO()
main = do
    input <- getLine
    let rev = reversed input
    putStrLn rev
    
reversed :: String -> String
reversed [] = []
reversed (x:xs) = reversed xs ++ [x]