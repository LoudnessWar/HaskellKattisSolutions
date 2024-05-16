main :: IO ()
main = do
    input <- getLine
    let [n, m] = map read (words input) :: [Int]
    let board = (n, m)-- I had this as a [Int] then realized if I made it a tuple here it would be ezier
    if isWinner board
        then putStrLn "Alf"
        else putStrLn "Beata"

isWinner :: (Int, Int) -> Bool
isWinner (n, m) = (totalCuts n m) `mod` 2 == 1

totalCuts :: Int -> Int -> Int
totalCuts n m = (n * m) - 1
