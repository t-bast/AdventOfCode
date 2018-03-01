module Day6 (redistribute, loop) where

import qualified Data.Map.Strict as Map
import Debug.Trace

-- Challenge 1

type MemoryBanks = Map.Map Int Int
type Index = Int
type Amount = Int

redistribute :: [Int] -> Int
redistribute mb = length mbs
  where
    mb' = Map.fromList $ zip [0 .. length mb] mb
    mbs = redistribute' mb' []

redistribute' :: MemoryBanks -> [MemoryBanks] -> [MemoryBanks]
redistribute' mb mbs | found     = mbs
                     | otherwise = redistribute' (next mb) (mb : mbs)
    where found = any (\mb' -> equals mb mb') mbs

equals :: MemoryBanks -> MemoryBanks -> Bool
equals mb1 mb2
    | length mb1 /= length mb2
    = False
    | otherwise
    = length
            ( Map.differenceWith
                (\x y -> if x == y then Nothing else Just x)
                mb1
                mb2
            )
        == 0

next :: MemoryBanks -> MemoryBanks
--next mb | trace (show mb) False = undefined
next mb = next' n i mb'
  where
    (i, n) = foldr
        ( \(curIndex, curVal) (maxIndex, maxVal) ->
            if curVal < maxVal then (maxIndex, maxVal) else (curIndex, curVal)
        )
        (0, (Map.!) mb 0)
        (Map.toList mb)
    mb' = Map.update (\_ -> Just 0) i mb

next' :: Amount -> Index -> MemoryBanks -> MemoryBanks
next' 0 _ mb = mb
next' n i mb = next' (n - 1) nextIndex nextMb
  where
    l         = length mb
    nextIndex = ((i + 1) `mod` l)
    nextMb    = Map.update (\x -> Just (x + 1)) nextIndex mb

-- Challenge 2

loop :: [Int] -> Int
loop mb = 1 + find loopState mbs
  where
    mb'       = Map.fromList $ zip [0 .. length mb] mb
    mbs       = redistribute' mb' []
    loopState = next . head $ mbs

find :: MemoryBanks -> [MemoryBanks] -> Int
find mb = length . takeWhile (not . (equals mb))