data TisAnInteger = TisAn Integer

instance Eq TisAnInteger where
  (TisAn i) == (TisAn i') = i == i'

data TwoIntegers = Two Integer Integer

instance Eq TwoIntegers where
  (Two a b) == (Two a' b') = a == a' && b == b'

data StringOrInt =
    TisAnInt Int
  | TisAString String

instance Eq StringOrInt where
  (TisAnInt i) == (TisAnInt i') = i == i'
  (TisAString s) == (TisAString s') = s == s'

-- Pair
data Pair a = Pair a a

instance Eq a => Eq (Pair a) where
  (Pair a b) == (Pair a' b') = a == a' && b == b'

-- Tuple
data Tuple a b = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (Tuple a b) == (Tuple a' b') = a == a' && b == b'

-- Which
data Which a = ThisOne a
             | ThatOne a

instance Eq a => Eq (Which a) where
  (ThisOne a) == (ThisOne b) = a == b
  (ThisOne a) == _           = False

  (ThatOne a) == (ThatOne b) = a == b
  (ThatOne a) == _           = False

-- EitherOr
data EitherOr a b = Hello a
                  | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (Hello a)   == (Hello b)   = a == b
  (Goodbye a) == (Goodbye b) = a == b
  _ == _  = False
  
