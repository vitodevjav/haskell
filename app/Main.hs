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

main :: IO ()
main =
  let point = Point 2 3; shape = Circle point 3  in
  print (shape)


