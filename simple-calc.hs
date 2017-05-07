import Data.Function
import Data.List



main = do
let r1 = 0
let op = "/"
let r2 = 0

putStrLn "Enter the first term:"
inputIt <- getLine
let r1 = read inputIt :: Int
putStrLn "Enter the next term:"
inputIt <- getLine
if (inputIt) == "+" then let op = "+"
                    else 
                      if inputIt == "-" then let op = "-"
                    else 
                      if inputIt == "*" then let op = "*"
                    else 
                      if inputIt == "/" then let op = "/"
                    else
                      putStrLn "Enter the next term:"
                      inputIt <- getLine
                      let r2 = read inputIt :: Int
                      if op == "+" then let r = r1 + r2
                                   else
                                     if op == "-" then let r r1 - r2
                                   else
                                     if p == "*" then let r r1 * r2
                                   else
                                     if p == "/" then let r r1 `div r2
                                   else
                                     print r

                                 
                      
                        
           

     


