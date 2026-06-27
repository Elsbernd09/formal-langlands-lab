import FormalLanglandsLab.NumberTheory.Coprimality

namespace FormalLanglandsLab
namespace NumberTheory

open FormalLanglandsLab.Core

def coprimePairSuiteUpToFour
    (f : ArithmeticFunction Nat) : Bool :=
  coprimeMultiplicativePairTest f 1 1 &&
  coprimeMultiplicativePairTest f 1 2 &&
  coprimeMultiplicativePairTest f 1 3 &&
  coprimeMultiplicativePairTest f 1 4 &&
  coprimeMultiplicativePairTest f 2 1 &&
  coprimeMultiplicativePairTest f 3 1 &&
  coprimeMultiplicativePairTest f 4 1 &&
  coprimeMultiplicativePairTest f 2 3 &&
  coprimeMultiplicativePairTest f 3 2 &&
  coprimeMultiplicativePairTest f 3 4 &&
  coprimeMultiplicativePairTest f 4 3

def coprimePairSuiteUpToFive
    (f : ArithmeticFunction Nat) : Bool :=
  coprimePairSuiteUpToFour f &&
  coprimeMultiplicativePairTest f 2 5 &&
  coprimeMultiplicativePairTest f 5 2 &&
  coprimeMultiplicativePairTest f 3 5 &&
  coprimeMultiplicativePairTest f 5 3 &&
  coprimeMultiplicativePairTest f 4 5 &&
  coprimeMultiplicativePairTest f 5 4

def nonCoprimePairFailureWitness
    (f : ArithmeticFunction Nat)
    (a b : Nat) : Bool :=
  areCoprimeBool a b == false

theorem coprime_suite_constantOne_four :
    coprimePairSuiteUpToFour constantOneFunction = true := by
  rfl

theorem coprime_suite_identity_four :
    coprimePairSuiteUpToFour identityArithmeticFunction = true := by
  rfl

theorem coprime_suite_square_four :
    coprimePairSuiteUpToFour squareArithmeticFunction = true := by
  rfl

theorem coprime_suite_divisorCount_four :
    coprimePairSuiteUpToFour divisorCountFunction = true := by
  rfl

theorem coprime_suite_sumOfDivisors_four :
    coprimePairSuiteUpToFour sumOfDivisorsFunction = true := by
  rfl

theorem coprime_suite_squareDivisorSum_four :
    coprimePairSuiteUpToFour squareDivisorSumFunction = true := by
  rfl

theorem coprime_suite_constantOne_five :
    coprimePairSuiteUpToFive constantOneFunction = true := by
  rfl

theorem coprime_suite_identity_five :
    coprimePairSuiteUpToFive identityArithmeticFunction = true := by
  rfl

theorem coprime_suite_square_five :
    coprimePairSuiteUpToFive squareArithmeticFunction = true := by
  rfl

theorem divisorCount_coprime_pair_three_four :
    coprimeMultiplicativePairTest divisorCountFunction 3 4 = true := by
  rfl

theorem sumOfDivisors_coprime_pair_three_four :
    coprimeMultiplicativePairTest sumOfDivisorsFunction 3 4 = true := by
  rfl

theorem squareDivisorSum_coprime_pair_three_four :
    coprimeMultiplicativePairTest squareDivisorSumFunction 3 4 = true := by
  rfl

theorem divisorCount_coprime_pair_two_five :
    coprimeMultiplicativePairTest divisorCountFunction 2 5 = true := by
  rfl

theorem sumOfDivisors_coprime_pair_two_five :
    coprimeMultiplicativePairTest sumOfDivisorsFunction 2 5 = true := by
  rfl

theorem squareDivisorSum_coprime_pair_two_five :
    coprimeMultiplicativePairTest squareDivisorSumFunction 2 5 = true := by
  rfl

theorem nonCoprimeWitness_two_four :
    nonCoprimePairFailureWitness divisorCountFunction 2 4 = true := by
  rfl

theorem nonCoprimeWitness_three_six :
    nonCoprimePairFailureWitness sumOfDivisorsFunction 3 6 = true := by
  rfl

theorem divisorCount_twelve :
    divisorCountFunction 12 = 6 := by
  rfl

theorem sumOfDivisors_twelve :
    sumOfDivisorsFunction 12 = 28 := by
  rfl

theorem squareDivisorSum_twelve :
    squareDivisorSumFunction 12 = 210 := by
  rfl

end NumberTheory
end FormalLanglandsLab
