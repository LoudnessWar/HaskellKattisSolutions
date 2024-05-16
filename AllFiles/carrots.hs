import Control.Monad (replicateM)

main :: IO ()
main = do
    input <- getLine
    let [contestants, problems] = map read (words input) :: [Int]
    print problems
    