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
    threadDelay 70000

    
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
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
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
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
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
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--three
    red
    putStr "&&&"
    blue 
    putStr "OOOO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--four
    red
    putStr "&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--five
    redLine
--six
    redLine
--seven

--eight







    
loop :: IO ()
loop = do
    screenSet
    frameOne
    pause
   -- screenSet
  -- frameTwo
   -- pause
   -- screenSet
   -- frameThree
  --  pause
  --  screenSet
 --   frameFour
 --   pause
   -- screenSet
   -- frameFive
   -- pause
  --  screenSet--
    --frameSix
    --pause
    --screenSet
    --frameSeven
    --pause
    

    
  
main = loop
