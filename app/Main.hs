module Main where

import Data.Char
import qualified Day1
import qualified Day2
import qualified Day3
import qualified Day4
import qualified Day5

main :: IO ()
main = day5

readLines :: IO [String]
readLines = do
    line <- getLine
    if null line
        then return []
        else do
            rest <- readLines
            return (line : rest)

day1 :: IO ()
day1 = do
    input <- getLine
    let inputs = map digitToInt input
    print $ Day1.captcha2 inputs

day2 :: IO ()
day2 = do
    spreadsheet <- readLines
    let spreadsheetLines =
            map (map (read :: String -> Int) . words) spreadsheet
    print $ Day2.checksum2 spreadsheetLines

day3 :: IO ()
day3 = do
    input <- readLn :: IO Int
    print $ Day3.value input

day4 :: IO ()
day4 = do
    passphrases <- readLines
    print $ Day4.countValid2 passphrases

day5 :: IO ()
day5 = do
    input <- readLines
    print $ Day5.escape2 $ map (\x -> read x :: Int) input