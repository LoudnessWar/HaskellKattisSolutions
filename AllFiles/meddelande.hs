import Control.Monad
main :: IO ()
main = do
  [rows, cols] <- map read . words <$> getLine
  grid <- replicateM rows getLine
  putStrLn $ id search grid
  
  
isLetter :: Char -> Bool
isLetter c = c >= 'a' && c <= 'z'

search :: [String] -> String
search grid = concatMap (filter isLetter) grid
