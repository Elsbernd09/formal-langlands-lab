import FormalLanglandsLab.MathlibIntegration.V7Dashboard
import Mathlib.Data.Finset.Basic

namespace FormalLanglandsLab
namespace MathlibIntegration

open Finset

theorem v8_divisorFinset_member_lt_succ
    {n d : Nat}
    (h : d ∈ v6DivisorFinset n) :
    d < n + 1 := by
  exact Finset.mem_range.mp (v7_divisorFinset_member_in_range h)

theorem v8_divisorFinset_member_le
    {n d : Nat}
    (h : d ∈ v6DivisorFinset n) :
    d ≤ n := by
  exact Nat.lt_succ_iff.mp (v8_divisorFinset_member_lt_succ h)

theorem v8_bound_to_range
    {n d : Nat}
    (h : d ≤ n) :
    d ∈ Finset.range (n + 1) := by
  exact Finset.mem_range.mpr (Nat.lt_succ_iff.mpr h)

theorem v8_divisorFinset_mem_intro_from_bound
    {n d : Nat}
    (hBound : d ≤ n)
    (hBool : v6IsDivisorBool n d = true) :
    d ∈ v6DivisorFinset n := by
  apply v7_divisorFinset_mem_intro
  · exact v8_bound_to_range hBound
  · exact hBool

theorem v8_mem_v6DivisorFinset_iff_bound_bool
    {n d : Nat} :
    d ∈ v6DivisorFinset n ↔
      d ≤ n ∧ v6IsDivisorBool n d = true := by
  constructor
  · intro h
    exact ⟨v8_divisorFinset_member_le h, v7_divisorFinset_member_bool_true h⟩
  · intro h
    exact v8_divisorFinset_mem_intro_from_bound h.1 h.2

theorem v8_bool_false_not_mem
    {n d : Nat}
    (hFalse : v6IsDivisorBool n d = false) :
    d ∉ v6DivisorFinset n := by
  intro h
  have hTrue : v6IsDivisorBool n d = true :=
    v7_divisorFinset_member_bool_true h
  rw [hFalse] at hTrue
  cases hTrue

theorem v8_out_of_bound_not_mem
    {n d : Nat}
    (hOut : n < d) :
    d ∉ v6DivisorFinset n := by
  intro h
  have hLe : d ≤ n := v8_divisorFinset_member_le h
  exact Nat.not_lt_of_ge hLe hOut

theorem v8_two_mem_six_by_bound_bool :
    2 ∈ v6DivisorFinset 6 := by
  apply v8_divisorFinset_mem_intro_from_bound
  · decide
  · rfl

theorem v8_four_not_mem_six_by_bool :
    4 ∉ v6DivisorFinset 6 := by
  apply v8_bool_false_not_mem
  rfl

theorem v8_twelve_mem_twelve_by_bound_bool :
    12 ∈ v6DivisorFinset 12 := by
  apply v8_divisorFinset_mem_intro_from_bound
  · decide
  · rfl

theorem v8_thirteen_not_mem_twelve_by_bound :
    13 ∉ v6DivisorFinset 12 := by
  apply v8_out_of_bound_not_mem
  decide

theorem v8_bounded_membership_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
