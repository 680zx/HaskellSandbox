-- {-# LANGUAGE MultiWayIf #-}

module Main where

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

main :: IO ()
main = print (select (square (prod 1 2)))

{-
    Multiline Comment
-}

-- Single line comment
