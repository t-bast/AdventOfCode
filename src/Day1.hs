module Day1 (captcha) where

captcha :: [Int] -> Int
captcha [] = 0
captcha l@(x:_) = captchaEx x l

captchaEx :: Int -> [Int] -> Int
captchaEx _ [] = 0
captchaEx n (m:[])
    | n == m = n
    | otherwise = 0
captchaEx x (n:m:rest)
    | n == m = n + captchaEx x (m:rest)
    | otherwise = captchaEx x (m:rest)