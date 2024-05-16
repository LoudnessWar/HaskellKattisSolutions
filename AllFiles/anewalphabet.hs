import Data.Char (toLower, toUpper)
import Data.Maybe (fromMaybe)

main :: IO ()
main = do
    input <- getLine
    putStrLn (translateString input)

translateString :: String -> String
translateString = concatMap translateChar
    
translateChar :: Char -> String
translateChar c = fromMaybe [c] $ lookup (toLower c) translations--here maybe is weird
    
translations :: [(Char, String)]
translations =
    [ ('a', "@")
    , ('b', "8")
    , ('c', "(")
    , ('d', "|)")
    , ('e', "3")
    , ('f', "#")
    , ('g', "6")
    , ('h', "[-]")
    , ('i', "|")
    , ('j', "_|")
    , ('k', "|<")
    , ('l', "1")
    , ('m', "[]\\/[]")
    , ('n', "[]\\[]")
    , ('o', "0")
    , ('p', "|D")
    , ('q', "(,)")
    , ('r', "|Z")
    , ('s', "$")
    , ('t', "']['")
    , ('u', "|_|")
    , ('v', "\\/")
    , ('w', "\\/\\/")
    , ('x', "}{")
    , ('y', "`/")
    , ('z', "2")
    ]



