module Day2 (checksum) where

checksum :: [[Int]] -> Int
checksum [] = 0
checksum (cur:rest) = lineCheckSum + checksum rest
    where
        lineCheckSum = maximum cur - minimum cur