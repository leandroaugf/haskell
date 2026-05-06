main :: IO ()
main = do
    let expenses = [8.0, 10.0, 15.0, 20.0]

    -- Sum expenses
    let total = foldl (+) 0 expenses 
    putStrLn $ "Total expenses: " ++ show total

    -- Counting all items
    let count = foldl (\acc _ -> acc + 1) 0 expenses
    print count