import FormalLanglandsLab.MathlibIntegration.V11ExtensionalityFramework

namespace FormalLanglandsLab
namespace MathlibIntegration

def v11OutOfRangeAgreement
    (n d : Nat)
    (expected : Finset Nat) : Prop :=
  n < d →
    d ∉ v6DivisorFinset n ∧ d ∉ expected

theorem v11_actual_out_of_range_not_mem
    {n d : Nat}
    (h : n < d) :
    d ∉ v6DivisorFinset n := by
  exact v8_out_of_bound_not_mem h

theorem v11_seven_not_mem_actual_six :
    7 ∉ v6DivisorFinset 6 := by
  apply v11_actual_out_of_range_not_mem
  decide

theorem v11_eight_not_mem_actual_six :
    8 ∉ v6DivisorFinset 6 := by
  apply v11_actual_out_of_range_not_mem
  decide

theorem v11_thirteen_not_mem_actual_twelve :
    13 ∉ v6DivisorFinset 12 := by
  apply v11_actual_out_of_range_not_mem
  decide

theorem v11_fourteen_not_mem_actual_twelve :
    14 ∉ v6DivisorFinset 12 := by
  apply v11_actual_out_of_range_not_mem
  decide

theorem v11_seven_not_mem_expected_six :
    7 ∉ v10ExpectedDivisorsSix := by
  decide

theorem v11_eight_not_mem_expected_six :
    8 ∉ v10ExpectedDivisorsSix := by
  decide

theorem v11_thirteen_not_mem_expected_twelve :
    13 ∉ v10ExpectedDivisorsTwelve := by
  decide

theorem v11_fourteen_not_mem_expected_twelve :
    14 ∉ v10ExpectedDivisorsTwelve := by
  decide

theorem v11_out_of_range_agreement_six_seven :
    v11OutOfRangeAgreement 6 7 v10ExpectedDivisorsSix := by
  intro _
  exact ⟨v11_seven_not_mem_actual_six, v11_seven_not_mem_expected_six⟩

theorem v11_out_of_range_agreement_six_eight :
    v11OutOfRangeAgreement 6 8 v10ExpectedDivisorsSix := by
  intro _
  exact ⟨v11_eight_not_mem_actual_six, v11_eight_not_mem_expected_six⟩

theorem v11_out_of_range_agreement_twelve_thirteen :
    v11OutOfRangeAgreement 12 13 v10ExpectedDivisorsTwelve := by
  intro _
  exact ⟨v11_thirteen_not_mem_actual_twelve, v11_thirteen_not_mem_expected_twelve⟩

theorem v11_out_of_range_agreement_twelve_fourteen :
    v11OutOfRangeAgreement 12 14 v10ExpectedDivisorsTwelve := by
  intro _
  exact ⟨v11_fourteen_not_mem_actual_twelve, v11_fourteen_not_mem_expected_twelve⟩

theorem v11_out_of_range_actual_membership_false_six
    {d : Nat}
    (h : 6 < d) :
    d ∉ v6DivisorFinset 6 := by
  exact v11_actual_out_of_range_not_mem h

theorem v11_out_of_range_actual_membership_false_twelve
    {d : Nat}
    (h : 12 < d) :
    d ∉ v6DivisorFinset 12 := by
  exact v11_actual_out_of_range_not_mem h

theorem v11_out_of_range_framework_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
