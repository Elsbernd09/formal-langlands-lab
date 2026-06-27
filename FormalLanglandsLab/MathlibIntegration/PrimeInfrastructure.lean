import FormalLanglandsLab.MathlibIntegration.Divisibility

namespace FormalLanglandsLab
namespace MathlibIntegration

def mathlibPrimeBool
    (n : Nat) : Bool :=
  decide (Nat.Prime n)

def smallPrimeList : List Nat :=
  [2, 3, 5, 7, 11]

def smallCompositeList : List Nat :=
  [4, 6, 8, 9, 10, 12]

theorem mathlibPrimeBool_two :
    mathlibPrimeBool 2 = true := by
  rfl

theorem mathlibPrimeBool_three :
    mathlibPrimeBool 3 = true := by
  rfl

theorem mathlibPrimeBool_five :
    mathlibPrimeBool 5 = true := by
  rfl

theorem mathlibPrimeBool_seven :
    mathlibPrimeBool 7 = true := by
  rfl

theorem mathlibPrimeBool_eleven :
    mathlibPrimeBool 11 = true := by
  rfl

theorem mathlibPrimeBool_four :
    mathlibPrimeBool 4 = false := by
  rfl

theorem mathlibPrimeBool_six :
    mathlibPrimeBool 6 = false := by
  rfl

theorem mathlibPrimeBool_nine :
    mathlibPrimeBool 9 = false := by
  rfl

theorem seven_is_prime_mathlib :
    Nat.Prime 7 := by
  decide

theorem eleven_is_prime_mathlib :
    Nat.Prime 11 := by
  decide

theorem six_is_not_prime_mathlib :
    ¬ Nat.Prime 6 := by
  decide

theorem nine_is_not_prime_mathlib :
    ¬ Nat.Prime 9 := by
  decide

theorem smallPrimeList_length :
    smallPrimeList.length = 5 := by
  rfl

theorem smallCompositeList_length :
    smallCompositeList.length = 6 := by
  rfl

end MathlibIntegration
end FormalLanglandsLab
