-- Valor absoluto com IF
absol x = if x >= 0 then x else -x

-- Valor absoluto com guardas
absolut x 
  | x >= 0 = x
  | otherwise = -x

-- Passando tail como argumento
tamanhoLista [] = 0
tamanhoLista (_:xs) = 1 + tamanhoLista xs

tamanho = tamanhoLista [1, 3, 5, 7, 9];
