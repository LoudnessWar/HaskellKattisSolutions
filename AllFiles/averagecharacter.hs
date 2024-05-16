import Data.Char (ord, chr)

ave :: String -> Char
ave vs = 
  let vals = map ord vs
      average = fromIntegral (sum vals) / fromIntegral (length vals)
      roundedDown = floor average
  in chr roundedDown

main :: IO ()
main = do
  input <- getLine
  putStrLn $ id $ [ave input]--to make a string