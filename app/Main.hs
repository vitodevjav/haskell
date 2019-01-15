module Main where

import Data.String.Strip
import FirstLesson
import FunctionTemplates
import FindTriangle
import WhereAndLet
import QuickSort
import PartialApply
import KollatzRow
import Lambda
import Shape
import MyList

main :: IO ()
main =
  let a = Cons 2 $ Cons 1 Empty; b = Cons 3 $ Cons 5 Empty in
  print $ a ^++ b


