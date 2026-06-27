import FormalLanglandsLab.NumberTheory.MultiplicativityTests

namespace FormalLanglandsLab
namespace NumberTheory

open FormalLanglandsLab.Core

def gcdValue
    (a b : Nat) : Nat :=
  Nat.gcd a b

def areCoprime
    (a b : Nat) : Prop :=
  gcdValue a b = 1

def areCoprimeBool
    (a b : Nat) : Bool :=
  gcdValue a b == 1

def coprimeMultiplicativePairProperty
    (f : ArithmeticFunction Nat)
    (a b : Nat) : Prop :=
  areCoprime a b →
    f (a * b) = f a * f b

def coprimeMultiplicativePairTest
    (f : ArithmeticFunction Nat)
    (a b : Nat) : Bool :=
  if areCoprimeBool a b then
    multiplicativePairTest f a b
  else
    true

theorem gcd_two_three :
    gcdValue 2 3 = 1 := by
  rfl

theorem gcd_two_four :
    gcdValue 2 4 = 2 := by
  rfl

theorem gcd_three_four :
    gcdValue 3 4 = 1 := by
  rfl

theorem gcd_four_six :
    gcdValue 4 6 = 2 := by
  rfl

theorem coprime_two_three :
    areCoprime 2 3 := by
  rfl

theorem coprime_three_four :
    areCoprime 3 4 := by
  rfl

theorem not_coprime_two_four :
    areCoprimeBool 2 4 = false := by
  rfl

theorem not_coprime_four_six :
    areCoprimeBool 4 6 = false := by
  rfl

theorem coprimeBool_two_three :
    areCoprimeBool 2 3 = true := by
  rfl

theorem coprimeBool_three_four :
    areCoprimeBool 3 4 = true := by
  rfl

theorem constantOne_coprime_multiplicative_two_three :
    coprimeMultiplicativePairProperty constantOneFunction 2 3 := by
  intro h
  rfl

theorem identity_coprime_multiplicative_two_three :
    coprimeMultiplicativePairProperty identityArithmeticFunction 2 3 := by
  intro h
  rfl

theorem square_coprime_multiplicative_two_three :
    coprimeMultiplicativePairProperty squareArithmeticFunction 2 3 := by
  intro h
  rfl

theorem divisorCount_coprime_pair_test_two_three :
    coprimeMultiplicativePairTest divisorCountFunction 2 3 = true := by
  rfl

theorem sumOfDivisors_coprime_pair_test_two_three :
    coprimeMultiplicativePairTest sumOfDivisorsFunction 2 3 = true := by
  rfl

theorem squareDivisorSum_coprime_pair_test_two_three :
    coprimeMultiplicativePairTest squareDivisorSumFunction 2 3 = true := by
  rfl

theorem divisorCount_non_coprime_pair_test_two_four :
    coprimeMultiplicativePairTest divisorCountFunction 2 4 = true := by
  rfl

theorem sumOfDivisors_non_coprime_pair_test_two_four :
    coprimeMultiplicativePairTest sumOfDivisorsFunction 2 4 = true := by
  rfl

end NumberTheory
end FormalLanglandsLab
