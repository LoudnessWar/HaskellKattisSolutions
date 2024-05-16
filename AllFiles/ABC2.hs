import Data.List (sort)
import Data.Maybe
import Data.Char(digitToInt)
import Data.List (intersperse)--this is kinda of me being lazy but adding white space is easier then reading it without the white space imo


-- map returns a list constructed by appling a function (the first argument) to all items in a list passed as the second argument

main :: IO()
main = do
    input <- getLine
    abc <- getLine

    --let b = map read (words input) :: [Int] -- this is just a test but you can do it like this
    let [x, y, z] = map read (words input) :: [Int] -- 
    let spaceAdded = intersperse ' ' abc
    --let b = [x, y, z]-- here b is set to [x, y ,z from the previous line]

    --print spaceAdded
    let rearr = rearrange x y z spaceAdded
    
    let toPrint = [0 , 2, 4]
    let finalPrint = map (\x -> rearr !! x) toPrint -- aprrently I can do this without the lamba as rearr !! and it will do the same thing however the lamda is more readable to me so it stays

    putStrLn $ unwords $ map show finalPrint

{-My approach to this is that of a hashmap, I first sort x y and z for least to greatest then I just assign each of the Values to A B and C and rearange A B and C to whatever
the order is and then return them

This was my first time running into maybe nothing and Just, I am not really sure what it does and how it works\

-}
rearrange :: Int -> Int -> Int -> String -> [Int] --takes an Int an Int an Int and a string and Outputs a [Int]
rearrange a b c orderString =
    let mapped = zip "ABC" sorted --zip is like Hashmap or something similar it assigns values
        sorted = sort[a, b, c] :: [Int]
        remapped = map (\x -> show (maybeHandler (lookup x mapped))) orderString--https://stackoverflow.com/questions/26260752/sort-one-list-by-the-order-of-another-list this line of code was taken from this stack overflow
        --this lamba is getting complicated I probably should have just made a function
        --not fully sure how it works the fromMaybe is because it was weird I dont know why I need an error handler
    in  map read $ words (unwords remapped) :: [Int]
    
    

{-in the rearrange function I ran into an error where everything was outputterd with maybe and nothing
I learned that I need to use just to get rid of the maybe wrapper
-}

maybeHandler :: Maybe Int -> Int
maybeHandler (Just a) = a
maybeHandler Nothing = 0