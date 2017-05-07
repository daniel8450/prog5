import Data.Function
import Data.List

type C = Int
type Op = Char

infixl 6 :+:, :-:
infixl 7 :*:, :/:

--infix 1 :=
data Exp
  = C Int
  | Op Char
  | Exp :+: Exp
  | Exp :-: Exp
  | Exp :*: Exp
  | Exp :/: Exp
  


eval :: Exp -> Exp -> Int
eval (C n) x           = n

eval (exp1 :+: exp2) x = eval exp1 x + eval exp2 x
eval (exp1 :-: exp2) x = eval exp1 x - eval exp2 x
eval (exp1 :*: exp2) x = eval exp1 x * eval exp2 x 
eval (exp1 :/: exp2) x = eval exp1 x `div` eval exp2 x



main = do
let x = 0
let r1 = 0
let r2 = 0
--if x == 0
   --then do 
putStrLn "Enter the first term:"
inputIt <- getLine
if (read inputIt) == 1 then print ("OKTHEN1")
                       else print ("notOK")
--else       
--putStrLn "Enter the next term:"
--inputIt <- getLine
--if (read inputIt) == Int then print ("OKTHENN2222")
