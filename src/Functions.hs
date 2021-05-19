module Functions where

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

firstTriple :: (a, b, c) -> a
firstTriple (x, _, _) = x

secondTriple :: (a, b, c) -> b
secondTriple (_, y, _) = y

thirdTriple :: (a, b, c) -> c
thirdTriple (_, _, z) = z

-- sum' :: [a] -> Int
-- sum' [] = 0
-- sum' (x:xs) = sum' x + sum' xs

-- Own list implementations
head' :: [a] -> a
head' [] = error "gimme a list"
head' (x:_) = x

tail' :: [a] -> [a]
tail' [] = []
tail' (_:xs) = xs

init' :: [a] -> [a]
init' xs = take (length xs - 1) xs

len :: [a] -> Int
len [] = 0
len (x:xs) = 1 + len xs

capital :: String -> String
capital "" = "empty string"
capital all@(x:xs) = "the first letter of " ++ all ++ " is " ++ [x]

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
  | bmi <= skinny = "You're underweight, you emo you!"
  | bmi <= normal = "You're supposedly normal. Pffftt, I bet you're ugly"
  | bmi <= fat    = "You're fat! Lose some weight, fatty"
  | otherwise     = "You're a whale, congratulations"
  where
    bmi = weight / height ^ 2
    (skinny, normal, fat) = (18.5, 25.0, 30.0)

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
  where bmi weight height = weight / height ^ 2

initials :: String -> String -> String
initials (f:_) (l:_) = [f] ++ ". " ++ [l] ++ "." 

cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
  let sideArea = 2  * pi * r * h
      topArea  = pi * r ^ 2
  in
    sideArea + 2 * topArea

describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of []   -> "empty"
                                               [x]  -> "a single item list"
                                               xs   -> "a longer list"
