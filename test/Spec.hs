import Test.Hspec
import qualified Spec.Day1
import qualified Spec.Day2
import qualified Spec.Day3

main :: IO ()
main = do
    hspec Spec.Day1.spec
    hspec Spec.Day2.spec
    hspec Spec.Day3.spec    