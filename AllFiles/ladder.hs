main :: IO()
main = do
    input <- getLine
    let ins = map read $ words input :: [Int]
        thing = fromIntegral (ins !! 1)
        rads = thing * pi /180
        hyp = sin rads
        fin = fromIntegral (ins !! 0) / hyp
    print $ ceiling fin
    
