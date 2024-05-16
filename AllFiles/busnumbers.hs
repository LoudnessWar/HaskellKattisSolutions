import Data.List (sort)

main :: IO ()
main = do
  n <- readLn :: IO Int --can honestly do without this
  bus <- getLine
  let buses = sort $ map read $ words bus :: [Int]
  --putStrLn
  putStrLn $ format $ check $ getConsecs (head buses) (tail buses)


getConsecs :: Int -> [Int] -> [[Int]]
getConsecs y [] = [[y]]
getConsecs y [x] = [[y],[x]]
--getConsecs _ [x] = [[x]]
getConsecs prev (x:xs)--1 2 3 10 11 12
  | prev + 1 == x = let firstToFirst = newHelper (x:xs)
                    in ([prev] ++ head firstToFirst): (getConsecs ((head . last ) firstToFirst) ((tail . last) firstToFirst))--this is scuffed
  | otherwise = [prev]:getConsecs x xs

newHelper ::  [Int] -> [[Int]]
newHelper [] = [[]]
newHelper [x] = [[x]]
newHelper (x:y:xs)
    | x + 1 == y = newHelper (y:xs)
    | otherwise = [[x], y:xs]

check :: [[Int]] ->  [[Int]]
check xs = let len = (length xs) - 1
        in if last (xs !! len) ==  last (xs !! (len-1)) then init xs else xs

format :: [[Int]] -> String
--format [[x]] = show (head [x]) -- this and
format [[]] = ""
format [] = ""
format (x:xs)
    | length x == 2 = if (head x) + 1 /= (last x) then (show (head x) ++ "-" ++ show (last x)) ++ " " ++ format xs 
        else show (head x) ++ " " ++ show (last x) ++ " " ++ format xs
    | otherwise = show (head x) ++ " " ++ format xs -- this do the same thing 


-- getConsecs :: Int -> [Int] -> ([Int],[Int])--this could be a 2d array or whatever but tuple works better
-- getConsecs _ [] = ([0], [0])
-- getConsecs prev (x:y:xs)-- 1 2 3 6 7 9
--     | x + 1 == y = getConsecs x y:xs
--     | prev + 1 == x = ([prev], getConsecs x (y:xs))
--     -- | x - 1 == prev && x + 1 != y = getConsecs x y:xs
--     -- | x + 1 == y = getConsecs prev y:xs
--     |otherwise = ([x], y:xs)

-- formatGroup :: Show a => [a] -> String
-- formatGroup [x] = show x
-- formatGroup xs = show (head xs) ++ "-" ++ show (last xs)   

 


