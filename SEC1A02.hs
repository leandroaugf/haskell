main :: IO ()
main = do
  let goal = 10 :: Integer -- tamanho arbitrário

  let biggest = maxBound :: Int -- tamanho fixo
  let piF = 3.14159265358979 :: Float
  let piD = 3.14159265358979 :: Double
  
  print biggest
  print piF
  print piD

