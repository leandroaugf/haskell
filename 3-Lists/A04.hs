main :: IO ()
main = do
    let greeting = "hello"
    let checkGreeting = (greeting == ['h','e','l','l','o'])
    print checkGreeting