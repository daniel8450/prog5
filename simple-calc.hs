import Data.Function
import Data.List



main = do
let r1 = 0
let r2 = 0
let inCheck = "+"

if inCheck /= "=" 
   then do
     putStrLn "Enter the first term:"
     inputIt <- getLine
     let r1 = read inputIt :: Int
     putStrLn "Enter the next term:"
     inputIt <- getLine
     if (inputIt) == "+" then print ("plus")
                       else let result = 500
                 
   else print result
     


