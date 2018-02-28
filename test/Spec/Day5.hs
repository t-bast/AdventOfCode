module Spec.Day5 (spec) where

import Day5
import Test.Hspec

spec :: Spec
spec = do
    describe "Day 5_1"
        $          it "jumps out of the maze"
        $          escape [0, 3, 0, 1, -3]
        `shouldBe` 5
    describe "Day5_2"
        $          it "jumps out of the maze 2"
        $          escape2 [0, 3, 0, 1, -3]
        `shouldBe` 10