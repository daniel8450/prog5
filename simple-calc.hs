


inPUT :: IO()
inPUT = do
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
                    
                    
inPUTint :: IO() -> Int
inPUTint x = x

main = do
let r = inPUTint inPUT
print r



     


