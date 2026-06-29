import FormalLanglandsLab.MathlibIntegration.V17UniversalMembershipTwelve

namespace FormalLanglandsLab
namespace MathlibIntegration

def v18FinsetEqualityTwelveTarget : Prop :=
  v6DivisorFinset 12 = v10ExpectedDivisorsTwelve

theorem v18_finset_equality_twelve :
    v6DivisorFinset 12 = v10ExpectedDivisorsTwelve := by
  apply Finset.ext
  intro d
  exact v17_universal_membership_agreement_twelve d

theorem v18_finset_equality_twelve_target :
    v18FinsetEqualityTwelveTarget := by
  exact v18_finset_equality_twelve

theorem v18_finset_equality_twelve_symm :
    v10ExpectedDivisorsTwelve = v6DivisorFinset 12 := by
  exact Eq.symm v18_finset_equality_twelve

theorem v18_finset_equality_twelve_membership_transfer_actual_to_expected
    {d : Nat}
    (h : d ∈ v6DivisorFinset 12) :
    d ∈ v10ExpectedDivisorsTwelve := by
  rw [← v18_finset_equality_twelve]
  exact h

theorem v18_finset_equality_twelve_membership_transfer_expected_to_actual
    {d : Nat}
    (h : d ∈ v10ExpectedDivisorsTwelve) :
    d ∈ v6DivisorFinset 12 := by
  rw [v18_finset_equality_twelve]
  exact h

theorem v18_finset_equality_twelve_gives_four_expected
    (h : 4 ∈ v6DivisorFinset 12) :
    4 ∈ v10ExpectedDivisorsTwelve := by
  exact v18_finset_equality_twelve_membership_transfer_actual_to_expected h

theorem v18_finset_equality_twelve_gives_twelve_actual
    (h : 12 ∈ v10ExpectedDivisorsTwelve) :
    12 ∈ v6DivisorFinset 12 := by
  exact v18_finset_equality_twelve_membership_transfer_expected_to_actual h

def v18FinsetEqualityTwelvePackage : Prop :=
  v18FinsetEqualityTwelveTarget ∧
  v10ExpectedDivisorsTwelve = v6DivisorFinset 12 ∧
  (∀ d : Nat, d ∈ v6DivisorFinset 12 → d ∈ v10ExpectedDivisorsTwelve) ∧
  (∀ d : Nat, d ∈ v10ExpectedDivisorsTwelve → d ∈ v6DivisorFinset 12)

theorem v18_finset_equality_twelve_package :
    v18FinsetEqualityTwelvePackage := by
  exact ⟨
    v18_finset_equality_twelve_target,
    v18_finset_equality_twelve_symm,
    fun d h => v18_finset_equality_twelve_membership_transfer_actual_to_expected h,
    fun d h => v18_finset_equality_twelve_membership_transfer_expected_to_actual h
  ⟩

theorem v18_finset_equality_twelve_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
