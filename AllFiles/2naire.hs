import Text.Printf


import Control.Exception (try, IOException)
import Data.List ( union, sort )
import Data.Maybe

main :: IO ()
main = do-- all of my inputs were stolen from when I did the problem Where's My Internet?? it was convientent bc I did these in the same day
    out <- processInputs
    let twos = takeWhile (not . null) . map (take 2) . iterate (drop 2)-- this I didnt even mean to do
        twoplues = map (\[a, b] -> (a, b)) $ twos out--like I didnt think this would work I was not trying to do this but I wont complain
    mapM_ printAnswer twoplues--map M i avoid this idk y

      
processInputs :: IO[Double]
processInputs = do
    input <- try getLine :: IO (Either IOException String)
    let 
    case input of
        Left _ -> return []
        Right line -> 
          if null (words line) then
                return []
        else do
            let [x, y] = map read $ words line :: [Double]--ik one of these is just supposed to be an int but...
            if x == 0 && y == 0 then 
                    return [] 
                else do
                    res <- processInputs
                    return (x : y : res)
        

printAnswer :: (Double, Double) -> IO ()
printAnswer (x, y) = printf "%.3f\n" (expPrize x y)

expPrize :: Double -> Double -> Double
expPrize 0 _ = 1
expPrize n t = loop (n - 1) (2 ** n)
  where
    loop :: Double -> Double -> Double
    loop i f
      | i < 0 = f
      | otherwise =
          let prize = 2 ** i
              eq = prize / f
          in if eq <= t
             then loop (i - 1) ((t + 1) / 2 * f)
             else loop (i - 1) (((eq - t) / (1 - t) * prize) + ((1 - eq) / (1 - t) * (eq + 1) / 2 * f))