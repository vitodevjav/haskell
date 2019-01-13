module KollatzRow where

chain :: Integer -> [Integer]
chain 1 = [1]
chain a
  | even a = a:chain (div a 2)
  | odd a = a:chain (a * 3 + 1)