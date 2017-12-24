module Spec.Day3 (spec) where 

import Day3
import Test.Hspec

spec :: Spec
spec = do
    describe "Day 3_1" $ do
        it "produces 0 for distance to itself" $
            distance 1 `shouldBe` 0

        it "produces 3 for distance to 12" $
            distance 12 `shouldBe` 3

        it "produces 2 for distance to 23" $
            distance 23 `shouldBe` 2

        it "produces 31 for distance to 1024" $
            distance 1024 `shouldBe` 31

    describe "Day 3_2" $ do
        it "produces 1 for 1" $
            value 1 `shouldBe` 1

        it "produces 5 for 5" $
            value 5 `shouldBe` 5