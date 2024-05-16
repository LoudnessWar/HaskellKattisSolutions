import Data.Char (isLower, isUpper)
import Text.Printf (printf)

-- Function to calculate ratios
calculateRatios :: String -> [Double]
calculateRatios input =
    let totalLength = fromIntegral $ length input
        whitespaceRatio = fromIntegral (length (filter (=='_') input)) / totalLength
        lowercaseRatio = fromIntegral (length (filter isLower input)) / totalLength
        uppercaseRatio = fromIntegral (length (filter isUpper input)) / totalLength
        symbolRatio = 1 - (whitespaceRatio + lowercaseRatio + uppercaseRatio)
    in [whitespaceRatio, lowercaseRatio, uppercaseRatio, symbolRatio]

-- Main function
main :: IO ()
main = do
    input <- getLine
    let ratios = calculateRatios input
    mapM_ (printf "%.16f\n") ratios