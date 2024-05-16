main :: IO ()
main = do
  input <- getLine
  let [s, v1, v2] = map read (words input)

  --faster then like sort im pretty sure
  let (v1', v2') = if v1 < v2 then (v2, v1) else (v1, v2)

  let result = findOptimal s v1' v2'
  case result of
    Just (n1, n2) -> putStrLn $ show n1 ++ " " ++ show n2
    Nothing       -> putStrLn "Impossible"

findOptimal :: Int -> Int -> Int -> Maybe (Int, Int)
findOptimal s v1 v2 = go (s `div` v1) where
  go :: Int -> Maybe (Int, Int)
  go i
    | i < 0     = Nothing
    | rem `mod` v2 == 0 = Just (i, rem `div` v2)
    | otherwise = go (i - 1)
    where
      rem = s - (i * v1)
