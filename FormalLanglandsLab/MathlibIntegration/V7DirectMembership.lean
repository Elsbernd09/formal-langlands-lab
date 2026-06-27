import FormalLanglandsLab.MathlibIntegration.V6Dashboard
import Mathlib.Data.Finset.Basic

namespace FormalLanglandsLab
namespace MathlibIntegration

open Finset

theorem v7_mem_v6DivisorFinset_iff
    {n d : Nat} :
    d ∈ v6DivisorFinset n ↔
      d ∈ Finset.range (n + 1) ∧ v6IsDivisorBool n d = true := by
  unfold v6DivisorFinset
  exact Finset.mem_filter

theorem v7_divisorFinset_member_in_range
    {n d : Nat}
    (h : d ∈ v6DivisorFinset n) :
    d ∈ Finset.range (n + 1) := by
  exact (v7_mem_v6DivisorFinset_iff.mp h).1

theorem v7_divisorFinset_member_bool_true
    {n d : Nat}
    (h : d ∈ v6DivisorFinset n) :
    v6IsDivisorBool n d = true := by
  exact (v7_mem_v6DivisorFinset_iff.mp h).2

theorem v7_divisorFinset_mem_intro
    {n d : Nat}
    (hRange : d ∈ Finset.range (n + 1))
    (hBool : v6IsDivisorBool n d = true) :
    d ∈ v6DivisorFinset n := by
  exact v7_mem_v6DivisorFinset_iff.mpr ⟨hRange, hBool⟩

theorem v7_one_mem_divisorFinset_six :
    1 ∈ v6DivisorFinset 6 := by
  apply v7_divisorFinset_mem_intro
  · decide
  · rfl

theorem v7_two_mem_divisorFinset_six :
    2 ∈ v6DivisorFinset 6 := by
  apply v7_divisorFinset_mem_intro
  · decide
  · rfl

theorem v7_three_mem_divisorFinset_six :
    3 ∈ v6DivisorFinset 6 := by
  apply v7_divisorFinset_mem_intro
  · decide
  · rfl

theorem v7_six_mem_divisorFinset_six :
    6 ∈ v6DivisorFinset 6 := by
  apply v7_divisorFinset_mem_intro
  · decide
  · rfl

theorem v7_zero_not_mem_divisorFinset_six :
    0 ∉ v6DivisorFinset 6 := by
  intro h
  have hb : v6IsDivisorBool 6 0 = true :=
    v7_divisorFinset_member_bool_true h
  rw [v6_isDivisorBool_zero_six] at hb
  cases hb

theorem v7_four_not_mem_divisorFinset_six :
    4 ∉ v6DivisorFinset 6 := by
  intro h
  have hb : v6IsDivisorBool 6 4 = true :=
    v7_divisorFinset_member_bool_true h
  rw [v6_isDivisorBool_four_six] at hb
  cases hb

theorem v7_membership_theorem_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
