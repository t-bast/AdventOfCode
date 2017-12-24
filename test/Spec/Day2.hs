module Spec.Day2 (spec) where 

import Day2
import Test.Hspec

spec :: Spec
spec = do
    describe "Day 2_1" $ 
        it "produces 18 for provided test" $ 
            checksum [[5, 1, 9, 5], [7, 5, 3], [2, 4, 6, 8]] `shouldBe` 18

    describe "Day 2_2" $ 
        it "produces 9 for provided test" $
            checksum2 [[5, 9, 2, 8], [9, 4, 7, 3], [3, 8, 6, 5]] `shouldBe` 9