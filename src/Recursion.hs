module Recursion where

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x -- maximum of list with one element is just the element
maximum' (x:xs) = max x (maximum' xs)

replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
  | n <= 0     = []
  | otherwise  = x : replicate' (n - 1) x

take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
  | n <= 0     = [] -- if n <= 0, give back an empty list
take' n []     = [] -- if we're try to take from an empty list, give back an empty list
take' n (x:xs) = x : take' (n-1) xs

reverse' :: [a] -> [a]
reverse' []     = []
reverse' (x:xs) = reverse' xs ++ [x]

zip' :: [a] -> [b] -> [(a, b)]
zip' _  []  = []
zip' [] _   = []
zip' (x:xs) (y:ys) = (x,y):zip' xs ys

elem' :: (Eq a) => a -> [a] -> Bool
elem' a []     = False
elem' a (x:xs)
  | a == x     = True
  | otherwise  = a `elem'` xs


quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
  let smaller = quicksort [a | a <- xs, a <= x]
      bigger  = quicksort [a | a <- xs, a > x]
  in
    smaller ++ [x] ++ bigger
