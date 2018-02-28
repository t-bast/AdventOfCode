module Spec.Day5 (spec) where

import Day5
import Test.Hspec

spec :: Spec
spec =
    describe "Day 5_1"
        $          it "jumps out of the maze"
        $          escape [0, 3, 0, 1, -3]
        `shouldBe` 5