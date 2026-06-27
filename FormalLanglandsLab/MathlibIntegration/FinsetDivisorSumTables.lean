import FormalLanglandsLab.MathlibIntegration.FinsetDivisorSums

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.NumberTheory

def finsetDivisorSumTableUpToSix : List Nat :=
  [
    mathlibDivisorFinsetSum 1,
    mathlibDivisorFinsetSum 2,
    mathlibDivisorFinsetSum 3,
    mathlibDivisorFinsetSum 4,
    mathlibDivisorFinsetSum 5,
    mathlibDivisorFinsetSum 6
  ]

def finsetDivisorSquareSumTableUpToSix : List Nat :=
  [
    mathlibDivisorFinsetSquareSum 1,
    mathlibDivisorFinsetSquareSum 2,
    mathlibDivisorFinsetSquareSum 3,
    mathlibDivisorFinsetSquareSum 4,
    mathlibDivisorFinsetSquareSum 5,
    mathlibDivisorFinsetSquareSum 6
  ]

theorem finsetDivisorSumTableUpToSix_value :
    finsetDivisorSumTableUpToSix = [1, 3, 4, 7, 6, 12] := by
  decide

theorem finsetDivisorSquareSumTableUpToSix_value :
    finsetDivisorSquareSumTableUpToSix = [1, 5, 10, 21, 26, 50] := by
  decide

theorem finsetDivisorSumTable_matches_v4_table :
    finsetDivisorSumTableUpToSix = sumOfDivisorsTableUpToSix := by
  decide

theorem finsetDivisorCardAndSumTable_lengths_match :
    finsetDivisorCardTableUpToSix.length = finsetDivisorSumTableUpToSix.length := by
  rfl

theorem finsetDivisorSquareSumTable_length :
    finsetDivisorSquareSumTableUpToSix.length = 6 := by
  rfl

end MathlibIntegration
end FormalLanglandsLab
