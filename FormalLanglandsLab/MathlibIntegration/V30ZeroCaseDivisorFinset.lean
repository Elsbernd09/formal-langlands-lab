import FormalLanglandsLab.MathlibIntegration.V29PositiveDivisorExtensionality

namespace FormalLanglandsLab
namespace MathlibIntegration

def v30ActualZeroCaseEmpty : Prop :=
  ∀ d : Nat, d ∉ v6DivisorFinset 0

def v30ExpectedZeroCaseEmpty : Prop :=
  ∀ d : Nat, d ∉ v22ExpectedDivisorFinset 0

theorem v30_actual_zero_case_no_members
    (d : Nat) :
    d ∉ v6DivisorFinset 0 := by
  intro hmem
  have hbound : d ≤ 0 := v27_actual_mem_implies_bound hmem
  have hzero : d = 0 := Nat.eq_zero_of_le_zero hbound
  have hnonzero : d ≠ 0 := v27_actual_mem_implies_nonzero hmem
  exact hnonzero hzero

theorem v30_expected_zero_case_no_members
    (d : Nat) :
    d ∉ v22ExpectedDivisorFinset 0 := by
  intro hmem
  have hbound : d ≤ 0 := v27_expected_mem_implies_bound hmem
  have hzero : d = 0 := Nat.eq_zero_of_le_zero hbound
  have hnonzero : d ≠ 0 := v27_expected_mem_implies_nonzero hmem
  exact hnonzero hzero

theorem v30_actual_zero_case_empty :
    v30ActualZeroCaseEmpty := by
  intro d
  exact v30_actual_zero_case_no_members d

theorem v30_expected_zero_case_empty :
    v30ExpectedZeroCaseEmpty := by
  intro d
  exact v30_expected_zero_case_no_members d

theorem v30_actual_zero_membership_false
    (d : Nat) :
    d ∈ v6DivisorFinset 0 ↔ False := by
  constructor
  · intro h
    exact v30_actual_zero_case_no_members d h
  · intro h
    exact False.elim h

theorem v30_expected_zero_membership_false
    (d : Nat) :
    d ∈ v22ExpectedDivisorFinset 0 ↔ False := by
  constructor
  · intro h
    exact v30_expected_zero_case_no_members d h
  · intro h
    exact False.elim h

theorem v30_actual_expected_zero_case_extensional_identity :
    v6DivisorFinset 0 = v22ExpectedDivisorFinset 0 := by
  apply Finset.ext
  intro d
  have hA := v30_actual_zero_membership_false d
  have hE := v30_expected_zero_membership_false d
  exact Iff.trans hA (Iff.symm hE)

theorem v30_expected_actual_zero_case_extensional_identity :
    v22ExpectedDivisorFinset 0 = v6DivisorFinset 0 := by
  exact Eq.symm v30_actual_expected_zero_case_extensional_identity

def v30ZeroCaseDivisorFinsetPackage : Prop :=
  v30ActualZeroCaseEmpty ∧
  v30ExpectedZeroCaseEmpty ∧
  v6DivisorFinset 0 = v22ExpectedDivisorFinset 0

theorem v30_zero_case_divisor_finset_package :
    v30ZeroCaseDivisorFinsetPackage := by
  exact ⟨
    v30_actual_zero_case_empty,
    ⟨
      v30_expected_zero_case_empty,
      v30_actual_expected_zero_case_extensional_identity
    ⟩
  ⟩

theorem v30_zero_case_divisor_finset_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
