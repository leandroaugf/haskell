main :: IO ()
main = do
    let steps = [3200, 5100, 12000, 4700, 900]

    -- DOT COMPOSE FUNCTION - reusable
    let pipeline = foldl (+) 0
                 . filter (> 5000)
                 . map (* 1.1)
    print (pipeline steps) -- print total steps above 5000
