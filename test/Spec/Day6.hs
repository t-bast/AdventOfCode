module Spec.Day6 (spec) where

import Day6
import Test.Hspec

spec :: Spec
spec =
    describe "Day 6_1"
        $          it "finds cycle"
        $          redistribute [0, 2, 7, 0]
        `shouldBe` 5