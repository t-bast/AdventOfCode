module Day1 (captcha, captcha2) where

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

captcha2 :: [Int] -> Int
captcha2 = captcha2Ex 0

captcha2Ex :: Int -> [Int] -> Int
captcha2Ex _ [] = 0
captcha2Ex i l 
    | i == length l = 0
    | otherwise = 
        if current == halfway 
        then current + (captcha2Ex (i+1) l) 
        else captcha2Ex (i+1) l
        where
            len = length l
            halfwayIndex = (i + len `div` 2) `mod` len
            current = l !! i
            halfway = l !! halfwayIndex