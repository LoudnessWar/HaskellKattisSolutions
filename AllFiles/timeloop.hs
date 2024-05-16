import Control.Monad (mapM_)

main :: IO ()
main = do
    n <- readLn
    wiz n

wiz :: Int -> IO ()
wiz n = mapM_ (\i -> putStrLn (show (i + 1) ++ " Abracadabra")) [0..n-1]