module KollatzRow where

chain :: Integer -> [Integer]
chain 1 = [1]
chain a
  | even a = a:chain (div a 2)
  | odd a = a:chain (a * 3 + 1)


findLongerThanFifteen :: Int
findLongerThanFifteen = length (filter isLonger (map chain [1..100]))
  where isLonger xs = length xs > 15