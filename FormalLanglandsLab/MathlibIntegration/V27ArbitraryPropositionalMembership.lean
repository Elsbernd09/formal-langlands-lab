import FormalLanglandsLab.MathlibIntegration.V26RealBooleanPropositionalBridge

namespace FormalLanglandsLab
namespace MathlibIntegration

def v27ActualPropositionalMembershipTheorem : Prop :=
  ∀ n d : Nat,
    d ∈ v6DivisorFinset n ↔ d ≤ n ∧ d ≠ 0 ∧ d ∣ n

def v27ExpectedPropositionalMembershipTheorem : Prop :=
  ∀ n d : Nat,
    d ∈ v22ExpectedDivisorFinset n ↔ d ≤ n ∧ d ≠ 0 ∧ d ∣ n

theorem v27_v6IsDivisor_expand
    (n d : Nat) :
    v6IsDivisor n d ↔ d ≠ 0 ∧ d ∣ n := by
  rfl

theorem v27_actual_mem_iff_bound_nonzero_divides
    (n d : Nat) :
    d ∈ v6DivisorFinset n ↔ d ≤ n ∧ d ≠ 0 ∧ d ∣ n := by
  have h₁ := v26_actual_mem_iff_bound_and_v6IsDivisor n d
  constructor
  · intro hmem
    have h := h₁.mp hmem
    exact ⟨h.1, h.2.1, h.2.2⟩
  · intro h
    exact h₁.mpr ⟨h.1, ⟨h.2.1, h.2.2⟩⟩

theorem v27_expected_mem_iff_bound_nonzero_divides
    (n d : Nat) :
    d ∈ v22ExpectedDivisorFinset n ↔ d ≤ n ∧ d ≠ 0 ∧ d ∣ n := by
  have h₁ := v26_expected_mem_iff_bound_and_v6IsDivisor n d
  constructor
  · intro hmem
    have h := h₁.mp hmem
    exact ⟨h.1, h.2.1, h.2.2⟩
  · intro h
    exact h₁.mpr ⟨h.1, ⟨h.2.1, h.2.2⟩⟩

theorem v27_actual_propositional_membership_theorem :
    v27ActualPropositionalMembershipTheorem := by
  intro n d
  exact v27_actual_mem_iff_bound_nonzero_divides n d

theorem v27_expected_propositional_membership_theorem :
    v27ExpectedPropositionalMembershipTheorem := by
  intro n d
  exact v27_expected_mem_iff_bound_nonzero_divides n d

theorem v27_actual_mem_implies_nonzero
    {n d : Nat}
    (h : d ∈ v6DivisorFinset n) :
    d ≠ 0 := by
  exact ((v27_actual_mem_iff_bound_nonzero_divides n d).mp h).2.1

theorem v27_actual_mem_implies_divides
    {n d : Nat}
    (h : d ∈ v6DivisorFinset n) :
    d ∣ n := by
  exact ((v27_actual_mem_iff_bound_nonzero_divides n d).mp h).2.2

theorem v27_actual_mem_implies_bound
    {n d : Nat}
    (h : d ∈ v6DivisorFinset n) :
    d ≤ n := by
  exact ((v27_actual_mem_iff_bound_nonzero_divides n d).mp h).1

theorem v27_actual_mem_intro_from_prop
    {n d : Nat}
    (hbound : d ≤ n)
    (hnonzero : d ≠ 0)
    (hdiv : d ∣ n) :
    d ∈ v6DivisorFinset n := by
  exact (v27_actual_mem_iff_bound_nonzero_divides n d).mpr
    ⟨hbound, hnonzero, hdiv⟩

theorem v27_expected_mem_implies_nonzero
    {n d : Nat}
    (h : d ∈ v22ExpectedDivisorFinset n) :
    d ≠ 0 := by
  exact ((v27_expected_mem_iff_bound_nonzero_divides n d).mp h).2.1

theorem v27_expected_mem_implies_divides
    {n d : Nat}
    (h : d ∈ v22ExpectedDivisorFinset n) :
    d ∣ n := by
  exact ((v27_expected_mem_iff_bound_nonzero_divides n d).mp h).2.2

theorem v27_expected_mem_implies_bound
    {n d : Nat}
    (h : d ∈ v22ExpectedDivisorFinset n) :
    d ≤ n := by
  exact ((v27_expected_mem_iff_bound_nonzero_divides n d).mp h).1

theorem v27_expected_mem_intro_from_prop
    {n d : Nat}
    (hbound : d ≤ n)
    (hnonzero : d ≠ 0)
    (hdiv : d ∣ n) :
    d ∈ v22ExpectedDivisorFinset n := by
  exact (v27_expected_mem_iff_bound_nonzero_divides n d).mpr
    ⟨hbound, hnonzero, hdiv⟩

def v27ArbitraryPropositionalMembershipPackage : Prop :=
  v27ActualPropositionalMembershipTheorem ∧
  v27ExpectedPropositionalMembershipTheorem ∧
  (∀ n d : Nat, d ∈ v6DivisorFinset n → d ≠ 0) ∧
  (∀ n d : Nat, d ∈ v6DivisorFinset n → d ∣ n)

theorem v27_arbitrary_propositional_membership_package :
    v27ArbitraryPropositionalMembershipPackage := by
  exact ⟨
    v27_actual_propositional_membership_theorem,
    ⟨
      v27_expected_propositional_membership_theorem,
      ⟨
        fun n d h => v27_actual_mem_implies_nonzero h,
        fun n d h => v27_actual_mem_implies_divides h
      ⟩
    ⟩
  ⟩

theorem v27_arbitrary_propositional_membership_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
