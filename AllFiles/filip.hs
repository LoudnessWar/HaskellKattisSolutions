import Data.List (sort)

main :: IO ()
main = do
    input <- getLine
    let ins = map read $ words input :: [Int]
        shown = map show ins
        reversed = map reverse shown
        toInt = sort reversed
    putStrLn $ id $ (toInt !! 1)