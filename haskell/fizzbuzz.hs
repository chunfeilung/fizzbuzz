main :: IO()
main = mapM_ putStrLn $ fizzDemThings 100

fizzDemThings :: Int -> [String]
fizzDemThings numbah = take numbah (map fizzThatThang [1..])

fizzThatThang :: Integer -> String
fizzThatThang numbah | doesItFizz numbah = "Fizz"
                     | doesItBuzz numbah = "Buzz"
                     | doesItBlow numbah = "FizzBuzz"
                     | otherwise         = show numbah

doesItFizz :: Integer -> Bool
doesItFizz numbah = (&&) (0 == numbah `mod` 3) (not (doesItBlow numbah))

doesItBuzz :: Integer -> Bool
doesItBuzz numbah = (&&) (0 == numbah `mod` 5) (not (doesItBlow numbah))

doesItBlow :: Integer -> Bool
doesItBlow numbah = 0 == numbah `mod ` 15
