main :: IO ()
main = do
    let grades = [10.0, 25.0, 44.0, 58.0, 63.0, 83.0, 79.0, 88.0, 92.0]
    let passed = [g | g <- grades, g >= 60]
    print passed
    
    let heartRates = [55, 72, 88, 100, 101, 150, 170, 143, 90]
    let moderate = [h | h <- heartRates, h >= 60, h <= 140] -- cláusula AND
    let alert = [h | h <- heartRates, h < 60 || h > 140] -- cláusula OU

    putStrLn $ "Regular heartRates: " ++ show moderate
    putStrLn $ "Critical heartRates: " ++ show alert