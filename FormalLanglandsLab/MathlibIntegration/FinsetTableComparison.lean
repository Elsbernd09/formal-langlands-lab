import FormalLanglandsLab.MathlibIntegration.FinsetListComparison

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.NumberTheory

def v5CountComparisonTableUpToSix : List Bool :=
  [
    decide (finsetListDivisorCountAgreement 1),
    decide (finsetListDivisorCountAgreement 2),
    decide (finsetListDivisorCountAgreement 3),
    decide (finsetListDivisorCountAgreement 4),
    decide (finsetListDivisorCountAgreement 5),
    decide (finsetListDivisorCountAgreement 6)
  ]

def v5SumComparisonTableUpToSix : List Bool :=
  [
    decide (finsetListDivisorSumAgreement 1),
    decide (finsetListDivisorSumAgreement 2),
    decide (finsetListDivisorSumAgreement 3),
    decide (finsetListDivisorSumAgreement 4),
    decide (finsetListDivisorSumAgreement 5),
    decide (finsetListDivisorSumAgreement 6)
  ]

def v5SquareComparisonTableUpToSix : List Bool :=
  [
    decide (finsetSquareSumVerifiedAgreement 1),
    decide (finsetSquareSumVerifiedAgreement 2),
    decide (finsetSquareSumVerifiedAgreement 3),
    decide (finsetSquareSumVerifiedAgreement 4),
    decide (finsetSquareSumVerifiedAgreement 5),
    decide (finsetSquareSumVerifiedAgreement 6)
  ]

def allTrueSix : List Bool :=
  [true, true, true, true, true, true]

theorem countComparisonTable_all_true :
    v5CountComparisonTableUpToSix = allTrueSix := by
  decide

theorem sumComparisonTable_all_true :
    v5SumComparisonTableUpToSix = allTrueSix := by
  decide

theorem squareComparisonTable_all_true :
    v5SquareComparisonTableUpToSix = allTrueSix := by
  decide

theorem countTable_matches_v4_count_table :
    finsetDivisorCardTableUpToSix = divisorCountTableUpToSix := by
  decide

theorem sumTable_matches_v4_sum_table :
    finsetDivisorSumTableUpToSix = sumOfDivisorsTableUpToSix := by
  decide

theorem squareTable_matches_verified_values :
    finsetDivisorSquareSumTableUpToSix = [1, 5, 10, 21, 26, 50] := by
  decide

end MathlibIntegration
end FormalLanglandsLab
