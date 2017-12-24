module Day4 (countValid) where

import qualified Data.Set as Set

countValid :: [String] -> Int
countValid [] = 0
countValid (pass:rest)
    | valid = 1 + countValid rest
    | otherwise = countValid rest
    where
        valid = isValid $ words pass

isValid :: [String] -> Bool
isValid passwords = length passwords == length set
        where
            set = Set.fromList passwords