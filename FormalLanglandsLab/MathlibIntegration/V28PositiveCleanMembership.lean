import FormalLanglandsLab.MathlibIntegration.V27ArbitraryPropositionalMembership

namespace FormalLanglandsLab
namespace MathlibIntegration

def v28PositiveActualCleanMembershipTheorem : Prop :=
  ∀ n d : Nat,
    n ≠ 0 →
      (d ∈ v6DivisorFinset n ↔ d ≠ 0 ∧ d ∣ n)

def v28PositiveExpectedCleanMembershipTheorem : Prop :=
  ∀ n d : Nat,
    n ≠ 0 →
      (d ∈ v22ExpectedDivisorFinset n ↔ d ≠ 0 ∧ d ∣ n)

theorem v28_divisor_le_of_positive_target
    {n d : Nat}
    (hn : n ≠ 0)
    (hdvd : d ∣ n) :
    d ≤ n := by
  exact Nat.le_of_dvd (Nat.pos_of_ne_zero hn) hdvd

theorem v28_actual_mem_iff_nonzero_divides_of_positive
    (n d : Nat)
    (hn : n ≠ 0) :
    d ∈ v6DivisorFinset n ↔ d ≠ 0 ∧ d ∣ n := by
  have h₁ := v27_actual_mem_iff_bound_nonzero_divides n d
  constructor
  · intro hmem
    have h := h₁.mp hmem
    exact ⟨h.2.1, h.2.2⟩
  · intro h
    have hbound : d ≤ n := v28_divisor_le_of_positive_target hn h.2
    exact h₁.mpr ⟨hbound, h.1, h.2⟩

theorem v28_expected_mem_iff_nonzero_divides_of_positive
    (n d : Nat)
    (hn : n ≠ 0) :
    d ∈ v22ExpectedDivisorFinset n ↔ d ≠ 0 ∧ d ∣ n := by
  have h₁ := v27_expected_mem_iff_bound_nonzero_divides n d
  constructor
  · intro hmem
    have h := h₁.mp hmem
    exact ⟨h.2.1, h.2.2⟩
  · intro h
    have hbound : d ≤ n := v28_divisor_le_of_positive_target hn h.2
    exact h₁.mpr ⟨hbound, h.1, h.2⟩

theorem v28_positive_actual_clean_membership_theorem :
    v28PositiveActualCleanMembershipTheorem := by
  intro n d hn
  exact v28_actual_mem_iff_nonzero_divides_of_positive n d hn

theorem v28_positive_expected_clean_membership_theorem :
    v28PositiveExpectedCleanMembershipTheorem := by
  intro n d hn
  exact v28_expected_mem_iff_nonzero_divides_of_positive n d hn

theorem v28_actual_positive_mem_implies_divides
    {n d : Nat}
    (hn : n ≠ 0)
    (h : d ∈ v6DivisorFinset n) :
    d ∣ n := by
  exact ((v28_actual_mem_iff_nonzero_divides_of_positive n d hn).mp h).2

theorem v28_actual_positive_mem_implies_nonzero
    {n d : Nat}
    (hn : n ≠ 0)
    (h : d ∈ v6DivisorFinset n) :
    d ≠ 0 := by
  exact ((v28_actual_mem_iff_nonzero_divides_of_positive n d hn).mp h).1

theorem v28_actual_positive_mem_intro
    {n d : Nat}
    (hn : n ≠ 0)
    (hdne : d ≠ 0)
    (hdvd : d ∣ n) :
    d ∈ v6DivisorFinset n := by
  exact (v28_actual_mem_iff_nonzero_divides_of_positive n d hn).mpr
    ⟨hdne, hdvd⟩

theorem v28_expected_positive_mem_intro
    {n d : Nat}
    (hn : n ≠ 0)
    (hdne : d ≠ 0)
    (hdvd : d ∣ n) :
    d ∈ v22ExpectedDivisorFinset n := by
  exact (v28_expected_mem_iff_nonzero_divides_of_positive n d hn).mpr
    ⟨hdne, hdvd⟩

def v28PositiveCleanMembershipPackage : Prop :=
  v28PositiveActualCleanMembershipTheorem ∧
  v28PositiveExpectedCleanMembershipTheorem ∧
  (∀ n d : Nat, n ≠ 0 → d ∈ v6DivisorFinset n → d ∣ n) ∧
  (∀ n d : Nat, n ≠ 0 → d ≠ 0 → d ∣ n → d ∈ v6DivisorFinset n)

theorem v28_positive_clean_membership_package :
    v28PositiveCleanMembershipPackage := by
  exact ⟨
    v28_positive_actual_clean_membership_theorem,
    ⟨
      v28_positive_expected_clean_membership_theorem,
      ⟨
        fun n d hn h => v28_actual_positive_mem_implies_divides hn h,
        fun n d hn hdne hdvd => v28_actual_positive_mem_intro hn hdne hdvd
      ⟩
    ⟩
  ⟩

theorem v28_positive_clean_membership_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
