import System.Console.ANSI
import Control.Concurrent

stop :: IO ()
stop = do
    setSGR[Reset]
    clearFromCursorToScreenEnd
    
screenSet :: IO ()
screenSet = do
    clearFromCursorToScreenBeginning
    setCursorPosition 0 0
    
blue :: IO ()
blue = do
    setSGR [SetColor Foreground Vivid Blue]
    setSGR [SetColor Background Vivid Red]
    
cyan :: IO ()
cyan = do
    setSGR [SetColor Foreground Vivid Cyan]
    setSGR [SetColor Background Vivid Red]
    
red :: IO ()
red = do
    setSGR [SetColor Foreground Vivid Red]
    setSGR [SetColor Background Vivid Red]
    
redLine :: IO ()
redLine = do
      red
      putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
      stop
    
pause :: IO ()
pause = do
    threadDelay 100000

    
frameOne :: IO ()
frameOne = do
 --one
    redLine
  --two  
    red
    putStr "&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--three
    blue 
    putStr "OOOO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--four
    red
    putStr "&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--five
    redLine
--six
    redLine
--seven
    redLine
--eight
    redLine
-------------------------------------------------------------------------------------------
frameTwo :: IO ()
frameTwo = do
 --one
    redLine
    redLine
    redLine
  --two  
    red
    putStr "&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--three
    red
    putStr "&&&"
    blue 
    putStr "OOOO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--four
    red
    putStr "&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--five
    redLine
--six
    redLine
--seven

--eight

-------------------------------------------------------------------------------------------
frameThree :: IO ()
frameThree = do
 --one
    redLine
    redLine
    redLine
    redLine
    redLine
  --two  
    red
    putStr "&&&&&&&"
    cyan 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--three
    red
    putStr "&&&&&&"
    cyan 
    putStr "OOOO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--four
    red
    putStr "&&&&&&&"
    cyan 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--five

--six

--seven

--eight


-------------------------------------------------------------------------------------------
frameFour :: IO ()
frameFour = do
 --one
    redLine
    redLine
    redLine


  --two  
    red
    putStr "&&&&&&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn  "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--three
    red
    putStr "&&&&&&&&&"
    blue 
    putStr "OOOO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--four
    red
    putStr "&&&&&&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop     
--five

--six

--seven

--eight
    redLine
    redLine
    
    
    
-------------------------------------------------------------------------------------------
frameFive :: IO ()
frameFive = do
 --one



  --two  
    red
    putStr "&&&&&&&&&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--three
    red
    putStr "&&&&&&&&&&&&"
    blue 
    putStr "OOOO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--four
    red
    putStr "&&&&&&&&&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop    
--five

--six

--seven

--eight
    redLine
    redLine
    redLine
    redLine
    redLine
    
    
    
-------------------------------------------------------------------------------------------
frameSix :: IO ()
frameSix = do
 --one



  --two  
    red
    putStr "&&&&&&&&&&&&&&&&"
    cyan 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--three
    red
    putStr "&&&&&&&&&&&&&&&"
    cyan 
    putStr "OOOO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--four
    red
    putStr "&&&&&&&&&&&&&&&&"
    cyan 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop      
--five

--six

--seven

--eight
    redLine
    redLine
    redLine
    redLine
    redLine
    
-------------------------------------------------------------------------------------------
frameSeven :: IO ()
frameSeven = do
   --one
    redLine
    redLine
    redLine


  --two  
    red
    putStr "&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--three
    red
    putStr "&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OOOO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--four
    red
    putStr "&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop     
--five

--six

--seven

--eight
    redLine
    redLine
    
-------------------------------------------------------------------------------------------
frameEight :: IO ()
frameEight = do
   --one
    redLine
    redLine
    redLine
    redLine
    redLine

  --two  
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--three
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OOOO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--four
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop     
--five

--six

--seven

--eight


-------------------------------------------------------------------------------------------
frameNine :: IO ()
frameNine = do
   --one
    redLine
    redLine
    redLine


  --two  
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&"
    cyan 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--three
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&"
    cyan 
    putStr "OOOO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--four
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&"
    cyan 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop    
--five
    redLine
    redLine
--six

--seven

--eight

-------------------------------------------------------------------------------------------
frameTen :: IO ()
frameTen = do
   --one


  --two  
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--three
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OOOO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--four
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop    
--five
   
--six    
    redLine
    redLine
    redLine
    redLine
    redLine

--seven

--eight

-------------------------------------------------------------------------------------------
frameEleven :: IO ()
frameEleven = do
   --one
    redLine
    redLine
    redLine
    

  --two  
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--three
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OOOO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--four
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop      
--five
    redLine
    redLine
--six

--seven

--eight

-------------------------------------------------------------------------------------------
frameTwelve :: IO ()
frameTwelve = do
   --one
    redLine
    redLine
    redLine
    redLine
    redLine
    

  --two  
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    cyan 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--three
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    cyan 
    putStr "OOOO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--four
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    cyan 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop      
--five
   
--six

--seven

--eight

-------------------------------------------------------------------------------------------
frameThirteen :: IO ()
frameThirteen = do
   --one
    redLine
    redLine
    redLine
    

  --two  
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--three
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OOOO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&"
    stop
--four
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&"
    stop     
--five
    redLine
    redLine

--six

--seven

--eight


-------------------------------------------------------------------------------------------
frameFourteen :: IO ()
frameFourteen = do
   --one
    redLine
    redLine
    redLine
    redLine
    redLine
    
  --two  
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&"
    stop
--three
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OOOO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&"
    stop
--four
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&"
    stop      
--five 
    

--six

--seven

--eight


-------------------------------------------------------------------------------------------
frameFifteen:: IO ()
frameFifteen = do
   --one
    redLine
    redLine
    redLine
   
    
  --two  
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    cyan 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&"
    stop
--three
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    cyan 
    putStr "OOOO"
    red
    putStrLn "&&&&&&&&&&&&&&&"
    stop
--four
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    cyan 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&"
    stop      
--five
    redLine
    redLine

--six

--seven

--eight


-------------------------------------------------------------------------------------------
frameSixteen :: IO ()
frameSixteen = do
   --one
  --two  
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&" 
    stop
--three
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OOOO"
    red
    putStrLn "&&&&&&&&&&&&" 
    stop
--four
    red
    putStr "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&"       
    stop
--five
    redLine
    redLine
    redLine
    redLine
    redLine

--six

--seven

--eight

loop :: IO ()
loop = do
    screenSet
    frameOne
    pause
    screenSet
    frameTwo
    pause
    screenSet
    frameThree
    pause
    screenSet
    frameFour
    pause
    screenSet
    frameFive
    pause
    screenSet
    frameSix
    pause
    screenSet
    frameSeven
    pause
    screenSet
    frameEight
    pause
    screenSet
    frameNine
    pause
    screenSet
    frameTen
    pause
    screenSet
    frameEleven
    pause
    screenSet
    frameTwelve
    pause
    screenSet
    frameThirteen
    pause
    screenSet
    frameFourteen
    pause
    screenSet
    frameFifteen
    pause
    screenSet
    frameSixteen
    pause
    loop

main = loop
