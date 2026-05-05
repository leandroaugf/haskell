main :: IO ()
main = do
    let points = [ (x,y) | x <- [-2..2], y <- [-2..2]
                 , x * x + y * y <= 4]
    mapM_ print points
    putStrLn $ show (length points) ++ " points in the circle"