module Main where
import Data.Data (typeOf)

eqTo :: Int -> String
eqTo 1 = "It's 1"
eqTo _ = "Not 1"

func :: [(Int, Int)] -> [Int]
func f = [t1 + t2 | (t1, t2) <- f]

guard :: Int -> [Double]
guard inNum
    | inNum <= 10 = [1, 2, 3]
    | inNum > 10 = [11, 12, 13]
    | otherwise = []

shapeSquare :: Double -> Double -> Double 
shapeSquare length width
    | length > 0 && width > 0 = square
    | otherwise = 0
    where square = length * width

replicate' :: Int -> a -> [a]
replicate' repeat x
    | repeat <= 0 = []
    | otherwise = x : replicate' (repeat - 1) x

take' :: Int -> [a] -> [a]
take' n _
    | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n - 1) xs

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

main :: IO ()
main = print (reverse' [1, 2, 3, 4, 5, 6])