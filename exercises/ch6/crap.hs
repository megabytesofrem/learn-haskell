data Trivial = Trivial

instance Eq Trivial where
  Trivial == Trivial = True

data DayOfWeek = Mon
               | Tue
               | Weds
               | Thu
               | Fri
               | Sat
               | Sun
               deriving (Eq, Show)

instance Ord DayOfWeek where
  Fri `compare` Fri = EQ
  Fri `compare` _   = GT
  _   `compare` Fri = LT
  _   `compare` _   = EQ


data Date = Date DayOfWeek Int

instance Eq Date where
  -- pattern match since we need to extract the parts
  (Date weekday dom) == (Date weekday' dom') =
    weekday == weekday' && dom == dom'


-- Writing typeclass instances w/ polymorphic parameters
data Identity a = Identity a

-- Eq a => means Identity *has* to have an instance of Eq
instance Eq a => Eq (Identity a) where
  (Identity v) == (Identity v') = v == v'
  
