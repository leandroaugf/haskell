medalists :: [String] -> String
medalists podium =      -- list1  list2
    unlines ( zipWith (++) labels podium )
  where
    labels = ["Winner: ", "2nd place: ", "3rd place: "]

main :: IO ()
main = do
    let playlist = ["Song B", "Song C"]
    let full = "Intro" : "Song A" : playlist -- DOESN'T change the original list 
    print full


    putStrLn $ medalists ["leo", "bibi", "glends"]
