-- test/Spec.hs
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Example" $ do
    it "1 + 1 == 2" $
      (1 + 1) `shouldBe` 2
