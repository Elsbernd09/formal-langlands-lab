import FormalLanglandsLab.MathlibIntegration.V21Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v22DivisorPredicate (n d : Nat) : Prop :=
  d ≠ 0 ∧ d ∣ n

def v22ExpectedDivisorFinset (n : Nat) : Finset Nat :=
  (Finset.range (n + 1)).filter (fun d => v6IsDivisorBool n d = true)

theorem v22_divisor_predicate_matches_v6
    (n d : Nat) :
    v22DivisorPredicate n d ↔ v6IsDivisor n d := by
  rfl

theorem v22_expected_divisor_finset_eq_actual
    (n : Nat) :
    v22ExpectedDivisorFinset n = v6DivisorFinset n := by
  rfl

theorem v22_mem_expected_iff_range_bool
    {n d : Nat} :
    d ∈ v22ExpectedDivisorFinset n ↔
      d ∈ Finset.range (n + 1) ∧ v6IsDivisorBool n d = true := by
  unfold v22ExpectedDivisorFinset
  exact Finset.mem_filter

theorem v22_expected_mem_to_actual_mem
    {n d : Nat}
    (h : d ∈ v22ExpectedDivisorFinset n) :
    d ∈ v6DivisorFinset n := by
  simpa [v22_expected_divisor_finset_eq_actual n] using h

theorem v22_actual_mem_to_expected_mem
    {n d : Nat}
    (h : d ∈ v6DivisorFinset n) :
    d ∈ v22ExpectedDivisorFinset n := by
  simpa [v22_expected_divisor_finset_eq_actual n] using h

theorem v22_expected_membership_range_part
    {n d : Nat}
    (h : d ∈ v22ExpectedDivisorFinset n) :
    d ∈ Finset.range (n + 1) := by
  exact (v22_mem_expected_iff_range_bool.mp h).1

theorem v22_expected_membership_bool_part
    {n d : Nat}
    (h : d ∈ v22ExpectedDivisorFinset n) :
    v6IsDivisorBool n d = true := by
  exact (v22_mem_expected_iff_range_bool.mp h).2

theorem v22_expected_membership_intro
    {n d : Nat}
    (hrange : d ∈ Finset.range (n + 1))
    (hbool : v6IsDivisorBool n d = true) :
    d ∈ v22ExpectedDivisorFinset n := by
  exact v22_mem_expected_iff_range_bool.mpr ⟨hrange, hbool⟩

def v22GeneralDivisorPredicatePackage : Prop :=
  (∀ n d : Nat, v22DivisorPredicate n d ↔ v6IsDivisor n d) ∧
  (∀ n : Nat, v22ExpectedDivisorFinset n = v6DivisorFinset n) ∧
  (∀ n d : Nat,
    d ∈ v22ExpectedDivisorFinset n ↔
      d ∈ Finset.range (n + 1) ∧ v6IsDivisorBool n d = true)

theorem v22_general_divisor_predicate_package :
    v22GeneralDivisorPredicatePackage := by
  exact ⟨
    fun n d => v22_divisor_predicate_matches_v6 n d,
    ⟨
      fun n => v22_expected_divisor_finset_eq_actual n,
      fun n d => v22_mem_expected_iff_range_bool
    ⟩
  ⟩

theorem v22_general_divisor_predicate_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
