import Data.Function
import Data.List

main = do
r1 = 0
op = "/"
r2 = 0

putStrLn "Enter the first term:"
inputIt <- getLine
r1 = read inputIt :: Int

if op /= "=" then
                putStrLn "Enter the next term:"
                let inputIt <- getLine
                let op = inputIt
                putStrLn "Enter the next term:"
                let inputIt <- getLine
                let r2 = read inputIt :: Int
              else
                putStrLn "="
                if op == "+" then print (r1+r2)
                             else putStrLn "ohno"


                        
           

     


