f :: Int -> String
f = \i -> show i

g :: String -> Char
g = head

h :: Int -> Char
h = head . show

-- 2.
data A = A
data B = B
data C = C

q :: A -> B
q = \_ -> B

w :: B -> C
w = \_ -> C

e :: A -> C
e = \_ -> C

-- 3.
data X = X
data Y = Y
data Z = Z

xz :: X -> Z
xz = \_ -> Z

yz :: Y -> Z
yz = \_ -> Z

xform :: (X, Y) -> (Z, Z)
xform = \_ -> (Z, Z)

munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge = \f g a -> let (w, _) = g (f a) in w
