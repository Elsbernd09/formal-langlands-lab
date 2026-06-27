import FormalLanglandsLab.MathlibIntegration.V6DivisorTables
import FormalLanglandsLab.MathlibIntegration.FinsetArithmeticFunctions

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.NumberTheory

def v6CountBridgeToV4
    (n : Nat)
    (v6Count : Nat) : Prop :=
  v6Count = divisorCountFunction n

def v6SumBridgeToV4
    (n : Nat)
    (v6Sum : Nat) : Prop :=
  v6Sum = sumOfDivisorsFunction n

def v6SquareSumBridgeToV4
    (n : Nat)
    (v6SquareSum : Nat) : Prop :=
  v6SquareSum = squareDivisorSumFunction n

theorem v6CountBridge_six :
    v6CountBridgeToV4 6 v6DivisorCountSix := by
  rfl

theorem v6CountBridge_twelve :
    v6CountBridgeToV4 12 v6DivisorCountTwelve := by
  rfl

theorem v6SumBridge_six :
    v6SumBridgeToV4 6 v6DivisorSumSix := by
  rfl

theorem v6SumBridge_twelve :
    v6SumBridgeToV4 12 v6DivisorSumTwelve := by
  rfl

theorem v6SquareSumBridge_six :
    v6SquareSumBridgeToV4 6 v6SquareDivisorSumSix := by
  rfl

theorem v6SquareSumBridge_twelve :
    v6SquareSumBridgeToV4 12 v6SquareDivisorSumTwelve := by
  rfl

theorem v6CountBridge_to_finsetFunction_six :
    v6DivisorCountSix = finsetDivisorCountFunction 6 := by
  rfl

theorem v6CountBridge_to_finsetFunction_twelve :
    v6DivisorCountTwelve = finsetDivisorCountFunction 12 := by
  rfl

theorem v6SumBridge_to_finsetFunction_six :
    v6DivisorSumSix = finsetSumOfDivisorsFunction 6 := by
  rfl

theorem v6SumBridge_to_finsetFunction_twelve :
    v6DivisorSumTwelve = finsetSumOfDivisorsFunction 12 := by
  rfl

theorem v6SquareSumBridge_to_finsetFunction_six :
    v6SquareDivisorSumSix = finsetSquareDivisorSumFunction 6 := by
  rfl

theorem v6SquareSumBridge_to_finsetFunction_twelve :
    v6SquareDivisorSumTwelve = finsetSquareDivisorSumFunction 12 := by
  rfl

end MathlibIntegration
end FormalLanglandsLab
