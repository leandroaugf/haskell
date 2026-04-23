-- USO DE GUARDAS 

gradeReport :: Int -> String
gradeReport nota = 
    name ++ ": " ++ letter ++ " (" ++ status ++ ")"
    where
        name = "Leandro"
        letter
            | nota >= 90 = "A"
            | nota >= 80 = "B"
            | nota >= 70 = "C"
            | nota >= 60 = "D"
            | otherwise   = "F"
        status
            | nota >= 60 = "Aprovado"
            | otherwise   = "Reprovado"

main :: IO () 
main = do
    print (gradeReport 87)    
    print (gradeReport 59) 