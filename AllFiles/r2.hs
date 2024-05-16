main :: IO ()
main = do
    input <- getLine
    let [a, b] = map read (words input)
    let result = (2*b)-a
    print result