import Data.Function
import Data.List


add :: Int -> Int
add x y = x + y

subtact


main = do
let r1 = 0
let op = "/"
let r2 = 0
let r = 0

putStrLn "Enter the first term:"
inputIt <- getLine
let r1 = read inputIt :: Int
putStrLn "Enter the next term:"
inputIt <- getLine
let op = inputIt
putStrLn "Enter the next term:"
inputIt <- getLine
let r2 = read inputIt :: Int

if op == "+" then let r = r1+r2
             else print r
              
                      
                        
           

     


