main :: IO ()
main = do
    length <- readLn
    let (winner, move) = getWinner length
    putStrLn winner
    if winner == "Alice"
        then putStrLn $ show move
        else return ()

getWinner :: Int -> (String, Int)
getWinner n
    | n `mod` 2 == 0 = ("Alice", n `div` 2)
    | otherwise      = ("Bob", 0)
