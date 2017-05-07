import Data.Function
import Data.List



main = do
let x = 0
let r1 = 0
let r2 = 0
if x == 0
   then do 
     putStrLn "Enter the first term:"
     inputIt <- getLine
     let w = read inputIt :: Int
     --r1 = w
     x = x + 1
     print (r1)
   else   
     putStrLn "Enter the next term:"
     inputIt <- getLine
     if (inputIt) == "+" then print ("plus")
     
     
 print x

