main :: IO ()
main = do
    --putStrLn "Enter two numbers separated by a space:"
    input <- getLine

    {-below I am using a list to read the input
    map takes the input that was read and puts them into number1 and 2 respectivly
    (words input) seperates the input into there individual words(seperates them by space) it takes a string and puts it into a list of strings
    you need map for it to work
    -}
    let [number1, number2] = map read (words input) :: [Int] --so let is basically a way to define varaibles in Haskell im going to keep it simple for my self for now

    --print number1 --print is a thing :D did "putStrLN $ show number1" did not need to do all that
    --print number2

    let sumResult = number1 + number2 :: Int

    print sumResult

    --putStrLn $ "The sum of the two numbers is asas: " ++ show sumResult