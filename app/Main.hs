{-# LANGUAGE DuplicateRecordFields, FlexibleInstances, UndecidableInstances #-}

module Main where

import Control.Monad
import Data.Bits
import Data.List
import Debug.Trace
import System.Environment
import System.IO
import System.IO.Unsafe

compareAB :: (Ord a) => (Int, Int) -> (a, a) -> (Int, Int)
compareAB (accA, accB) (a,b) =
  if a > b then (accA + 1, accB)
  else if a < b then (accA, accB + 1)
  else (accA, accB)

compareTriplets :: [Int] -> [Int] -> [Int]
compareTriplets a b =
  let tuple = foldl compareAB (0,0) $ zip a b in
  [fst tuple, snd tuple]

main :: IO()
main = do
    let a = [1,2,3]
        b = [2,5,6]

    print $ compareTriplets a b


