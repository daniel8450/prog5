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
    setSGR [SetColor Background Vivid Blue]
    
cyan :: IO ()
cyan = do
    setSGR [SetColor Foreground Vivid Cyan]
    setSGR [SetColor Background Vivid Blue]
    
red :: IO ()
red = do
    setSGR [SetColor Foreground Vivid Red]
    setSGR [SetColor Background Vivid Blue]
    
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
    putStr "&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--three
    putStr "&&&&"
    blue 
    putStr "OOO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--four
    putStr "&&&&&"
    blue 
    putStr "OO"
    red
    putStrLn "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    stop
--five
    redLine
--six
    redLine
--seven
    redLine
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
