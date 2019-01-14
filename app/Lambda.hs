module Lambda where

myMap :: (a -> b) -> [a] -> [b]
myMap  f xs = foldr (\ x acc -> f x : acc) [] xs

myMaximum :: (Ord a) => [a] -> a
myMaximum = foldl1 max