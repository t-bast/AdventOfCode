module Spec.Day6 (spec) where

import Day6
import Test.Hspec

spec :: Spec
spec = do
    describe "Day 6_1"
        $          it "finds cycle"
        $          redistribute [0, 2, 7, 0]
        `shouldBe` 5

    describe "Day6_2"
        $          it "finds cycle and loop"
        $          loop [0, 2, 7, 0]
        `shouldBe` 4