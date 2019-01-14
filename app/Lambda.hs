module Lambda where

myMap :: (a -> b) -> [a] -> [b]
myMap  f xs = foldr (\ x acc -> f x : acc) [] xs
