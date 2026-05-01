-- nested if
tipMsgIf :: Double -> String
tipMsgIf pct =
    if pct >= 0.20
    then "generous tipper"
    else if pct >= 0.15
        then "nice tipper"
        else "below average"

-- guard styles
tipMsgGuards :: Double -> String
tipMsgGuards pct 
    | pct >= 0.20 = "generous tipper"
    | pct >= 0.15 = "nice tipper"
    | otherwise   = "below average"

main :: IO ()
main = do
    let tip01 = tipMsgGuards 0.22
    let tip02 = tipMsgGuards 0.18
    