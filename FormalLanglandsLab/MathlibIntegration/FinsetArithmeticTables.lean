import FormalLanglandsLab.MathlibIntegration.FinsetArithmeticFunctions

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.NumberTheory

def finsetDivisorCountFunctionTableUpToSix : List Nat :=
  [
    finsetDivisorCountFunction 1,
    finsetDivisorCountFunction 2,
    finsetDivisorCountFunction 3,
    finsetDivisorCountFunction 4,
    finsetDivisorCountFunction 5,
    finsetDivisorCountFunction 6
  ]

def finsetSumOfDivisorsFunctionTableUpToSix : List Nat :=
  [
    finsetSumOfDivisorsFunction 1,
    finsetSumOfDivisorsFunction 2,
    finsetSumOfDivisorsFunction 3,
    finsetSumOfDivisorsFunction 4,
    finsetSumOfDivisorsFunction 5,
    finsetSumOfDivisorsFunction 6
  ]

def finsetSquareDivisorSumFunctionTableUpToSix : List Nat :=
  [
    finsetSquareDivisorSumFunction 1,
    finsetSquareDivisorSumFunction 2,
    finsetSquareDivisorSumFunction 3,
    finsetSquareDivisorSumFunction 4,
    finsetSquareDivisorSumFunction 5,
    finsetSquareDivisorSumFunction 6
  ]

theorem finsetDivisorCountFunctionTableUpToSix_value :
    finsetDivisorCountFunctionTableUpToSix = [1, 2, 2, 3, 2, 4] := by
  decide

theorem finsetSumOfDivisorsFunctionTableUpToSix_value :
    finsetSumOfDivisorsFunctionTableUpToSix = [1, 3, 4, 7, 6, 12] := by
  decide

theorem finsetSquareDivisorSumFunctionTableUpToSix_value :
    finsetSquareDivisorSumFunctionTableUpToSix = [1, 5, 10, 21, 26, 50] := by
  decide

theorem finsetDivisorCountFunctionTable_matches_v4 :
    finsetDivisorCountFunctionTableUpToSix = divisorCountTableUpToSix := by
  decide

theorem finsetSumOfDivisorsFunctionTable_matches_v4 :
    finsetSumOfDivisorsFunctionTableUpToSix = sumOfDivisorsTableUpToSix := by
  decide

theorem finsetSquareDivisorSumFunctionTable_matches_v5_square_table :
    finsetSquareDivisorSumFunctionTableUpToSix =
      finsetDivisorSquareSumTableUpToSix := by
  decide

end MathlibIntegration
end FormalLanglandsLab
