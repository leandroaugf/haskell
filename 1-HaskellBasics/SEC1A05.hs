-- toda função em Haskell aceita um único argumento - "currying"
multiply :: Int -> Int -> Int
multiply x y = x * y

main :: IO ()
main = do
--  Aplic. completa
    let result = multiply 10 5
    print result

--  Aplic. Parcial
    let tripler = multiply 3
    let answer = tripler 10
    print answer