import Text.Printf (printf)

main :: IO ()
main = do
  num <- readLn :: IO Double
  printf "%.10f\n" $ math num
  
math :: Double -> Double
math num = 4 * sqrt num