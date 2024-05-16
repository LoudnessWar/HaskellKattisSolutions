import Data.List (sort)

main :: IO ()
main = do
    one <- getLine
    two <- getLine
    putStr $ mergeSort one two

mergeSort :: String -> String -> String
mergeSort [] y = y
mergeSort x [] = x
mergeSort (x:xs) (y:ys)
    | x <= y    = x : mergeSort xs (y:ys)
    | otherwise = y : mergeSort (x:xs) ys
