{-# LANGUAGE MultiWayIf #-}

module Main where

import Data.List

type ID = Int
type FullName = String
type Email = String
type Age = Int
type Person = (ID, FullName, Email, Age)

getEmail :: Person -> Email
getEmail (_, _, email, _) = email

square :: Int -> Int
square i = i * i

prod :: Int -> Int -> Int
prod a b = a * b

select :: Int -> String
select option =
    case option of
        1 -> "this is 1"
        2 -> "this is 2"
        4 -> "this is 4"
        _ -> "this is default"

calculateTime :: Int -> Int
calculateTime time =
    let threshold = delta * 6
        delta = 10
    in
    if | time > threshold -> time + delta
        | time <= threshold -> time - delta
        | otherwise -> time

makeAlias :: String -> String -> (String, String)
makeAlias str1 str2 = (str1, str2)

max' :: (Ord  a) => [a] -> a
max' [] = error "This is empty list. It cannot contain max element."
max' [a] = a
max' (x:xs) = max x (max' xs)


func :: [Int] -> Int
func a = 10

main :: IO ()
main = print . max' $ [6, 2, 3]
-- main = print . (\n -> n^2) $ 2
--main = print [""]
--main = print (select (square (prod 1 2)))
--main = print (head ["1", "2"])
{-main = print (str1, str2)
        where (str1, str2) = makeAlias "str1" "str2"
main = let person = getEmail (1, "New", "mail@any.com", 20)
        in print person
-}

-- lambda functions
--main = print . (\x -> x * 10) $ 10

{-
    Multiline Comment
-}

-- Single line comment
