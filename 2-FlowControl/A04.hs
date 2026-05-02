-- pattern matching -> "switch" de haskell

queuedSongs :: [String] -> String
queuedSongs songs =
    let status = case songs of
            []      -> "No songs queued"
            [x]     -> "On track: " ++ x
            (x:_)   -> "Playing: " ++ x
                        ++ " (more queued)"
    in status

systemAction :: String -> String -> String
systemAction user action =

    let result = case user of
            "admin" -> case action of
                "edit"   -> "item edited!"
                "delete" -> "item deleted!"
                _        -> "no action specified."

            "guest" -> "Access denied."
            _       -> "please log in."
    in result


main :: IO ()
main = do
    let playlist = ["Glamour Tropical", 
                            "Dead To Me"]
    putStrLn (queuedSongs playlist)

    putStrLn (systemAction "admin" "edit")

