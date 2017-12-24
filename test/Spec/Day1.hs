module Spec.Day1 (spec) where 

import Day1
import Test.Hspec

spec :: Spec
spec = do
    describe "Day 1_1" $ do
        it "produces 3 for 1122" $
            captcha [1, 1, 2, 2] `shouldBe` 3

        it "produces 4 for 1111" $
            captcha [1, 1, 1, 1] `shouldBe` 4

        it "produces 0 for 1234" $
            captcha [1, 2, 3, 4] `shouldBe` 0

        it "produces 9 for 91212129" $
            captcha [9, 1, 2, 1, 2, 1, 2, 9] `shouldBe` 9
    
    describe "Day 1_2" $ do
        it "produces 6 for 1212" $
            captcha2 [1, 2, 1, 2] `shouldBe` 6

        it "produces 0 for 1221" $
            captcha2 [1, 2, 2, 1] `shouldBe` 0

        it "produces 4 for 123425" $
            captcha2 [1, 2, 3, 4, 2, 5] `shouldBe` 4

        it "produces 12 for 123123" $
            captcha2 [1, 2, 3, 1, 2, 3] `shouldBe` 12
        
        it "produces 4 for 12131415" $
            captcha2 [1, 2, 1, 3, 1, 4, 1, 5] `shouldBe` 4