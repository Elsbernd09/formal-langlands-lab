import FormalLanglandsLab.MathlibIntegration.V12UniversalAgreementTwelve

namespace FormalLanglandsLab
namespace MathlibIntegration

def v12UniversalAgreementSixPrepResultCount : Nat := 18
def v12UniversalAgreementTwelvePrepResultCount : Nat := 26

def v12TrackedResultCount : Nat :=
  v12UniversalAgreementSixPrepResultCount +
  v12UniversalAgreementTwelvePrepResultCount

theorem v12UniversalAgreementSixPrepResultCount_value :
    v12UniversalAgreementSixPrepResultCount = 18 := by
  rfl

theorem v12UniversalAgreementTwelvePrepResultCount_value :
    v12UniversalAgreementTwelvePrepResultCount = 26 := by
  rfl

theorem v12TrackedResultCount_value :
    v12TrackedResultCount = 44 := by
  rfl

theorem registry_v12_six_case_zero :
    0 ∈ v6DivisorFinset 6 ↔ 0 ∈ v10ExpectedDivisorsSix := by
  exact v12_six_universal_agreement_case_zero

theorem registry_v12_six_case_two :
    2 ∈ v6DivisorFinset 6 ↔ 2 ∈ v10ExpectedDivisorsSix := by
  exact v12_six_universal_agreement_case_two

theorem registry_v12_six_case_five :
    5 ∈ v6DivisorFinset 6 ↔ 5 ∈ v10ExpectedDivisorsSix := by
  exact v12_six_universal_agreement_case_five

theorem registry_v12_six_case_six :
    6 ∈ v6DivisorFinset 6 ↔ 6 ∈ v10ExpectedDivisorsSix := by
  exact v12_six_universal_agreement_case_six

theorem registry_v12_six_out_of_range_seven :
    7 ∈ v6DivisorFinset 6 ↔ 7 ∈ v10ExpectedDivisorsSix := by
  exact v12_six_universal_agreement_out_of_range_seven

theorem registry_v12_six_out_of_range_eight :
    8 ∈ v6DivisorFinset 6 ↔ 8 ∈ v10ExpectedDivisorsSix := by
  exact v12_six_universal_agreement_out_of_range_eight

theorem registry_v12_six_out_of_range_nine :
    9 ∈ v6DivisorFinset 6 ↔ 9 ∈ v10ExpectedDivisorsSix := by
  exact v12_six_universal_agreement_out_of_range_nine

theorem registry_v12_six_preparation :
    v12UniversalAgreementSixPreparation := by
  exact v12_universal_agreement_six_preparation

theorem registry_v12_six_preparation_has_bounded :
    v12UniversalAgreementSixPreparation → v11BoundedAgreementSix := by
  exact v12_universal_agreement_six_preparation_has_bounded

theorem registry_v12_six_preparation_has_actual_out_of_range :
    v12UniversalAgreementSixPreparation →
      (∀ d : Nat, 6 < d → d ∉ v6DivisorFinset 6) := by
  exact v12_universal_agreement_six_preparation_has_actual_out_of_range

theorem registry_v12_twelve_case_zero :
    0 ∈ v6DivisorFinset 12 ↔ 0 ∈ v10ExpectedDivisorsTwelve := by
  exact v12_twelve_universal_agreement_case_zero

theorem registry_v12_twelve_case_four :
    4 ∈ v6DivisorFinset 12 ↔ 4 ∈ v10ExpectedDivisorsTwelve := by
  exact v12_twelve_universal_agreement_case_four

theorem registry_v12_twelve_case_five :
    5 ∈ v6DivisorFinset 12 ↔ 5 ∈ v10ExpectedDivisorsTwelve := by
  exact v12_twelve_universal_agreement_case_five

theorem registry_v12_twelve_case_twelve :
    12 ∈ v6DivisorFinset 12 ↔ 12 ∈ v10ExpectedDivisorsTwelve := by
  exact v12_twelve_universal_agreement_case_twelve

theorem registry_v12_twelve_out_of_range_thirteen :
    13 ∈ v6DivisorFinset 12 ↔ 13 ∈ v10ExpectedDivisorsTwelve := by
  exact v12_twelve_universal_agreement_out_of_range_thirteen

theorem registry_v12_twelve_out_of_range_fourteen :
    14 ∈ v6DivisorFinset 12 ↔ 14 ∈ v10ExpectedDivisorsTwelve := by
  exact v12_twelve_universal_agreement_out_of_range_fourteen

theorem registry_v12_twelve_out_of_range_fifteen :
    15 ∈ v6DivisorFinset 12 ↔ 15 ∈ v10ExpectedDivisorsTwelve := by
  exact v12_twelve_universal_agreement_out_of_range_fifteen

theorem registry_v12_twelve_preparation :
    v12UniversalAgreementTwelvePreparation := by
  exact v12_universal_agreement_twelve_preparation

theorem registry_v12_twelve_preparation_has_bounded :
    v12UniversalAgreementTwelvePreparation → v11BoundedAgreementTwelve := by
  exact v12_universal_agreement_twelve_preparation_has_bounded

theorem registry_v12_twelve_preparation_has_actual_out_of_range :
    v12UniversalAgreementTwelvePreparation →
      (∀ d : Nat, 12 < d → d ∉ v6DivisorFinset 12) := by
  exact v12_universal_agreement_twelve_preparation_has_actual_out_of_range

end MathlibIntegration
end FormalLanglandsLab
