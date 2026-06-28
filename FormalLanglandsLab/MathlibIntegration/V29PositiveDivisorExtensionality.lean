import FormalLanglandsLab.MathlibIntegration.V28PositiveCleanMembership

namespace FormalLanglandsLab
namespace MathlibIntegration

def v29PositiveDivisorMembershipRule
    (S : Finset Nat)
    (n : Nat) : Prop :=
  ∀ d : Nat, d ∈ S ↔ d ≠ 0 ∧ d ∣ n

def v29ActualPositiveDivisorMembershipRule : Prop :=
  ∀ n : Nat,
    n ≠ 0 →
      v29PositiveDivisorMembershipRule (v6DivisorFinset n) n

def v29ExpectedPositiveDivisorMembershipRule : Prop :=
  ∀ n : Nat,
    n ≠ 0 →
      v29PositiveDivisorMembershipRule (v22ExpectedDivisorFinset n) n

theorem v29_actual_positive_divisor_membership_rule
    (n : Nat)
    (hn : n ≠ 0) :
    v29PositiveDivisorMembershipRule (v6DivisorFinset n) n := by
  intro d
  exact v28_actual_mem_iff_nonzero_divides_of_positive n d hn

theorem v29_expected_positive_divisor_membership_rule
    (n : Nat)
    (hn : n ≠ 0) :
    v29PositiveDivisorMembershipRule (v22ExpectedDivisorFinset n) n := by
  intro d
  exact v28_expected_mem_iff_nonzero_divides_of_positive n d hn

theorem v29_actual_positive_divisor_membership_rule_all :
    v29ActualPositiveDivisorMembershipRule := by
  intro n hn
  exact v29_actual_positive_divisor_membership_rule n hn

theorem v29_expected_positive_divisor_membership_rule_all :
    v29ExpectedPositiveDivisorMembershipRule := by
  intro n hn
  exact v29_expected_positive_divisor_membership_rule n hn

theorem v29_extensionality_from_same_membership_rule
    {A B : Finset Nat}
    {n : Nat}
    (hA : v29PositiveDivisorMembershipRule A n)
    (hB : v29PositiveDivisorMembershipRule B n) :
    A = B := by
  apply Finset.ext
  intro d
  exact Iff.trans (hA d) (Iff.symm (hB d))

theorem v29_actual_expected_extensional_identity_positive
    (n : Nat)
    (hn : n ≠ 0) :
    v6DivisorFinset n = v22ExpectedDivisorFinset n := by
  apply v29_extensionality_from_same_membership_rule
  · exact v29_actual_positive_divisor_membership_rule n hn
  · exact v29_expected_positive_divisor_membership_rule n hn

theorem v29_expected_actual_extensional_identity_positive
    (n : Nat)
    (hn : n ≠ 0) :
    v22ExpectedDivisorFinset n = v6DivisorFinset n := by
  exact Eq.symm (v29_actual_expected_extensional_identity_positive n hn)

theorem v29_positive_identity_gives_six :
    v6DivisorFinset 6 = v22ExpectedDivisorFinset 6 := by
  exact v29_actual_expected_extensional_identity_positive 6 (by decide)

theorem v29_positive_identity_gives_twelve :
    v6DivisorFinset 12 = v22ExpectedDivisorFinset 12 := by
  exact v29_actual_expected_extensional_identity_positive 12 (by decide)

def v29PositiveDivisorExtensionalityPackage : Prop :=
  v29ActualPositiveDivisorMembershipRule ∧
  v29ExpectedPositiveDivisorMembershipRule ∧
  (∀ n : Nat, n ≠ 0 → v6DivisorFinset n = v22ExpectedDivisorFinset n)

theorem v29_positive_divisor_extensionality_package :
    v29PositiveDivisorExtensionalityPackage := by
  exact ⟨
    v29_actual_positive_divisor_membership_rule_all,
    ⟨
      v29_expected_positive_divisor_membership_rule_all,
      fun n hn => v29_actual_expected_extensional_identity_positive n hn
    ⟩
  ⟩

theorem v29_positive_divisor_extensionality_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
