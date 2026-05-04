main :: IO ()
main = do
    let nums = [1..10]
    print nums

    let num = nums !! 0
    print num
    
    
    print (take 3 nums)
    print (drop 3 nums)
    print (reverse nums)

    print (elem 5 nums) -- checks if number 5 is on the list
    print (minimum nums)
    print (maximum nums)