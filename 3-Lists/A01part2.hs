main :: IO ()
main = do
    let oldTeam = ["Alice", "Bob"]
    let newTeam = "Carol" : oldTeam
    putStrLn ("SIZE: " ++ show (length newTeam))
    putStrLn ("captain: " ++ head newTeam)
    putStrLn ("bench: " ++ show (tail newTeam))

    let list0 = [] :: [Int]
    let list1 = 10 : list0
    let list2 = 20 : list1

    putStrLn (show $ length list2)
    putStrLn (show (reverse list2))