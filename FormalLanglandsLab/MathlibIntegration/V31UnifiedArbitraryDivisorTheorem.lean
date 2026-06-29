import FormalLanglandsLab.MathlibIntegration.V30ZeroCaseDivisorFinset

namespace FormalLanglandsLab
namespace MathlibIntegration

def v31UnifiedActualDivisorMembershipTheorem : Prop :=
  ∀ n d : Nat,
    (n = 0 → d ∉ v6DivisorFinset n) ∧
    (n ≠ 0 → (d ∈ v6DivisorFinset n ↔ d ≠ 0 ∧ d ∣ n))

def v31UnifiedExpectedDivisorMembershipTheorem : Prop :=
  ∀ n d : Nat,
    (n = 0 → d ∉ v22ExpectedDivisorFinset n) ∧
    (n ≠ 0 → (d ∈ v22ExpectedDivisorFinset n ↔ d ≠ 0 ∧ d ∣ n))

theorem v31_actual_zero_branch
    {n d : Nat}
    (hn : n = 0) :
    d ∉ v6DivisorFinset n := by
  subst n
  exact v30_actual_zero_case_no_members d

theorem v31_expected_zero_branch
    {n d : Nat}
    (hn : n = 0) :
    d ∉ v22ExpectedDivisorFinset n := by
  subst n
  exact v30_expected_zero_case_no_members d

theorem v31_actual_positive_branch
    {n d : Nat}
    (hn : n ≠ 0) :
    d ∈ v6DivisorFinset n ↔ d ≠ 0 ∧ d ∣ n := by
  exact v28_actual_mem_iff_nonzero_divides_of_positive n d hn

theorem v31_expected_positive_branch
    {n d : Nat}
    (hn : n ≠ 0) :
    d ∈ v22ExpectedDivisorFinset n ↔ d ≠ 0 ∧ d ∣ n := by
  exact v28_expected_mem_iff_nonzero_divides_of_positive n d hn

theorem v31_unified_actual_divisor_membership
    (n d : Nat) :
    (n = 0 → d ∉ v6DivisorFinset n) ∧
    (n ≠ 0 → (d ∈ v6DivisorFinset n ↔ d ≠ 0 ∧ d ∣ n)) := by
  exact ⟨
    fun hn => v31_actual_zero_branch hn,
    fun hn => v31_actual_positive_branch hn
  ⟩

theorem v31_unified_expected_divisor_membership
    (n d : Nat) :
    (n = 0 → d ∉ v22ExpectedDivisorFinset n) ∧
    (n ≠ 0 → (d ∈ v22ExpectedDivisorFinset n ↔ d ≠ 0 ∧ d ∣ n)) := by
  exact ⟨
    fun hn => v31_expected_zero_branch hn,
    fun hn => v31_expected_positive_branch hn
  ⟩

theorem v31_unified_actual_divisor_membership_theorem :
    v31UnifiedActualDivisorMembershipTheorem := by
  intro n d
  exact v31_unified_actual_divisor_membership n d

theorem v31_unified_expected_divisor_membership_theorem :
    v31UnifiedExpectedDivisorMembershipTheorem := by
  intro n d
  exact v31_unified_expected_divisor_membership n d

theorem v31_actual_all_n_extensional_identity
    (n : Nat) :
    v6DivisorFinset n = v22ExpectedDivisorFinset n := by
  by_cases hn : n = 0
  · subst n
    exact v30_actual_expected_zero_case_extensional_identity
  · exact v29_actual_expected_extensional_identity_positive n hn

theorem v31_expected_actual_all_n_extensional_identity
    (n : Nat) :
    v22ExpectedDivisorFinset n = v6DivisorFinset n := by
  exact Eq.symm (v31_actual_all_n_extensional_identity n)

theorem v31_actual_expected_all_n_membership_agreement
    (n d : Nat) :
    d ∈ v6DivisorFinset n ↔ d ∈ v22ExpectedDivisorFinset n := by
  rw [v31_actual_all_n_extensional_identity n]

def v31UnifiedArbitraryDivisorTheoremPackage : Prop :=
  v31UnifiedActualDivisorMembershipTheorem ∧
  v31UnifiedExpectedDivisorMembershipTheorem ∧
  (∀ n : Nat, v6DivisorFinset n = v22ExpectedDivisorFinset n) ∧
  (∀ n d : Nat, d ∈ v6DivisorFinset n ↔ d ∈ v22ExpectedDivisorFinset n)

theorem v31_unified_arbitrary_divisor_theorem_package :
    v31UnifiedArbitraryDivisorTheoremPackage := by
  exact ⟨
    v31_unified_actual_divisor_membership_theorem,
    ⟨
      v31_unified_expected_divisor_membership_theorem,
      ⟨
        v31_actual_all_n_extensional_identity,
        v31_actual_expected_all_n_membership_agreement
      ⟩
    ⟩
  ⟩

theorem v31_unified_arbitrary_divisor_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
