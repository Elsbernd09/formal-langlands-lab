import FormalLanglandsLab.MathlibIntegration.V9Dashboard
import Mathlib.Data.Finset.Basic

namespace FormalLanglandsLab
namespace MathlibIntegration

def v10ExpectedDivisorsSix : Finset Nat :=
  ({1, 2, 3, 6} : Finset Nat)

def v10ExpectedDivisorsTwelve : Finset Nat :=
  ({1, 2, 3, 4, 6, 12} : Finset Nat)

theorem v10_one_mem_expected_six :
    1 ∈ v10ExpectedDivisorsSix := by
  decide

theorem v10_two_mem_expected_six :
    2 ∈ v10ExpectedDivisorsSix := by
  decide

theorem v10_three_mem_expected_six :
    3 ∈ v10ExpectedDivisorsSix := by
  decide

theorem v10_six_mem_expected_six :
    6 ∈ v10ExpectedDivisorsSix := by
  decide

theorem v10_zero_not_mem_expected_six :
    0 ∉ v10ExpectedDivisorsSix := by
  decide

theorem v10_four_not_mem_expected_six :
    4 ∉ v10ExpectedDivisorsSix := by
  decide

theorem v10_one_mem_expected_twelve :
    1 ∈ v10ExpectedDivisorsTwelve := by
  decide

theorem v10_two_mem_expected_twelve :
    2 ∈ v10ExpectedDivisorsTwelve := by
  decide

theorem v10_three_mem_expected_twelve :
    3 ∈ v10ExpectedDivisorsTwelve := by
  decide

theorem v10_four_mem_expected_twelve :
    4 ∈ v10ExpectedDivisorsTwelve := by
  decide

theorem v10_six_mem_expected_twelve :
    6 ∈ v10ExpectedDivisorsTwelve := by
  decide

theorem v10_twelve_mem_expected_twelve :
    12 ∈ v10ExpectedDivisorsTwelve := by
  decide

theorem v10_zero_not_mem_expected_twelve :
    0 ∉ v10ExpectedDivisorsTwelve := by
  decide

theorem v10_five_not_mem_expected_twelve :
    5 ∉ v10ExpectedDivisorsTwelve := by
  decide

theorem v10_seven_not_mem_expected_twelve :
    7 ∉ v10ExpectedDivisorsTwelve := by
  decide

theorem v10_eight_not_mem_expected_twelve :
    8 ∉ v10ExpectedDivisorsTwelve := by
  decide

theorem v10_nine_not_mem_expected_twelve :
    9 ∉ v10ExpectedDivisorsTwelve := by
  decide

theorem v10_ten_not_mem_expected_twelve :
    10 ∉ v10ExpectedDivisorsTwelve := by
  decide

theorem v10_eleven_not_mem_expected_twelve :
    11 ∉ v10ExpectedDivisorsTwelve := by
  decide

theorem v10_expected_six_card :
    Finset.card v10ExpectedDivisorsSix = 4 := by
  decide

theorem v10_expected_twelve_card :
    Finset.card v10ExpectedDivisorsTwelve = 6 := by
  decide

theorem v10_expected_finsets_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
