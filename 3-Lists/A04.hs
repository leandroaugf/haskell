import Data.Char (ord, chr, isAlpha)

describeStart :: String -> String
describeStart [] = "Empty String"
describeStart (x:xs) =
    "Starts with the letter '" 
    ++ [x] 
    ++ "' and has "
    ++ show (length xs)
    ++ " more chars"


main :: IO ()
main = do
    putStrLn $ describeStart "Haskell"
    putStrLn $ describeStart ""
    putStrLn $ describeStart "Lists"

    putStrLn ("numeric character of letter a: " ++ show (ord 'a'))
    putStrLn ("alpha character of number 97: " ++ print (chr 97))

    print (ord 'a')
    print (chr 97)
