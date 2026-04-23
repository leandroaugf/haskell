main :: IO ()
main = do 
  let age = 25 
  let income = 45000
  let approved = 
        age >= 18 && income >= 30000 -- primeira expressão mais à direita que o "="
  print approved
