module Day5 (escape) where

import Control.Lens

-- Challenge 1

type JumpState = (Int, Int, [Int])

escape :: [Int] -> Int
escape jumps = count where (count, _, _) = escape' (1, 0, jumps)

escape' :: JumpState -> JumpState
escape' js = case next js of
    Nothing  -> js
    Just js' -> escape' js'

-- next executes one jump.
-- It's highly inefficient because we create a new list at each step
-- with only one value changed.
next :: JumpState -> Maybe JumpState
next (count, i, jumps)
    | length jumps <= ii = Nothing
    | otherwise = Just (count + 1, ii, jumps & element i .~ (jumpValue + 1))
  where
    jumpValue = jumps !! i
    ii        = i + jumpValue
