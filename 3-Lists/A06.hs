myTake :: Int -> [a] -> [a]
myTake 0 _ = []
myTake _ [] = []
myTake n (x:xs) = x : myTake (n-1) xs

myZip :: [a] -> [b] -> [(a, b)]
myZip [] _ = []
myZip _ [] = []
myZip (x:xs) (y:ys) = 
    (x, y) : myZip xs ys

main :: IO ()
main = do
    let letters = ['a','b','c','d', 'e']
    let numbers = [10, 20, 30, 40, 50, 60, 70]

    print (myTake 3 numbers)
    print (myZip numbers letters)