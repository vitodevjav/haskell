module MyList where

data MyList a = Empty | Cons a (MyList a) deriving (Show, Read, Eq, Ord)

infixr 5 ^++
(^++) :: MyList a -> MyList a -> MyList a
Empty ^++ ys = ys
Cons x xs ^++ ys = Cons x (xs ^++ ys)