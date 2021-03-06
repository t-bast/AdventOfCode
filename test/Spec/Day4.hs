module Spec.Day4 (spec) where

import Day4
import Test.Hspec

spec :: Spec
spec = do
    describe "Day 4_1" $ do
        it "produces 1 for single valid passphrase"
            $          countValid ["aa bb cc"]
            `shouldBe` 1

        it "produces 2 for mixed valid and invalid"
            $          countValid ["aa bb cc", "aa bb cc aa", "aa bb cc aaa"]
            `shouldBe` 2

    describe "Day 4_2" $ do
        it "accepts valid passwords"
            $          countValid2 ["abcde fghij", "abcde abadec"]
            `shouldBe` 2

        it "skips invalid passwords"
            $          countValid2
                           [ "a ab abc abd abf abj"
                           , "oiii ioii iioi iiio"
                           , "iiii oiii ooii oooi oooo"
                           ]
            `shouldBe` 2