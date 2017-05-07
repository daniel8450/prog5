import Data.Function
import Data.List



main = do
let r1 = 0
let r2 = 0
putStrLn "Enter the first term:"
inputIt <- getLine
let r1 = read inputIt :: Int
print (r1)
putStrLn "Enter the next term:"
inputIt <- getLine
if (inputIt) == "+" then print ("plus")


