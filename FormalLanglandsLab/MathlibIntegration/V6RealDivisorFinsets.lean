import FormalLanglandsLab.MathlibIntegration.V6Audit
import Mathlib.Data.Finset.Basic

namespace FormalLanglandsLab
namespace MathlibIntegration

open Finset

def v6IsDivisor
    (n d : Nat) : Prop :=
  d ≠ 0 ∧ d ∣ n

def v6DivisorFinset
    (n : Nat) : Finset Nat :=
  (Finset.range (n + 1)).filter
    (fun d => v6IsDivisor n d)

theorem v6_mem_divisorFinset_iff
    {n d : Nat} :
    d ∈ v6DivisorFinset n ↔
      d ∈ Finset.range (n + 1) ∧ v6IsDivisor n d := by
  rfl

theorem v6_divisorFinset_members_are_in_range
    {n d : Nat}
    (h : d ∈ v6DivisorFinset n) :
    d ∈ Finset.range (n + 1) := by
  exact (Finset.mem_filter.mp h).1

theorem v6_divisorFinset_members_are_nonzero
    {n d : Nat}
    (h : d ∈ v6DivisorFinset n) :
    d ≠ 0 := by
  exact (Finset.mem_filter.mp h).2.1

theorem v6_divisorFinset_members_divide
    {n d : Nat}
    (h : d ∈ v6DivisorFinset n) :
    d ∣ n := by
  exact (Finset.mem_filter.mp h).2.2

theorem v6_divisorFinset_mem_intro
    {n d : Nat}
    (hRange : d ∈ Finset.range (n + 1))
    (hNonzero : d ≠ 0)
    (hDivides : d ∣ n) :
    d ∈ v6DivisorFinset n := by
  exact Finset.mem_filter.mpr ⟨hRange, ⟨hNonzero, hDivides⟩⟩

theorem v6_one_mem_divisorFinset_six :
    1 ∈ v6DivisorFinset 6 := by
  apply v6_divisorFinset_mem_intro
  · decide
  · decide
  · exact Nat.one_dvd 6

theorem v6_two_mem_divisorFinset_six :
    2 ∈ v6DivisorFinset 6 := by
  apply v6_divisorFinset_mem_intro
  · decide
  · decide
  · exact ⟨3, rfl⟩

theorem v6_three_mem_divisorFinset_six :
    3 ∈ v6DivisorFinset 6 := by
  apply v6_divisorFinset_mem_intro
  · decide
  · decide
  · exact ⟨2, rfl⟩

theorem v6_six_mem_divisorFinset_six :
    6 ∈ v6DivisorFinset 6 := by
  apply v6_divisorFinset_mem_intro
  · decide
  · decide
  · exact ⟨1, rfl⟩

theorem v6_zero_not_mem_divisorFinset_six :
    0 ∉ v6DivisorFinset 6 := by
  intro h
  exact (v6_divisorFinset_members_are_nonzero h) rfl

theorem v6_divisorFinset_member_two_divides_six :
    2 ∈ v6DivisorFinset 6 →
      2 ∣ 6 := by
  intro h
  exact v6_divisorFinset_members_divide h

theorem v6_divisorFinset_member_three_divides_six :
    3 ∈ v6DivisorFinset 6 →
      3 ∣ 6 := by
  intro h
  exact v6_divisorFinset_members_divide h

theorem v6_divisorFinset_member_six_divides_six :
    6 ∈ v6DivisorFinset 6 →
      6 ∣ 6 := by
  intro h
  exact v6_divisorFinset_members_divide h

end MathlibIntegration
end FormalLanglandsLab
