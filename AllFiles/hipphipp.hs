import Control.Monad (replicateM_)

main :: IO()
main = replicateM_ 20 (putStrLn $ id "Hipp hipp hurra!")
