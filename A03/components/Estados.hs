module Estados
    where

data DFA a 
  = DFA {
  start :: a,
  delta :: a -> Char -> a,
  finals :: a -> Bool 
}

endsWithOne :: DFA Bool
endsWithOne = DFA False transition id
  where
    transition False '0' = False
    transition False '1' = True 
    transition True '0' = False
    transition True '1' = True
    transition _ _ = False


-- IA function
runDFA :: DFA a -> String -> Bool
runDFA dfa input = finals dfa (foldl (delta dfa) (start dfa) input)
-- end IA functions