module Day5 (escape, escape2) where

import qualified Data.Map.Strict as Map

-- Challenge 1

type JumpState = (Int, Int, Map.Map Int Int)

escape :: [Int] -> Int
escape jumps = count
    where (count, _, _) = escape' (+ 1) (1, 0, jumpsMap jumps)

jumpsMap :: [Int] -> Map.Map Int Int
jumpsMap js = Map.fromList $ zip [0 .. length js - 1] js

escape' :: (Int -> Int) -> JumpState -> JumpState
escape' offsetUpdate js = case next offsetUpdate js of
    Nothing  -> js
    Just js' -> escape' offsetUpdate js'

-- next executes one jump.
-- It's highly inefficient because we create a new list at each step
-- with only one value changed.
next :: (Int -> Int) -> JumpState -> Maybe JumpState
next offsetUpdate (count, i, jumps)
    | length jumps <= ii = Nothing
    | otherwise = Just
        ( count + 1
        , ii
        , Map.update (\_ -> Just (offsetUpdate jumpValue)) i jumps
        )
  where
    jumpValue = (Map.!) jumps i
    ii        = i + jumpValue

-- Challenge 2

escape2 :: [Int] -> Int
escape2 jumps = count
    where (count, _, _) = escape' offsetUpdate2 (1, 0, jumpsMap jumps)

offsetUpdate2 :: Int -> Int
offsetUpdate2 i | i < 3     = i + 1
                | otherwise = i - 1
