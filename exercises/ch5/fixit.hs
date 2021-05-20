fstString :: String -> String
fstString x = x ++ " in the rain"

sndString :: String -> String
sndString x = x ++ " over the rainbow"

sing = if (x > y) then fstString x else sndString y
  where x = "Singin"
        y = "Somewhere"

singOther = if (x > y) then fstString x else sndString y
  where x = "Somewhere"
        y = "Singin"
