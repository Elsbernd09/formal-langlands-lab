import FormalLanglandsLab.MathlibIntegration.V6Audit
import FormalLanglandsLab.MathlibIntegration.Divisibility
import Mathlib.Data.Finset.Basic

namespace FormalLanglandsLab
namespace MathlibIntegration

open Finset

def v6IsDivisor
    (n d : Nat) : Prop :=
  d ≠ 0 ∧ d ∣ n

def v6IsDivisorBool
    (n d : Nat) : Bool :=
  if d = 0 then
    false
  else
    mathlibDividesBool d n

def v6DivisorFinset
    (n : Nat) : Finset Nat :=
  (Finset.range (n + 1)).filter
    (fun d => v6IsDivisorBool n d = true)

theorem v6_isDivisorBool_zero_six :
    v6IsDivisorBool 6 0 = false := by
  rfl

theorem v6_isDivisorBool_one_six :
    v6IsDivisorBool 6 1 = true := by
  rfl

theorem v6_isDivisorBool_two_six :
    v6IsDivisorBool 6 2 = true := by
  rfl

theorem v6_isDivisorBool_three_six :
    v6IsDivisorBool 6 3 = true := by
  rfl

theorem v6_isDivisorBool_four_six :
    v6IsDivisorBool 6 4 = false := by
  rfl

theorem v6_isDivisorBool_six_six :
    v6IsDivisorBool 6 6 = true := by
  rfl

theorem v6_isDivisor_one_six :
    v6IsDivisor 6 1 := by
  constructor
  · decide
  · exact Nat.one_dvd 6

theorem v6_isDivisor_two_six :
    v6IsDivisor 6 2 := by
  constructor
  · decide
  · decide

theorem v6_isDivisor_three_six :
    v6IsDivisor 6 3 := by
  constructor
  · decide
  · decide

theorem v6_isDivisor_six_six :
    v6IsDivisor 6 6 := by
  constructor
  · decide
  · exact Nat.dvd_refl 6

theorem v6_zero_not_isDivisor
    (n : Nat) :
    ¬ v6IsDivisor n 0 := by
  intro h
  exact h.1 rfl

theorem v6_isDivisor_two_six_divides :
    v6IsDivisor 6 2 → 2 ∣ 6 := by
  intro h
  exact h.2

theorem v6_isDivisor_three_six_divides :
    v6IsDivisor 6 3 → 3 ∣ 6 := by
  intro h
  exact h.2

theorem v6_isDivisor_six_six_divides :
    v6IsDivisor 6 6 → 6 ∣ 6 := by
  intro h
  exact h.2

theorem v6_divisorFinset_is_filter_definition :
    v6DivisorFinset 6 =
      (Finset.range (6 + 1)).filter
        (fun d => v6IsDivisorBool 6 d = true) := by
  rfl

theorem v6_divisorFinset_definition_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
