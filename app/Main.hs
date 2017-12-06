module Main where

import Data.Char
import Day1

main :: IO ()
main = day1

day1 :: IO ()
day1 = do
    input <- getLine
    let inputs = map digitToInt input
    putStrLn $ show $ captcha2 inputs
