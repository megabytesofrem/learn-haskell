data Animal = Animal { getName :: String
                     , getSpecies :: String
                     , getColor :: String
                     }

instance Eq Animal where
  (Animal name spec color) == (Animal name' spec' color') =
    name == name' && spec == spec' && color == color'

instance Show Animal where
  show (Animal name spec color) = "Information about the animal\n" ++
                                  "Name: " ++ name ++ "\n" ++
                                  "Species: " ++ spec ++ "\n" ++
                                  "Color: " ++ color ++ "\n"
