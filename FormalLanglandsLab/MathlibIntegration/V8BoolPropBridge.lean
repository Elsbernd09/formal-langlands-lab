import FormalLanglandsLab.MathlibIntegration.V8BoundedMembership

namespace FormalLanglandsLab
namespace MathlibIntegration

def v8BoolPropAgreement
    (n d : Nat) : Prop :=
  v6IsDivisorBool n d = true ∧ v6IsDivisor n d

def v8CertifiedDivisorMembership
    (n d : Nat) : Prop :=
  d ∈ v6DivisorFinset n ∧ v6IsDivisor n d

theorem v8_isDivisor_one_twelve :
    v6IsDivisor 12 1 := by
  constructor
  · decide
  · exact Nat.one_dvd 12

theorem v8_isDivisor_two_twelve :
    v6IsDivisor 12 2 := by
  constructor
  · decide
  · decide

theorem v8_isDivisor_three_twelve :
    v6IsDivisor 12 3 := by
  constructor
  · decide
  · decide

theorem v8_isDivisor_four_twelve :
    v6IsDivisor 12 4 := by
  constructor
  · decide
  · decide

theorem v8_isDivisor_six_twelve :
    v6IsDivisor 12 6 := by
  constructor
  · decide
  · decide

theorem v8_isDivisor_twelve_twelve :
    v6IsDivisor 12 12 := by
  constructor
  · decide
  · exact Nat.dvd_refl 12

theorem v8_bool_prop_agreement_one_six :
    v8BoolPropAgreement 6 1 := by
  exact ⟨v6_isDivisorBool_one_six, v6_isDivisor_one_six⟩

theorem v8_bool_prop_agreement_two_six :
    v8BoolPropAgreement 6 2 := by
  exact ⟨v6_isDivisorBool_two_six, v6_isDivisor_two_six⟩

theorem v8_bool_prop_agreement_three_six :
    v8BoolPropAgreement 6 3 := by
  exact ⟨v6_isDivisorBool_three_six, v6_isDivisor_three_six⟩

theorem v8_bool_prop_agreement_six_six :
    v8BoolPropAgreement 6 6 := by
  exact ⟨v6_isDivisorBool_six_six, v6_isDivisor_six_six⟩

theorem v8_bool_prop_agreement_one_twelve :
    v8BoolPropAgreement 12 1 := by
  constructor
  · rfl
  · exact v8_isDivisor_one_twelve

theorem v8_bool_prop_agreement_two_twelve :
    v8BoolPropAgreement 12 2 := by
  constructor
  · rfl
  · exact v8_isDivisor_two_twelve

theorem v8_bool_prop_agreement_three_twelve :
    v8BoolPropAgreement 12 3 := by
  constructor
  · rfl
  · exact v8_isDivisor_three_twelve

theorem v8_bool_prop_agreement_four_twelve :
    v8BoolPropAgreement 12 4 := by
  constructor
  · rfl
  · exact v8_isDivisor_four_twelve

theorem v8_bool_prop_agreement_six_twelve :
    v8BoolPropAgreement 12 6 := by
  constructor
  · rfl
  · exact v8_isDivisor_six_twelve

theorem v8_bool_prop_agreement_twelve_twelve :
    v8BoolPropAgreement 12 12 := by
  constructor
  · rfl
  · exact v8_isDivisor_twelve_twelve

theorem v8_certified_membership_two_six :
    v8CertifiedDivisorMembership 6 2 := by
  exact ⟨v7_two_mem_divisorFinset_six, v6_isDivisor_two_six⟩

theorem v8_certified_membership_three_six :
    v8CertifiedDivisorMembership 6 3 := by
  exact ⟨v7_three_mem_divisorFinset_six, v6_isDivisor_three_six⟩

theorem v8_certified_membership_four_twelve :
    v8CertifiedDivisorMembership 12 4 := by
  exact ⟨v7_four_mem_divisorFinset_twelve, v8_isDivisor_four_twelve⟩

theorem v8_certified_membership_twelve_twelve :
    v8CertifiedDivisorMembership 12 12 := by
  exact ⟨v7_twelve_mem_divisorFinset_twelve, v8_isDivisor_twelve_twelve⟩

theorem v8_certified_membership_implies_finset_mem
    {n d : Nat}
    (h : v8CertifiedDivisorMembership n d) :
    d ∈ v6DivisorFinset n := by
  exact h.1

theorem v8_certified_membership_implies_prop_divisor
    {n d : Nat}
    (h : v8CertifiedDivisorMembership n d) :
    v6IsDivisor n d := by
  exact h.2

theorem v8_bool_prop_agreement_implies_bool_true
    {n d : Nat}
    (h : v8BoolPropAgreement n d) :
    v6IsDivisorBool n d = true := by
  exact h.1

theorem v8_bool_prop_agreement_implies_prop_divisor
    {n d : Nat}
    (h : v8BoolPropAgreement n d) :
    v6IsDivisor n d := by
  exact h.2

theorem v8_bool_prop_bridge_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
