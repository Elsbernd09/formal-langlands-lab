import FormalLanglandsLab.MathlibIntegration.V23ArbitraryMembershipBridge

namespace FormalLanglandsLab
namespace MathlibIntegration

def v24PropositionalDivisorPredicate (n d : Nat) : Prop :=
  d ≠ 0 ∧ d ∣ n

theorem v24_propositional_divisor_predicate_eq_v22
    (n d : Nat) :
    v24PropositionalDivisorPredicate n d ↔ v22DivisorPredicate n d := by
  rfl

theorem v24_propositional_divisor_predicate_eq_v6
    (n d : Nat) :
    v24PropositionalDivisorPredicate n d ↔ v6IsDivisor n d := by
  rfl

def v24ActualMembershipBooleanBridge : Prop :=
  ∀ n d : Nat,
    d ∈ v6DivisorFinset n ↔
      d ≤ n ∧ v6IsDivisorBool n d = true

def v24ExpectedMembershipBooleanBridge : Prop :=
  ∀ n d : Nat,
    d ∈ v22ExpectedDivisorFinset n ↔
      d ≤ n ∧ v6IsDivisorBool n d = true

theorem v24_actual_membership_boolean_bridge :
    v24ActualMembershipBooleanBridge := by
  intro n d
  exact v23_actual_membership_bridge n d

theorem v24_expected_membership_boolean_bridge :
    v24ExpectedMembershipBooleanBridge := by
  intro n d
  exact v23_expected_membership_bridge n d

theorem v24_actual_mem_implies_bound
    {n d : Nat}
    (h : d ∈ v6DivisorFinset n) :
    d ≤ n := by
  exact v23_actual_mem_implies_bound h

theorem v24_expected_mem_implies_bound
    {n d : Nat}
    (h : d ∈ v22ExpectedDivisorFinset n) :
    d ≤ n := by
  exact v23_expected_mem_implies_bound h

theorem v24_actual_mem_implies_bool_true
    {n d : Nat}
    (h : d ∈ v6DivisorFinset n) :
    v6IsDivisorBool n d = true := by
  exact v23_actual_mem_implies_bool h

theorem v24_expected_mem_implies_bool_true
    {n d : Nat}
    (h : d ∈ v22ExpectedDivisorFinset n) :
    v6IsDivisorBool n d = true := by
  exact v23_expected_mem_implies_bool h

theorem v24_actual_mem_intro_from_bool
    {n d : Nat}
    (hbound : d ≤ n)
    (hbool : v6IsDivisorBool n d = true) :
    d ∈ v6DivisorFinset n := by
  exact v23_actual_mem_intro hbound hbool

theorem v24_expected_mem_intro_from_bool
    {n d : Nat}
    (hbound : d ≤ n)
    (hbool : v6IsDivisorBool n d = true) :
    d ∈ v22ExpectedDivisorFinset n := by
  exact v23_expected_mem_intro hbound hbool

def v24BooleanPropositionalPreparationPackage : Prop :=
  (∀ n d : Nat, v24PropositionalDivisorPredicate n d ↔ v6IsDivisor n d) ∧
  v24ActualMembershipBooleanBridge ∧
  v24ExpectedMembershipBooleanBridge ∧
  (∀ n d : Nat, d ∈ v6DivisorFinset n → v6IsDivisorBool n d = true) ∧
  (∀ n d : Nat, d ∈ v22ExpectedDivisorFinset n → v6IsDivisorBool n d = true)

theorem v24_boolean_propositional_preparation_package :
    v24BooleanPropositionalPreparationPackage := by
  exact ⟨
    fun n d => v24_propositional_divisor_predicate_eq_v6 n d,
    ⟨
      v24_actual_membership_boolean_bridge,
      ⟨
        v24_expected_membership_boolean_bridge,
        ⟨
          fun n d h => v24_actual_mem_implies_bool_true h,
          fun n d h => v24_expected_mem_implies_bool_true h
        ⟩
      ⟩
    ⟩
  ⟩

theorem v24_boolean_propositional_bridge_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
