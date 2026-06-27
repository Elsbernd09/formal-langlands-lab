import FormalLanglandsLab.MathlibIntegration.PrimeInfrastructure
import FormalLanglandsLab.NumberTheory.Coprimality

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.NumberTheory

def mathlibGcdValue
    (a b : Nat) : Nat :=
  Nat.gcd a b

def mathlibAreCoprime
    (a b : Nat) : Prop :=
  mathlibGcdValue a b = 1

def mathlibCoprimeBool
    (a b : Nat) : Bool :=
  mathlibGcdValue a b == 1

theorem mathlib_gcd_two_three :
    mathlibGcdValue 2 3 = 1 := by
  rfl

theorem mathlib_gcd_two_four :
    mathlibGcdValue 2 4 = 2 := by
  rfl

theorem mathlib_gcd_three_four :
    mathlibGcdValue 3 4 = 1 := by
  rfl

theorem mathlib_gcd_four_six :
    mathlibGcdValue 4 6 = 2 := by
  rfl

theorem mathlib_coprimeBool_two_three :
    mathlibCoprimeBool 2 3 = true := by
  rfl

theorem mathlib_coprimeBool_three_four :
    mathlibCoprimeBool 3 4 = true := by
  rfl

theorem mathlib_coprimeBool_two_four :
    mathlibCoprimeBool 2 4 = false := by
  rfl

theorem mathlib_coprimeBool_four_six :
    mathlibCoprimeBool 4 6 = false := by
  rfl

theorem mathlib_coprime_two_three :
    mathlibAreCoprime 2 3 := by
  rfl

theorem mathlib_coprime_three_four :
    mathlibAreCoprime 3 4 := by
  rfl

theorem pure_and_mathlib_gcd_agree_two_three :
    gcdValue 2 3 = mathlibGcdValue 2 3 := by
  rfl

theorem pure_and_mathlib_gcd_agree_two_four :
    gcdValue 2 4 = mathlibGcdValue 2 4 := by
  rfl

theorem pure_and_mathlib_coprimeBool_agree_two_three :
    areCoprimeBool 2 3 = mathlibCoprimeBool 2 3 := by
  rfl

theorem pure_and_mathlib_coprimeBool_agree_two_four :
    areCoprimeBool 2 4 = mathlibCoprimeBool 2 4 := by
  rfl

end MathlibIntegration
end FormalLanglandsLab
