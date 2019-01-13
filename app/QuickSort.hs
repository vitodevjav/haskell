module QuickSort where

quickSort :: (Ord a, Show a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) =
  let smaller = quickSort [element | element <- xs, element <= x]; bigger = quickSort [element | element <- xs, element > x] in
  smaller ++ [x] ++ bigger

