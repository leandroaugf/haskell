addTip :: Double -> Double
addTip bill = 
    bill + bill * 0.16

main :: IO ()
main = do
    let bills = [25.0, 32.5, 18.5, 10.00]
    let tipBills = map addTip bills
    print tipBills

    let expensive = filter (>= 20.0) bills
    print expensive