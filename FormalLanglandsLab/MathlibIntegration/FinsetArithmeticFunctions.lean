import FormalLanglandsLab.MathlibIntegration.FinsetTableComparison

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.Core
open FormalLanglandsLab.NumberTheory

def finsetDivisorCountFunction : ArithmeticFunction Nat :=
  fun n => mathlibDivisorFinsetCard n

def finsetSumOfDivisorsFunction : ArithmeticFunction Nat :=
  fun n => mathlibDivisorFinsetSum n

def finsetSquareDivisorSumFunction : ArithmeticFunction Nat :=
  fun n => mathlibDivisorFinsetSquareSum n

theorem finsetDivisorCountFunction_one :
    finsetDivisorCountFunction 1 = 1 := by
  decide

theorem finsetDivisorCountFunction_two :
    finsetDivisorCountFunction 2 = 2 := by
  decide

theorem finsetDivisorCountFunction_three :
    finsetDivisorCountFunction 3 = 2 := by
  decide

theorem finsetDivisorCountFunction_four :
    finsetDivisorCountFunction 4 = 3 := by
  decide

theorem finsetDivisorCountFunction_six :
    finsetDivisorCountFunction 6 = 4 := by
  decide

theorem finsetDivisorCountFunction_twelve :
    finsetDivisorCountFunction 12 = 6 := by
  decide

theorem finsetSumOfDivisorsFunction_one :
    finsetSumOfDivisorsFunction 1 = 1 := by
  decide

theorem finsetSumOfDivisorsFunction_two :
    finsetSumOfDivisorsFunction 2 = 3 := by
  decide

theorem finsetSumOfDivisorsFunction_three :
    finsetSumOfDivisorsFunction 3 = 4 := by
  decide

theorem finsetSumOfDivisorsFunction_four :
    finsetSumOfDivisorsFunction 4 = 7 := by
  decide

theorem finsetSumOfDivisorsFunction_six :
    finsetSumOfDivisorsFunction 6 = 12 := by
  decide

theorem finsetSumOfDivisorsFunction_twelve :
    finsetSumOfDivisorsFunction 12 = 28 := by
  decide

theorem finsetSquareDivisorSumFunction_one :
    finsetSquareDivisorSumFunction 1 = 1 := by
  decide

theorem finsetSquareDivisorSumFunction_two :
    finsetSquareDivisorSumFunction 2 = 5 := by
  decide

theorem finsetSquareDivisorSumFunction_three :
    finsetSquareDivisorSumFunction 3 = 10 := by
  decide

theorem finsetSquareDivisorSumFunction_four :
    finsetSquareDivisorSumFunction 4 = 21 := by
  decide

theorem finsetSquareDivisorSumFunction_six :
    finsetSquareDivisorSumFunction 6 = 50 := by
  decide

theorem finsetSquareDivisorSumFunction_twelve :
    finsetSquareDivisorSumFunction 12 = 210 := by
  decide

theorem finsetDivisorCountFunction_matches_v4_twelve :
    finsetDivisorCountFunction 12 = divisorCountFunction 12 := by
  decide

theorem finsetSumOfDivisorsFunction_matches_v4_twelve :
    finsetSumOfDivisorsFunction 12 = sumOfDivisorsFunction 12 := by
  decide

theorem finsetSquareDivisorSumFunction_matches_v4_twelve :
    finsetSquareDivisorSumFunction 12 = squareDivisorSumFunction 12 := by
  decide

end MathlibIntegration
end FormalLanglandsLab
