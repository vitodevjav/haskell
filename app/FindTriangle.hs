module FindTriangle where

findTriples = [(a, b, c) | c <- [1..10], b <- [1..c], a <- [1..b]]

straightTriangles = [(a, b, c) | (a, b, c) <- findTriples, a^2 + b^2 == c^2]

rightTriangles = [(a, b, c) | (a, b, c) <- straightTriangles, a + b + c == 24]