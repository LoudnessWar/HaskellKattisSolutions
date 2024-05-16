main :: IO ()
main = do
    input <- readLn :: IO Int
    let result = input - 1
    print result