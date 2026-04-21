main :: IO ()
main = do
  let place = "Haskell Land"
  putStrLn $ "Hello, World! from " ++ place ++ "!"

  let item = "Running Shoes"
  let price = 89.99
  let quantity = 2
  let total = price * fromIntegral quantity

  putStrLn ("Item: " ++ item)
  print total