module Day3 (distance) where

distance :: Int -> Int
distance 1 = 0
distance n = abs x + abs y
    where
        (x, y) = place n

place :: Int -> (Int, Int)
place 1 = (0, 0)
place n 
    | abs x == abs y && y <= 0 = (x + 1, y)
    | abs x == abs y && y > 0 && x > 0  = (x - 1, y)
    | abs x == abs y && y > 0 && x < 0  = (x, y - 1)
    | abs x < abs y && y > 0 = (x - 1, y)
    | abs x < abs y && y < 0 = (x + 1, y)
    | abs x > abs y && x > 0 = (x, y + 1)
    | abs x > abs y && x < 0 = (x, y - 1)    
    where
        (x, y) = place (n-1)