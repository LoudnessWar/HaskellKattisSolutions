main :: IO()
main = do
    input <- getLine
    let ins = map read $ words input :: [Int]
        faktor = fact ins
    print faktor
    
fact :: [Int] -> Int
fact (x:y:xs) = (x*(y-1))+1
