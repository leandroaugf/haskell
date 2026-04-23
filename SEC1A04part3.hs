avisoClima :: Double -> String
avisoClima temp =
    describe temp ++ "!" ++ suggestion temp
  where
    describe c
        | c < 0 = show c ++ " - O tempo está congelando"
        | c < 20 = show c ++ " - O tempo está bom"
        | otherwise = show c ++ " - Está quente lá fora"
    suggestion c
        | c < 0 = " Melhor vestir uma jaqueta."
        | c < 20 = " Mas leve uma jaqueta."
        | otherwise = " Use protetor solar."

main :: IO ()
main = do
    putStrLn $ avisoClima 25
    putStrLn $ avisoClima 18