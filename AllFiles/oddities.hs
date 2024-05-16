import Control.Monad (replicateM_)
main :: IO ()
main = do
    input <- readLn :: IO Int
    replicateM_ input $ do
        testCase <- readLn :: IO Int
        let evenOdd = oddOrEven testCase
        putStrLn evenOdd
    

oddOrEven :: Int -> String
oddOrEven n
    | even n    = show n ++ " is even"
    | otherwise = show n ++ " is odd"
