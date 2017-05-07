pot :: IO() -> IO() -> IO() -> IO()
pot = 
putStrLn "Enter the first term:"
inputIt <- getLine
let r1 = read inputIt :: Int
putStrLn "Enter the next term:"
inputIt <- getLine
let op = inputIt
putStrLn "Enter the next term:"
inputIt <- getLine
let r2 = read inputIt :: Int
putStrLn "="
if op == "+" then print (r1+r2) 
             else 
              if op == "-" then print (r1-r2) 
             else 
              if op == "*" then print (r1*r2) 
             else 
              if op == "/" then print (r1 `div` r2) else print ("nothing")

main = do
--let r1 = 0
--let op = "/"
--let r2 = 0
pot



     


