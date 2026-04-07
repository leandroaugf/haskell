module Estados
    where

data DFA a 
  = DFA {
  start :: a,
  delta :: a -> Char -> a,
  finals :: a -> Bool 
}


-- endsWithOne é um valor, objeto
endsWithOne :: DFA Bool
endsWithOne = DFA False transition id
  where
    transition False '0' = False
    transition False '1' = True 
    transition True '0' = False
    transition True '1' = True
    transition _ _ = False

-- returns ef or not
deltaStar :: DFA a -> String -> a 
deltaStar m = foldl (delta m) (start m) -- delta do dfa m, start do dfa m

-- testa se o estado retornado é final
accept :: DFA a -> String -> Bool
accept m s = finals m (deltaStar m s) 