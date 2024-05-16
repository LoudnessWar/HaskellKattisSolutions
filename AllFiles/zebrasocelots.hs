tollCount :: [Char] -> Int
tollCount animals = foldl (\acc (x, pow) -> if x == 'O' then acc + pow else acc) 0 indan--love foldl
  where
    indan = zip animals [2^(length animals - i - 1) | i <- [0..length animals - 1]]

main :: IO ()
main = do
    n <- readLn :: IO Int
    animals <- sequence $ replicate n getLine--idk if there is a better way for this
    print $ tollCount (concat animals)