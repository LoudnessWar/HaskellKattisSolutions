import Control.Monad (replicateM_)
import Data.List (sort)

main :: IO ()
main = do
  input <- readLn :: IO Int
  replicateM_ input $ do
    line <- getLine --cannot use readLn here not really sure why gives parsing error maybe because of spaces? 
    let (num:height) = map read (words line) :: [Int]
    --print num
    --print height
    putStrLn $ show num ++ " " ++ show (getStep height)


getStep :: [Int] -> Int
getStep heights = counter heights [] 0 -- This is easier to read I found. Instead of having the 0 passed into this function
    where
        counter [] _ steps = steps
        counter (x:xs) order steps = counter xs (sort (order ++ [x])) (steps + (length $ filter (> x) order))
