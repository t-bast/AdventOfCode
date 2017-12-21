import Test.Hspec
import qualified Spec.Day1
import qualified Spec.Day2

main :: IO ()
main = do
    hspec Spec.Day1.spec
    hspec Spec.Day2.spec