import Data.List (length)

canGo:: String -> String -> String
canGo can doc
    | length can >= length doc = "go"
    | otherwise = "no"

main :: IO ()
main = do
    can <- getLine
    doc <- getLine
    putStrLn $ id (canGo can doc)