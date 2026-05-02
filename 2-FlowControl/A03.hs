-- Tuplas, triplas, etc
splitBill :: Double -> Int -> (Double, Double)
splitBill total people =
    let share = total / (fromIntegral people)
        tip = share * 0.12
    in (share, tip)

main :: IO ()
main = do
    let cart = [ ("coffee", 25.0),
                 ("detergent", 3.50),
                 ("basketball", 90.0) ]

    let (each, tip) = splitBill 120.0 3
    let names = map fst cart

    putStrLn ("each pays R$" ++ show each) 
    putStrLn ("Tip: R$" ++ show tip)

    let result = splitBill 130.0 3 
    print result
    print names
