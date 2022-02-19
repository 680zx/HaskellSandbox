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

replicate' :: Int -> Int -> [Int]
replicate' 

main :: IO ()
main = print . addToList $ 5