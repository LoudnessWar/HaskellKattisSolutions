main :: IO ()
main = do
    n <- readLn
    print $ ninenine n n

ninenine :: Int -> Int -> Int
ninenine r l
    | r `mod` 100 /= 99 && l `mod` 100 /= 99 = if l > 1 then ninenine (r+1) (l-1) else ninenine (r+1) l--this if statment is because it would go to neg and that isnt what is wanted lol
    | r `mod` 100 == 99 && l `mod` 100 == 99 = r
    | l `mod` 100 == 99 = l
    | otherwise = r