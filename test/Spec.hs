import Day1
import Test.Hspec

main :: IO ()
main = hspec $ do
    describe "Day 1" $ do
        it "produces 3 for 1122" $ do
            captcha [1, 1, 2, 2] `shouldBe` 3

        it "produces 4 for 1111" $ do
            captcha [1, 1, 1, 1] `shouldBe` 4

        it "produces 0 for 1234" $ do
            captcha [1, 2, 3, 4] `shouldBe` 0

        it "produces 9 for 91212129" $ do
            captcha [9, 1, 2, 1, 2, 1, 2, 9] `shouldBe` 9