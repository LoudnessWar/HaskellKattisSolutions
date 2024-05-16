import Control.Monad (replicateM_) -- need the one with the underscore because we are getting rid of and not really worried about the results
main :: IO ()
main = do
  caseCount <- readLn
  replicateM_ caseCount $ do
    testCase <- readLn :: IO Int
    let permutation = magicTrick (reverse [1..testCase]) []
    putStrLn $ unwords $ map show (reverse permutation)
  
magicTrick :: [Int] -> [Int] -> [Int]
magicTrick [] x = x
magicTrick (x:table) hand = magicTrick table (reversed x (x:hand))
    where reverseSwitch :: Int -> [Int] -> [Int]
          reverseSwitch _ [] = []
          reverseSwitch count (y:list)
            | count <= 0 = list
            | otherwise = reverseSwitch (count-1) list ++ [y]

reversed :: Int -> [Int] -> [Int]
reversed _ [] = []
reversed count list
    | count < 0 = list
    | otherwise = reversed (count-1) ((tail list) ++  (take 1 list))

