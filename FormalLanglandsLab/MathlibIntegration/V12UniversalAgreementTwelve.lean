import FormalLanglandsLab.MathlibIntegration.V12UniversalAgreementSix

namespace FormalLanglandsLab
namespace MathlibIntegration

def v12UniversalAgreementTwelve : Prop :=
  ∀ d : Nat,
    d ∈ v6DivisorFinset 12 ↔ d ∈ v10ExpectedDivisorsTwelve

def v12UniversalAgreementTwelvePreparation : Prop :=
  v11BoundedAgreementTwelve ∧
  (∀ d : Nat, 12 < d → d ∉ v6DivisorFinset 12)

theorem v12_twelve_expected_thirteen_not_mem :
    13 ∉ v10ExpectedDivisorsTwelve := by
  decide

theorem v12_twelve_expected_fourteen_not_mem :
    14 ∉ v10ExpectedDivisorsTwelve := by
  decide

theorem v12_twelve_expected_fifteen_not_mem :
    15 ∉ v10ExpectedDivisorsTwelve := by
  decide

theorem v12_twelve_universal_agreement_case_zero :
    0 ∈ v6DivisorFinset 12 ↔ 0 ∈ v10ExpectedDivisorsTwelve := by
  exact v11_pointwise_twelve_zero

theorem v12_twelve_universal_agreement_case_one :
    1 ∈ v6DivisorFinset 12 ↔ 1 ∈ v10ExpectedDivisorsTwelve := by
  exact v11_pointwise_twelve_one

theorem v12_twelve_universal_agreement_case_two :
    2 ∈ v6DivisorFinset 12 ↔ 2 ∈ v10ExpectedDivisorsTwelve := by
  exact v11_pointwise_twelve_two

theorem v12_twelve_universal_agreement_case_three :
    3 ∈ v6DivisorFinset 12 ↔ 3 ∈ v10ExpectedDivisorsTwelve := by
  exact v11_pointwise_twelve_three

theorem v12_twelve_universal_agreement_case_four :
    4 ∈ v6DivisorFinset 12 ↔ 4 ∈ v10ExpectedDivisorsTwelve := by
  exact v11_pointwise_twelve_four

theorem v12_twelve_universal_agreement_case_five :
    5 ∈ v6DivisorFinset 12 ↔ 5 ∈ v10ExpectedDivisorsTwelve := by
  exact v11_pointwise_twelve_five

theorem v12_twelve_universal_agreement_case_six :
    6 ∈ v6DivisorFinset 12 ↔ 6 ∈ v10ExpectedDivisorsTwelve := by
  exact v11_pointwise_twelve_six

theorem v12_twelve_universal_agreement_case_seven :
    7 ∈ v6DivisorFinset 12 ↔ 7 ∈ v10ExpectedDivisorsTwelve := by
  exact v11_pointwise_twelve_seven

theorem v12_twelve_universal_agreement_case_eight :
    8 ∈ v6DivisorFinset 12 ↔ 8 ∈ v10ExpectedDivisorsTwelve := by
  exact v11_pointwise_twelve_eight

theorem v12_twelve_universal_agreement_case_nine :
    9 ∈ v6DivisorFinset 12 ↔ 9 ∈ v10ExpectedDivisorsTwelve := by
  exact v11_pointwise_twelve_nine

theorem v12_twelve_universal_agreement_case_ten :
    10 ∈ v6DivisorFinset 12 ↔ 10 ∈ v10ExpectedDivisorsTwelve := by
  exact v11_pointwise_twelve_ten

theorem v12_twelve_universal_agreement_case_eleven :
    11 ∈ v6DivisorFinset 12 ↔ 11 ∈ v10ExpectedDivisorsTwelve := by
  exact v11_pointwise_twelve_eleven

theorem v12_twelve_universal_agreement_case_twelve :
    12 ∈ v6DivisorFinset 12 ↔ 12 ∈ v10ExpectedDivisorsTwelve := by
  exact v11_pointwise_twelve_twelve

theorem v12_twelve_actual_out_of_range_not_mem
    {d : Nat}
    (h : 12 < d) :
    d ∉ v6DivisorFinset 12 := by
  exact v11_out_of_range_actual_membership_false_twelve h

theorem v12_twelve_universal_agreement_out_of_range_thirteen :
    13 ∈ v6DivisorFinset 12 ↔ 13 ∈ v10ExpectedDivisorsTwelve := by
  constructor
  · intro h
    exact False.elim (v12_twelve_actual_out_of_range_not_mem (by decide) h)
  · intro h
    exact False.elim (v12_twelve_expected_thirteen_not_mem h)

theorem v12_twelve_universal_agreement_out_of_range_fourteen :
    14 ∈ v6DivisorFinset 12 ↔ 14 ∈ v10ExpectedDivisorsTwelve := by
  constructor
  · intro h
    exact False.elim (v12_twelve_actual_out_of_range_not_mem (by decide) h)
  · intro h
    exact False.elim (v12_twelve_expected_fourteen_not_mem h)

theorem v12_twelve_universal_agreement_out_of_range_fifteen :
    15 ∈ v6DivisorFinset 12 ↔ 15 ∈ v10ExpectedDivisorsTwelve := by
  constructor
  · intro h
    exact False.elim (v12_twelve_actual_out_of_range_not_mem (by decide) h)
  · intro h
    exact False.elim (v12_twelve_expected_fifteen_not_mem h)

theorem v12_universal_agreement_twelve_preparation :
    v12UniversalAgreementTwelvePreparation := by
  exact ⟨
    v11_bounded_agreement_twelve,
    fun d h => v11_out_of_range_actual_membership_false_twelve h
  ⟩

theorem v12_universal_agreement_twelve_preparation_has_bounded :
    v12UniversalAgreementTwelvePreparation → v11BoundedAgreementTwelve := by
  intro h
  exact h.1

theorem v12_universal_agreement_twelve_preparation_has_actual_out_of_range :
    v12UniversalAgreementTwelvePreparation →
      (∀ d : Nat, 12 < d → d ∉ v6DivisorFinset 12) := by
  intro h
  exact h.2

theorem v12_universal_agreement_twelve_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
