import Mathlib.Data.Nat.Prime.Basic

namespace FormalLanglandsLab
namespace MathlibIntegration

def mathlibDividesBool
    (a b : Nat) : Bool :=
  decide (a ∣ b)

theorem two_divides_six_mathlib :
    2 ∣ 6 := by
  decide

theorem three_divides_twelve_mathlib :
    3 ∣ 12 := by
  decide

theorem five_divides_twenty_five_mathlib :
    5 ∣ 25 := by
  decide

theorem two_does_not_divide_five_mathlib :
    ¬ 2 ∣ 5 := by
  decide

theorem three_does_not_divide_ten_mathlib :
    ¬ 3 ∣ 10 := by
  decide

theorem mathlibDividesBool_two_six :
    mathlibDividesBool 2 6 = true := by
  rfl

theorem mathlibDividesBool_three_twelve :
    mathlibDividesBool 3 12 = true := by
  rfl

theorem mathlibDividesBool_two_five :
    mathlibDividesBool 2 5 = false := by
  rfl

theorem mathlibDividesBool_three_ten :
    mathlibDividesBool 3 10 = false := by
  rfl

end MathlibIntegration
end FormalLanglandsLab
