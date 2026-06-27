import FormalLanglandsLab.MathlibIntegration.V15UniversalMembershipSix

namespace FormalLanglandsLab
namespace MathlibIntegration

def v16FinsetEqualitySixTarget : Prop :=
  v6DivisorFinset 6 = v10ExpectedDivisorsSix

theorem v16_finset_equality_six :
    v6DivisorFinset 6 = v10ExpectedDivisorsSix := by
  apply Finset.ext
  intro d
  exact v15_universal_membership_agreement_six d

theorem v16_finset_equality_six_target :
    v16FinsetEqualitySixTarget := by
  exact v16_finset_equality_six

theorem v16_finset_equality_six_symm :
    v10ExpectedDivisorsSix = v6DivisorFinset 6 := by
  exact Eq.symm v16_finset_equality_six

theorem v16_finset_equality_six_membership_transfer_actual_to_expected
    {d : Nat}
    (h : d ∈ v6DivisorFinset 6) :
    d ∈ v10ExpectedDivisorsSix := by
  rw [← v16_finset_equality_six]
  exact h

theorem v16_finset_equality_six_membership_transfer_expected_to_actual
    {d : Nat}
    (h : d ∈ v10ExpectedDivisorsSix) :
    d ∈ v6DivisorFinset 6 := by
  rw [v16_finset_equality_six]
  exact h

theorem v16_finset_equality_six_gives_two_expected
    (h : 2 ∈ v6DivisorFinset 6) :
    2 ∈ v10ExpectedDivisorsSix := by
  exact v16_finset_equality_six_membership_transfer_actual_to_expected h

theorem v16_finset_equality_six_gives_six_actual
    (h : 6 ∈ v10ExpectedDivisorsSix) :
    6 ∈ v6DivisorFinset 6 := by
  exact v16_finset_equality_six_membership_transfer_expected_to_actual h

def v16FinsetEqualitySixPackage : Prop :=
  v16FinsetEqualitySixTarget ∧
  v10ExpectedDivisorsSix = v6DivisorFinset 6 ∧
  (∀ d : Nat, d ∈ v6DivisorFinset 6 → d ∈ v10ExpectedDivisorsSix) ∧
  (∀ d : Nat, d ∈ v10ExpectedDivisorsSix → d ∈ v6DivisorFinset 6)

theorem v16_finset_equality_six_package :
    v16FinsetEqualitySixPackage := by
  exact ⟨
    v16_finset_equality_six_target,
    v16_finset_equality_six_symm,
    fun d h => v16_finset_equality_six_membership_transfer_actual_to_expected h,
    fun d h => v16_finset_equality_six_membership_transfer_expected_to_actual h
  ⟩

theorem v16_finset_equality_six_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
