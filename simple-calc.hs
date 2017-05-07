import Data.Function
import Data.List




data op = * | + | - | / 

main = do
let x = 0
let r1 = 0
let r2 = 0
--if x == 0
   --then do 
putStrLn "Enter the first term:"
inputIt <- getLine
if (read inputIt) == op then print ("OKTHEN1")
                       else print ("notOK")
--else       
--putStrLn "Enter the next term:"
--inputIt <- getLine
--if (read inputIt) == Int then print ("OKTHENN2222")
