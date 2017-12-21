module Day2 (checksum, checksum2) where

checksum :: [[Int]] -> Int
checksum [] = 0
checksum (cur:rest) = lineCheckSum + checksum rest
    where
        lineCheckSum = maximum cur - minimum cur

checksum2 :: [[Int]] -> Int
checksum2 [] = 0
checksum2 (cur:rest) = lineCheckSum + checksum2 rest
    where
        (n1, n2) = head [(x, y) | x <- cur, y <- cur, x < y && y `mod` x == 0]
        lineCheckSum = n2 `div` n1