import Data.List

main :: IO ()
main = do
    input <- getLine
    putStrLn $ processString input

processString :: String -> String
processString = reverse . foldl processChar []

processChar :: String -> Char -> String
processChar [] '<' = []
processChar (x:xs) '<' = xs
processChar acc char = char : acc