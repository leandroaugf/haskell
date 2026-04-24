-- "in" and "where" : depends on context

-- FUNÇÃO COM USO DE IN => "in" porque está fora do bloco "do"
imc :: Double -> Double -> String
imc weight height = 
    let index = weight / (height * height)
    in if index < 18.5 
        then "Abaixo do peso"
        else if index < 25.0
            then "Peso normal"
            else "Acima do peso"

-- FUNÇÃO COM USO DE "WHERE"
gorjeta :: Double -> Double -> String
gorjeta total percent = 
    "Gorjeta: R$" ++ show valorGorjeta 
        ++ "| Total: R$" ++ show totalFinal  
    where
        valorGorjeta = total * percent 
        totalFinal = total + valorGorjeta

main :: IO ()
main = do
    let result = imc 68.0 1.80
    print result

    let contaRestaurante = gorjeta 150 0.1 
    print contaRestaurante
