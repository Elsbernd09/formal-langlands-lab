import FormalLanglandsLab.MathlibIntegration.DivisorLists

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.NumberTheory

def divisorCountTableUpToSix : List Nat :=
  [
    mathlibDivisorCountFromList 1,
    mathlibDivisorCountFromList 2,
    mathlibDivisorCountFromList 3,
    mathlibDivisorCountFromList 4,
    mathlibDivisorCountFromList 5,
    mathlibDivisorCountFromList 6
  ]

def sumOfDivisorsTableUpToSix : List Nat :=
  [
    mathlibSumOfDivisorsFromList 1,
    mathlibSumOfDivisorsFromList 2,
    mathlibSumOfDivisorsFromList 3,
    mathlibSumOfDivisorsFromList 4,
    mathlibSumOfDivisorsFromList 5,
    mathlibSumOfDivisorsFromList 6
  ]

def divisorListTableSmall : List (List Nat) :=
  [
    mathlibDivisorList 1,
    mathlibDivisorList 2,
    mathlibDivisorList 3,
    mathlibDivisorList 4,
    mathlibDivisorList 5,
    mathlibDivisorList 6
  ]

theorem divisorCountTableUpToSix_value :
    divisorCountTableUpToSix = [1, 2, 2, 3, 2, 4] := by
  rfl

theorem sumOfDivisorsTableUpToSix_value :
    sumOfDivisorsTableUpToSix = [1, 3, 4, 7, 6, 12] := by
  rfl

theorem divisorListTableSmall_value :
    divisorListTableSmall =
      [
        [1],
        [1, 2],
        [1, 3],
        [1, 2, 4],
        [1, 5],
        [1, 2, 3, 6]
      ] := by
  rfl

theorem divisorCountTable_matches_existing_first_six :
    divisorCountTableUpToSix =
      [
        divisorCountFunction 1,
        divisorCountFunction 2,
        divisorCountFunction 3,
        divisorCountFunction 4,
        divisorCountFunction 5,
        divisorCountFunction 6
      ] := by
  rfl

theorem sumOfDivisorsTable_matches_existing_first_six :
    sumOfDivisorsTableUpToSix =
      [
        sumOfDivisorsFunction 1,
        sumOfDivisorsFunction 2,
        sumOfDivisorsFunction 3,
        sumOfDivisorsFunction 4,
        sumOfDivisorsFunction 5,
        sumOfDivisorsFunction 6
      ] := by
  rfl

end MathlibIntegration
end FormalLanglandsLab
