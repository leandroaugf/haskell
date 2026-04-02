-- IO
main :: IO ()
main = putStrLn "Hello, world!"

-- definição de funções
soma :: Int -> Int -> Int
soma a b = a + b
x = 10; y = 20;
resultSoma = soma x y

-- Tratamento de listas
lista = [1, 3, 5, 7, 9]
headLista = head lista; 
tailLista = tail lista;

listaX2 = map (*2) lista;
filtroMaiorQue2 = filter (>2) lista;

-- casamento de padrões
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)
