-- working w tuples
makePlayer :: String -> Int -> (String, Int)
makePlayer name score = (name, score)

showPlayer :: (String, Int) -> String
showPlayer (n, s) = 
    n ++ ": " ++ show s ++ " pts"


totalExpenses :: [Double] -> Double
totalExpenses items = sum items

-- count items above a limit
countAbove :: Double -> [Double] -> Int
countAbove limit items =
    length (filter (>limit) items)


averageExpense :: [Double] -> Double
averageExpense items = 
    let total = sum items
        count = length items
    in total / fromIntegral count


main :: IO ()
main = do
    let player = makePlayer "Leandro" 90
    let info = showPlayer player
    putStrLn info
    putStrLn ""

    let costs = [1.0, 2.5, 5.0, 4.3, 31.0, 20.1]
    let total = totalExpenses costs
    putStrLn $ "total costs: " ++ show total

    let big = countAbove 20.0 costs
    putStrLn $ "items above 20: " ++ show big

    let avg = averageExpense costs
    putStrLn $ "average cost: " ++ show avg
