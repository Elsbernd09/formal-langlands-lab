import FormalLanglandsLab.MathlibIntegration.V11Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v12UniversalAgreementSix : Prop :=
  ∀ d : Nat,
    d ∈ v6DivisorFinset 6 ↔ d ∈ v10ExpectedDivisorsSix

def v12UniversalAgreementSixPreparation : Prop :=
  v11BoundedAgreementSix ∧
  (∀ d : Nat, 6 < d → d ∉ v6DivisorFinset 6)

theorem v12_six_expected_seven_not_mem :
    7 ∉ v10ExpectedDivisorsSix := by
  decide

theorem v12_six_expected_eight_not_mem :
    8 ∉ v10ExpectedDivisorsSix := by
  decide

theorem v12_six_expected_nine_not_mem :
    9 ∉ v10ExpectedDivisorsSix := by
  decide

theorem v12_six_universal_agreement_case_zero :
    0 ∈ v6DivisorFinset 6 ↔ 0 ∈ v10ExpectedDivisorsSix := by
  exact v11_pointwise_six_zero

theorem v12_six_universal_agreement_case_one :
    1 ∈ v6DivisorFinset 6 ↔ 1 ∈ v10ExpectedDivisorsSix := by
  exact v11_pointwise_six_one

theorem v12_six_universal_agreement_case_two :
    2 ∈ v6DivisorFinset 6 ↔ 2 ∈ v10ExpectedDivisorsSix := by
  exact v11_pointwise_six_two

theorem v12_six_universal_agreement_case_three :
    3 ∈ v6DivisorFinset 6 ↔ 3 ∈ v10ExpectedDivisorsSix := by
  exact v11_pointwise_six_three

theorem v12_six_universal_agreement_case_four :
    4 ∈ v6DivisorFinset 6 ↔ 4 ∈ v10ExpectedDivisorsSix := by
  exact v11_pointwise_six_four

theorem v12_six_universal_agreement_case_five :
    5 ∈ v6DivisorFinset 6 ↔ 5 ∈ v10ExpectedDivisorsSix := by
  exact v11_pointwise_six_five

theorem v12_six_universal_agreement_case_six :
    6 ∈ v6DivisorFinset 6 ↔ 6 ∈ v10ExpectedDivisorsSix := by
  exact v11_pointwise_six_six

theorem v12_six_actual_out_of_range_not_mem
    {d : Nat}
    (h : 6 < d) :
    d ∉ v6DivisorFinset 6 := by
  exact v11_out_of_range_actual_membership_false_six h

theorem v12_six_universal_agreement_out_of_range_seven :
    7 ∈ v6DivisorFinset 6 ↔ 7 ∈ v10ExpectedDivisorsSix := by
  constructor
  · intro h
    exact False.elim (v12_six_actual_out_of_range_not_mem (by decide) h)
  · intro h
    exact False.elim (v12_six_expected_seven_not_mem h)

theorem v12_six_universal_agreement_out_of_range_eight :
    8 ∈ v6DivisorFinset 6 ↔ 8 ∈ v10ExpectedDivisorsSix := by
  constructor
  · intro h
    exact False.elim (v12_six_actual_out_of_range_not_mem (by decide) h)
  · intro h
    exact False.elim (v12_six_expected_eight_not_mem h)

theorem v12_six_universal_agreement_out_of_range_nine :
    9 ∈ v6DivisorFinset 6 ↔ 9 ∈ v10ExpectedDivisorsSix := by
  constructor
  · intro h
    exact False.elim (v12_six_actual_out_of_range_not_mem (by decide) h)
  · intro h
    exact False.elim (v12_six_expected_nine_not_mem h)

theorem v12_universal_agreement_six_preparation :
    v12UniversalAgreementSixPreparation := by
  exact ⟨
    v11_bounded_agreement_six,
    fun d h => v11_out_of_range_actual_membership_false_six h
  ⟩

theorem v12_universal_agreement_six_preparation_has_bounded :
    v12UniversalAgreementSixPreparation → v11BoundedAgreementSix := by
  intro h
  exact h.1

theorem v12_universal_agreement_six_preparation_has_actual_out_of_range :
    v12UniversalAgreementSixPreparation →
      (∀ d : Nat, 6 < d → d ∉ v6DivisorFinset 6) := by
  intro h
  exact h.2

theorem v12_universal_agreement_six_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
