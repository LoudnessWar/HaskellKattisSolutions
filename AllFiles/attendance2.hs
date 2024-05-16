import Control.Monad (replicateM)

main :: IO ()
main = do
  n <- getLine
  callouts <- replicateM (read n) getLine
  let absents = absentStudents callouts
  printAbsences absents

absentStudents :: [String] -> [String]
absentStudents [] = []
absentStudents (x:y:rest)
  | y == "Present!" = absentStudents rest
  | otherwise = x : absentStudents (y:rest)
absentStudents [x] = [x] 

printAbsences :: [String] -> IO ()
printAbsences absents
  | null absents = putStrLn "No Absences"
  | otherwise = mapM_ putStrLn absents
