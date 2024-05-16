import Data.List (sort)
import Control.Monad (replicateM_)


main :: IO ()
main = do
  numTestCases <- readLn :: IO Int
  replicateM_ numTestCases $ do
    _ <- getLine
    _ <- getLine
    godzillaArmy <- map read . words <$> getLine :: IO [Int]
    mechaGodzillaArmy <- map read . words <$> getLine :: IO [Int]
    putStrLn $ id (winner godzillaArmy mechaGodzillaArmy)

winner :: [Int] -> [Int] -> String
winner godzillaArmy mechaGodzillaArmy =
    let
    godzillaStrongest = maximum godzillaArmy
    mechaGodzillaStrongest = maximum mechaGodzillaArmy
    in
    if godzillaStrongest >= mechaGodzillaStrongest  then 
        "Godzilla"
    else 
        "MechaGodzilla"
