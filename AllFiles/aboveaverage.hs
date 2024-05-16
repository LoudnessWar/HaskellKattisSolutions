    import Text.Printf
    import Control.Monad ( replicateM ) 
    
    main :: IO ()
    main = do
        input <- readLn :: IO Int
        incases <- replicateM input getLine
        mapM_ (putStrLn . processCase) incases
        
    processCase :: String -> String
    processCase testCase =
        let grades = map read $ words testCase :: [Int]
            num = head grades
            studentGrades = tail grades
            percentage = aboveAveragePercentage studentGrades num
        in printf "%.3f%%" percentage
        
    aboveAveragePercentage :: [Int] -> Int -> Float
    aboveAveragePercentage grades n =
        let avg = (sum grades) `div` n
            aboveAvgCount = length $ filter (> avg) grades
        in (fromIntegral aboveAvgCount /  (fromIntegral $ length grades)) * 100