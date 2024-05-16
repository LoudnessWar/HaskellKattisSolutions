--import Data.Text (replace, isInfixOf) 
import Data.List (isInfixOf)

main :: IO ()
main = do
    input <- getLine
    let output = isDead input
    putStr output

{-so here I will need to use a nested if stament, this is a little weird in haskell. There are two differnt ways to do this
    One is just to actually use nested if staments,
    the other which I am going to use is to use gaurds with different preconditions
    below I display what I am actually doing

-}
isDead, isDead' :: String -> String
isDead str
        | ":)" `isInfixOf` str = isDead' str
        | ":(" `isInfixOf` str = "undead"
        | otherwise = "machine"

isDead' str
        | ":(" `isInfixOf` str = "double agent"
        |otherwise = "alive"
