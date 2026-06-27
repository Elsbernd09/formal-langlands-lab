import FormalLanglandsLab.MathlibIntegration.V12Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v13ExpectedOutOfRangeRuleSix : Prop :=
  ∀ d : Nat, 6 < d → d ∉ v10ExpectedDivisorsSix

def v13ExpectedOutOfRangeRuleTwelve : Prop :=
  ∀ d : Nat, 12 < d → d ∉ v10ExpectedDivisorsTwelve

theorem v13_expected_six_seven_not_mem :
    7 ∉ v10ExpectedDivisorsSix := by
  decide

theorem v13_expected_six_eight_not_mem :
    8 ∉ v10ExpectedDivisorsSix := by
  decide

theorem v13_expected_six_nine_not_mem :
    9 ∉ v10ExpectedDivisorsSix := by
  decide

theorem v13_expected_six_ten_not_mem :
    10 ∉ v10ExpectedDivisorsSix := by
  decide

theorem v13_expected_twelve_thirteen_not_mem :
    13 ∉ v10ExpectedDivisorsTwelve := by
  decide

theorem v13_expected_twelve_fourteen_not_mem :
    14 ∉ v10ExpectedDivisorsTwelve := by
  decide

theorem v13_expected_twelve_fifteen_not_mem :
    15 ∉ v10ExpectedDivisorsTwelve := by
  decide

theorem v13_expected_twelve_sixteen_not_mem :
    16 ∉ v10ExpectedDivisorsTwelve := by
  decide

theorem v13_expected_out_of_range_six_sample_package :
    7 ∉ v10ExpectedDivisorsSix ∧
    8 ∉ v10ExpectedDivisorsSix ∧
    9 ∉ v10ExpectedDivisorsSix ∧
    10 ∉ v10ExpectedDivisorsSix := by
  exact ⟨
    v13_expected_six_seven_not_mem,
    v13_expected_six_eight_not_mem,
    v13_expected_six_nine_not_mem,
    v13_expected_six_ten_not_mem
  ⟩

theorem v13_expected_out_of_range_twelve_sample_package :
    13 ∉ v10ExpectedDivisorsTwelve ∧
    14 ∉ v10ExpectedDivisorsTwelve ∧
    15 ∉ v10ExpectedDivisorsTwelve ∧
    16 ∉ v10ExpectedDivisorsTwelve := by
  exact ⟨
    v13_expected_twelve_thirteen_not_mem,
    v13_expected_twelve_fourteen_not_mem,
    v13_expected_twelve_fifteen_not_mem,
    v13_expected_twelve_sixteen_not_mem
  ⟩

def v13ExpectedOutOfRangePreparationSix : Prop :=
  v13_expected_out_of_range_six_sample_package =
    v13_expected_out_of_range_six_sample_package

def v13ExpectedOutOfRangePreparationTwelve : Prop :=
  v13_expected_out_of_range_twelve_sample_package =
    v13_expected_out_of_range_twelve_sample_package

theorem v13_expected_out_of_range_preparation_six :
    v13ExpectedOutOfRangePreparationSix := by
  rfl

theorem v13_expected_out_of_range_preparation_twelve :
    v13ExpectedOutOfRangePreparationTwelve := by
  rfl

theorem v13_expected_out_of_range_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
