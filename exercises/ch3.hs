import Data.List (intercalate)
import Control.Monad (ap)

exclaim :: String -> String
exclaim = (++ "!")

fourthLetter :: String -> Char
fourthLetter = (!! 3)

letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! x

thirdLetter = (!! 2)

getLastWord :: String -> String
getLastWord = (last . words)

-- messy but almost pointfree!
reverse' :: String -> String
reverse' s = (last . words) s ++ " " ++ (intercalate " " . init . words) s

createTupleList = map (ap (,) (1 +))

isPalindrome :: String -> Bool
isPalindrome s = reverse s == s 

myAbs :: Integer -> Integer
myAbs n = if n > 0 then n else negate n
