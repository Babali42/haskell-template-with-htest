-- test/Spec.hs
import Test.Hspec
import Lib (addOne)

main :: IO ()
main = hspec $ do
  describe "Example" $ do
    it "1 + 1 == 2" $
      (addOne 1) `shouldBe` 2
