import Control.Monad (replicateM_)
import Control.Monad (replicateM)
import Text.Read (readMaybe)
import Data.List (intercalate, intersperse)
import Data.List (sortOn, foldl')

symbs :: [String]
symbs = ["+" , "-", "*", "/"]

sortOrder :: Char -> Int
sortOrder '*' = 0
sortOrder '/' = 1
sortOrder '+' = 2
sortOrder '-' = 3
sortOrder _   = error "errrrrrrrr"

filterer :: String -> Char
filterer str = head $ filter (`elem` "+-*/") str



nummer :: String -> (Int, Int)
nummer str = let listed = words str
           in (read $ head listed, read $ listed !! 2)

-- evaluateExpression :: [String] -> Int -> [Int]
-- evaluateExpression [""] c = [0]
-- evaluateExpression str c = [0]
--     let sorted = map filterer str--idk it didnt let me map filter
--         vals = map nummer str
--     in helper vals (head sorted) 1

evaluateExpression :: [String] -> [Int]
evaluateExpression str = 
    let sorted = map filterer str
        vals = map nummer str
    in helper vals sorted 1


helper :: [(Int, Int)] -> [Char] -> Int -> [Int]
helper [] _ _= []
helper _ [] _= []
helper (v:vs) (o:os) s= 
    let curr = operatorEval v o s--i couldnt think of a better way then with s
    in curr : helper vs os curr

operatorEval :: (Int, Int) -> Char -> Int -> Int
operatorEval (first, sec) '+' prev = (first + sec) - prev
operatorEval (first, sec) '-' prev = (first - sec) * prev
operatorEval (first, sec) '*' prev= (sec * first) * (sec * first)
operatorEval (first, sec) '/' prev = if even first && first /= 0--this is to get rid of if its like 1 or something if there were more then 4 4rs this would not work because you could get numebers like 15 or whatever but here you cannot do that typa stuff  
                                  then first `div` 2
                                  else if (first + 1) /= 0 then (first + 1) `div` 2 else 0
operatorEval (_, sec) _ _ = sec -- No change for unknown operator

-- eval :: (Int, Int) -> Int -> Int
-- eval (fir, sec) curr =

main :: IO ()
main = do
    input <- readLn :: IO Int
    lines <- readLines input
    let output = evaluateExpression lines
    mapM_ printLines output
    -- replicateM_ input $ do
    --     print output

readLines :: Int -> IO [String]
readLines n = replicateM n getLine

printLines :: Int -> IO ()
printLines n = print n

