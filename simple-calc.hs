import Data.Function
import Data.List

type C = Int
type Op = String

infixl 6 :+:, :-:
infixl 7 :*:, :/:

infix 1 :=

data Exp
  = C Int
  | C :+: C
  | C :-: C
  | C :*: C
  | C :/: C
  
type Val = Int
type Store = [(C, Val)]

eval :: Exp -> Store -> Val
eval (C n) x           = n
eval (V n) x           = n

eval (exp1 :+: exp2) x = eval exp1 x + eval exp2 x
eval (exp1 :-: exp2) x = eval exp1 x - eval exp2 x
eval (exp1 :*: exp2) x = eval exp1 x * eval exp2 x 
eval (exp1 :/: exp2) x = eval exp1 x `div` eval exp2 x



main = do
let x = 0
let r1 = 0
let r2 = 0
if x == 0
  then do
    putStrLn "Enter the first term:"
    let n = inputIt <- getLine
    if n == Int then print ("OKTHEN1")
    x = 1
  else putStrLn "Enter the next term:"
    if n == Int then print ("OKTHEN1")
