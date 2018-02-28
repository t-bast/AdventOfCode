module Day4 (countValid, countValid2) where

import Data.List
import qualified Data.Set as Set

-- Challenge 1

countValid :: [String] -> Int
countValid [] = 0
countValid (pass:rest) | valid     = 1 + countValid rest
                       | otherwise = countValid rest
    where valid = isValid $ words pass

isValid :: [String] -> Bool
isValid passwords = length passwords == length set
    where set = Set.fromList passwords

-- Challenge 2

countValid2 :: [String] -> Int
countValid2 [] = 0
countValid2 (pass:rest) | valid     = 1 + countValid2 rest
                        | otherwise = countValid2 rest
    where valid = isValid2 $ words pass

isValid2 :: [String] -> Bool
isValid2 [] = True
isValid2 (p:ps) | hasAnagram p ps = False
                | otherwise       = isValid2 ps

hasAnagram :: String -> [String] -> Bool
hasAnagram p [] = False
hasAnagram p (p1:ps) | isAnagram p p1 = True
                     | otherwise      = hasAnagram p ps

isAnagram :: String -> String -> Bool
isAnagram s1 s2 = isAnagramSorted (sort s1) (sort s2)
  where
    isAnagramSorted [] [] = True
    isAnagramSorted (x:xs) (y:ys) | length xs /= length ys = False
                                  | x == y = isAnagramSorted xs ys
                                  | otherwise = False