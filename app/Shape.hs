module Shape (
  Point(..),
  Shape(..),
 ) where

data Point = Point Double Double
  deriving Show
data Shape = Circle Point Double | Rectangle Point Point
  deriving Show
