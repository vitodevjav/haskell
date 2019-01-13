module WhereAndLet where

calculateBMI :: [(Double, Double)] -> [Double]
calculateBMI list = [bmi | (w,h) <- list, let bmi = w / h^2]