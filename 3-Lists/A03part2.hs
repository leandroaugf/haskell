import Data.Char (toUpper, toLower, isAlpha)

main :: IO ()
main = do
    let shout = [toUpper c | c <- "hello, haskell!"]
    putStrLn shout

    let protein = ["chicken", "salmon"]
    let carbo = ["rice", "salad", "avocado"]
    
--  list comprehension com duas listas -> for aninhado em for

    let meals = [c ++ " w/ " ++ p | c <- carbo, p <- protein]
    mapM_ putStrLn meals -- imprime um por linha