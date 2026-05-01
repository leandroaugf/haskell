-- Casamento de padrões
describeNumber :: Int -> String
describeNumber 1 = "number one"
describeNumber 2 = "number two"
describeNumber 3 = "number three" 
describeNumber _ = "a number"

main :: IO ()
main = do
    let n1 = describeNumber 1
    let n2 = describeNumber 5
    print n1
    print n2