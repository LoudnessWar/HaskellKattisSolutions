import Control.Exception (try, IOException)

main :: IO ()
main = do
    processInputs

processInputs :: IO ()
processInputs = do
    input <- try getLine :: IO (Either IOException String)
    case input of
        Left _ -> return ()
        Right line -> do
            let [x, y] = map read $ words line :: [Integer]
            print $ absDiff x y
            processInputs

absDiff :: Integer -> Integer -> Integer
absDiff x y = abs (x - y)