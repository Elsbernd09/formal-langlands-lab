import FormalLanglandsLab.MathlibIntegration.GcdCoprimality
import FormalLanglandsLab.NumberTheory.EulerCoefficientComparison

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.Core
open FormalLanglandsLab.NumberTheory

def mathlibCoprimeMultiplicativePairProperty
    (f : ArithmeticFunction Nat)
    (a b : Nat) : Prop :=
  mathlibAreCoprime a b →
    f (a * b) = f a * f b

def mathlibCoprimeMultiplicativePairTest
    (f : ArithmeticFunction Nat)
    (a b : Nat) : Bool :=
  if mathlibCoprimeBool a b then
    multiplicativePairTest f a b
  else
    true

theorem mathlib_constantOne_coprime_mult_two_three :
    mathlibCoprimeMultiplicativePairProperty constantOneFunction 2 3 := by
  intro h
  rfl

theorem mathlib_identity_coprime_mult_two_three :
    mathlibCoprimeMultiplicativePairProperty identityArithmeticFunction 2 3 := by
  intro h
  rfl

theorem mathlib_square_coprime_mult_two_three :
    mathlibCoprimeMultiplicativePairProperty squareArithmeticFunction 2 3 := by
  intro h
  rfl

theorem mathlib_divisorCount_pair_two_three :
    mathlibCoprimeMultiplicativePairTest divisorCountFunction 2 3 = true := by
  rfl

theorem mathlib_sumOfDivisors_pair_two_three :
    mathlibCoprimeMultiplicativePairTest sumOfDivisorsFunction 2 3 = true := by
  rfl

theorem mathlib_squareDivisorSum_pair_two_three :
    mathlibCoprimeMultiplicativePairTest squareDivisorSumFunction 2 3 = true := by
  rfl

theorem mathlib_divisorCount_pair_three_four :
    mathlibCoprimeMultiplicativePairTest divisorCountFunction 3 4 = true := by
  rfl

theorem mathlib_sumOfDivisors_pair_three_four :
    mathlibCoprimeMultiplicativePairTest sumOfDivisorsFunction 3 4 = true := by
  rfl

theorem mathlib_squareDivisorSum_pair_three_four :
    mathlibCoprimeMultiplicativePairTest squareDivisorSumFunction 3 4 = true := by
  rfl

theorem mathlib_nonCoprime_pair_two_four_skips :
    mathlibCoprimeMultiplicativePairTest divisorCountFunction 2 4 = true := by
  rfl

theorem mathlib_coeff_compare_divisorCount_two_three :
    coefficientProductAgreement divisorCountFunction 2 3 := by
  rfl

theorem mathlib_coeff_compare_sumOfDivisors_two_three :
    coefficientProductAgreement sumOfDivisorsFunction 2 3 := by
  rfl

theorem mathlib_coeff_compare_squareDivisorSum_two_three :
    coefficientProductAgreement squareDivisorSumFunction 2 3 := by
  rfl

end MathlibIntegration
end FormalLanglandsLab
