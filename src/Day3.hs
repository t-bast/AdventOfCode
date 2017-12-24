module Day3 (distance, value) where

import qualified Data.Map as Map

type Position = (Int, Int)

distance :: Int -> Int
distance 1 = 0
distance n = abs x + abs y
    where
        (x, y) = place n

place :: Int -> Position
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

value :: Int -> Int
value n = res
    where
        (_, res) = buildMap n n 

buildMap :: Int -> Int -> (Map.Map Position Int, Int)
buildMap 1 _ = (Map.fromList [((0, 0), 1)], 1)
buildMap n stop 
    | previousVal <= stop = let val = sumNeighbours pos previous in (Map.insert pos val previous, val)
    | otherwise = (previous, previousVal)
    where 
        pos = place n
        (previous, previousVal) = buildMap (n-1) stop

sumNeighbours :: Position -> Map.Map Position Int -> Int
sumNeighbours (x, y) neighbours = 
    Map.findWithDefault 0 (x - 1, y - 1) neighbours +
    Map.findWithDefault 0 (x - 1, y ) neighbours +
    Map.findWithDefault 0 (x - 1, y + 1) neighbours +
    Map.findWithDefault 0 (x, y - 1) neighbours +
    Map.findWithDefault 0 (x, y + 1) neighbours +
    Map.findWithDefault 0 (x + 1, y - 1) neighbours +
    Map.findWithDefault 0 (x + 1, y) neighbours +
    Map.findWithDefault 0 (x + 1, y + 1) neighbours