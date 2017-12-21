module Main where

import Data.Char
import qualified Day1
import qualified Day2

main :: IO ()
main = day2

readLines :: IO [String]
readLines = do
    line <- getLine
    if null line
    then return []
    else do
        rest <- readLines
        return (line:rest)

day1 :: IO ()
day1 = do
    input <- getLine
    let inputs = map digitToInt input
    putStrLn $ show $ Day1.captcha2 inputs

day2 :: IO ()
day2 = do
    spreadsheet <- readLines
    let spreadsheetLines = map (map (read :: String -> Int) . words) spreadsheet
    putStrLn $ show $ Day2.checksum2 spreadsheetLines