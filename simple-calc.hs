import Data.Function
import Data.List

main = do
let r1 = 0
let op = "/"
let r2 = 0

if (x == 0) then do
              putStrLn "Enter the first term:"
              inputIt <- getLine
              let r1 = read inputIt :: Int
              let x = 1
             else

putStrLn "Enter the next term:"
inputIt <- getLine
let op = inputIt
putStrLn "Enter the next term:"
inputIt <- getLine
let r2 = read inputIt :: Int

putStrLn "="
if op == "+" then print (r1+r2)
else putStrLn "ohno"


                        
           

     


