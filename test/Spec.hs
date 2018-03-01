import Test.Hspec
import qualified Spec.Day1
import qualified Spec.Day2
import qualified Spec.Day3
import qualified Spec.Day4
import qualified Spec.Day5
import qualified Spec.Day6

main :: IO ()
main = do
    hspec Spec.Day1.spec
    hspec Spec.Day2.spec
    hspec Spec.Day3.spec
    hspec Spec.Day4.spec
    hspec Spec.Day5.spec
    hspec Spec.Day6.spec
     