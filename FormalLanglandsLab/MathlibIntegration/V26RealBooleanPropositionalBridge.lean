import FormalLanglandsLab.MathlibIntegration.V25DivisorBooleanInfrastructureAudit

namespace FormalLanglandsLab
namespace MathlibIntegration

theorem v26_mathlibDividesBool_eq_true_iff
    (a b : Nat) :
    mathlibDividesBool a b = true ↔ a ∣ b := by
  unfold mathlibDividesBool
  simp

theorem v26_v6IsDivisorBool_eq_true_iff
    (n d : Nat) :
    v6IsDivisorBool n d = true ↔ v6IsDivisor n d := by
  unfold v6IsDivisorBool
  unfold v6IsDivisor
  by_cases hd : d = 0
  · simp [hd]
  · simp [hd, v26_mathlibDividesBool_eq_true_iff]

theorem v26_bool_true_implies_v6IsDivisor
    {n d : Nat}
    (h : v6IsDivisorBool n d = true) :
    v6IsDivisor n d := by
  exact (v26_v6IsDivisorBool_eq_true_iff n d).mp h

theorem v26_v6IsDivisor_implies_bool_true
    {n d : Nat}
    (h : v6IsDivisor n d) :
    v6IsDivisorBool n d = true := by
  exact (v26_v6IsDivisorBool_eq_true_iff n d).mpr h

theorem v26_actual_mem_iff_bound_and_v6IsDivisor
    (n d : Nat) :
    d ∈ v6DivisorFinset n ↔ d ≤ n ∧ v6IsDivisor n d := by
  have h₁ := v23_actual_membership_bridge n d
  constructor
  · intro hmem
    have hb := h₁.mp hmem
    exact ⟨hb.1, v26_bool_true_implies_v6IsDivisor hb.2⟩
  · intro h
    exact h₁.mpr ⟨h.1, v26_v6IsDivisor_implies_bool_true h.2⟩

theorem v26_expected_mem_iff_bound_and_v6IsDivisor
    (n d : Nat) :
    d ∈ v22ExpectedDivisorFinset n ↔ d ≤ n ∧ v6IsDivisor n d := by
  have h₁ := v23_expected_membership_bridge n d
  constructor
  · intro hmem
    have hb := h₁.mp hmem
    exact ⟨hb.1, v26_bool_true_implies_v6IsDivisor hb.2⟩
  · intro h
    exact h₁.mpr ⟨h.1, v26_v6IsDivisor_implies_bool_true h.2⟩

def v26RealBooleanPropositionalBridgePackage : Prop :=
  (∀ n d : Nat, v6IsDivisorBool n d = true ↔ v6IsDivisor n d) ∧
  (∀ n d : Nat, d ∈ v6DivisorFinset n ↔ d ≤ n ∧ v6IsDivisor n d) ∧
  (∀ n d : Nat, d ∈ v22ExpectedDivisorFinset n ↔ d ≤ n ∧ v6IsDivisor n d)

theorem v26_real_boolean_propositional_bridge_package :
    v26RealBooleanPropositionalBridgePackage := by
  exact ⟨
    fun n d => v26_v6IsDivisorBool_eq_true_iff n d,
    ⟨
      fun n d => v26_actual_mem_iff_bound_and_v6IsDivisor n d,
      fun n d => v26_expected_mem_iff_bound_and_v6IsDivisor n d
    ⟩
  ⟩

theorem v26_real_boolean_propositional_bridge_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
