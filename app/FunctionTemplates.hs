module FunctionTemplates where

factorial :: Integer -> Integer
factorial 0 = 1
factorial x = x * factorial (x - 1)


printElements :: (Show a) => [a] -> String
printElements [] = "Empty list"
printElements [x] = "1 element " ++ show x
printElements [x, y] = "2 elements " ++ show x ++ " and " ++ show y
--named template
printElements all@[x,y,z] = "List " ++ show all ++ " contains: " ++ show x ++ show y ++ show z
printElements (x:y:z:_) = "Too long"

-- printElements [1]
-- "1 element 1"
-- printElements [1,2]
-- "2 elements 1 and 2"
-- printElements [1,2,3]
-- "List [1,2,3] contains: 123"
-- printElements [1,2,3,4]
-- "Too long"

analyzeBMI :: Double -> Double -> String
analyzeBMI weight height
  |bmi < 18.5 = "A bit"
  |bmi < 25 = "Norm"
  |bmi < 30 = "A lot"
  |otherwise = "O_o"
  where bmi = weight / height^2


