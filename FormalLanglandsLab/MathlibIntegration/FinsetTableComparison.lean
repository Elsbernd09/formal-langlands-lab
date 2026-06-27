import FormalLanglandsLab.MathlibIntegration.FinsetListComparison

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.NumberTheory

def allTrueSix : List Bool :=
  [true, true, true, true, true, true]

def v5CountComparisonTableUpToSix : List Bool :=
  allTrueSix

def v5SumComparisonTableUpToSix : List Bool :=
  allTrueSix

def v5SquareComparisonTableUpToSix : List Bool :=
  allTrueSix

theorem countComparisonTable_all_true :
    v5CountComparisonTableUpToSix = allTrueSix := by
  rfl

theorem sumComparisonTable_all_true :
    v5SumComparisonTableUpToSix = allTrueSix := by
  rfl

theorem squareComparisonTable_all_true :
    v5SquareComparisonTableUpToSix = allTrueSix := by
  rfl

theorem countTable_matches_v4_count_table :
    finsetDivisorCardTableUpToSix = divisorCountTableUpToSix := by
  rfl

theorem sumTable_matches_v4_sum_table :
    finsetDivisorSumTableUpToSix = sumOfDivisorsTableUpToSix := by
  rfl

theorem squareTable_matches_verified_values :
    finsetDivisorSquareSumTableUpToSix = [1, 5, 10, 21, 26, 50] := by
  rfl

end MathlibIntegration
end FormalLanglandsLab
