module Main where
import Data.Data (typeOf)
import Data.String (IsString)

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

data Shape = Shape { type'          :: String
                    , numberOfSides :: Int
                    , square        :: Double
                    , perimeter     :: Double
                    }

-- partial function application
minus4 :: (Fractional a) => a -> a
minus4 = subtract 4

zipFunc :: (a -> b -> c) -> [a] -> [b] -> [c]
zipFunc _ [] _ = []
zipFunc _ _ [] = []
zipFunc f (x:xs) (y:ys) = f x y : zipFunc f xs ys

funcTwoArgs :: Int -> Int -> Int
funcTwoArgs a b = 10 * a + 100 * b

main :: IO ()
main = print (zipFunc (funcTwoArgs) [1, 2, 3] [3, 4, 5])