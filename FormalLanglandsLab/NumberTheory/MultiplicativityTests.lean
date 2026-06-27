import FormalLanglandsLab.NumberTheory.ClassicalArithmeticFunctions

namespace FormalLanglandsLab
namespace NumberTheory

open FormalLanglandsLab.Core

def multiplicativePairProperty
    (f : ArithmeticFunction Nat)
    (a b : Nat) : Prop :=
  f (a * b) = f a * f b

def multiplicativePairTest
    (f : ArithmeticFunction Nat)
    (a b : Nat) : Bool :=
  f (a * b) == f a * f b

def finiteMultiplicativityTestUpToThree
    (f : ArithmeticFunction Nat) : Bool :=
  multiplicativePairTest f 1 1 &&
  multiplicativePairTest f 1 2 &&
  multiplicativePairTest f 1 3 &&
  multiplicativePairTest f 2 1 &&
  multiplicativePairTest f 3 1 &&
  multiplicativePairTest f 2 3 &&
  multiplicativePairTest f 3 2

def finiteMultiplicativityTestUpToFour
    (f : ArithmeticFunction Nat) : Bool :=
  finiteMultiplicativityTestUpToThree f &&
  multiplicativePairTest f 1 4 &&
  multiplicativePairTest f 4 1

theorem constantOne_multiplicative_pair_two_three :
    multiplicativePairProperty constantOneFunction 2 3 := by
  rfl

theorem identity_multiplicative_pair_two_three :
    multiplicativePairProperty identityArithmeticFunction 2 3 := by
  rfl

theorem square_multiplicative_pair_two_three :
    multiplicativePairProperty squareArithmeticFunction 2 3 := by
  rfl

theorem constantOne_pair_test_two_three :
    multiplicativePairTest constantOneFunction 2 3 = true := by
  rfl

theorem identity_pair_test_two_three :
    multiplicativePairTest identityArithmeticFunction 2 3 = true := by
  rfl

theorem square_pair_test_two_three :
    multiplicativePairTest squareArithmeticFunction 2 3 = true := by
  rfl

theorem divisorCount_pair_test_two_three :
    multiplicativePairTest divisorCountFunction 2 3 = true := by
  rfl

theorem sumOfDivisors_pair_test_two_three :
    multiplicativePairTest sumOfDivisorsFunction 2 3 = true := by
  rfl

theorem squareDivisorSum_pair_test_two_three :
    multiplicativePairTest squareDivisorSumFunction 2 3 = true := by
  rfl

theorem constantOne_finite_test_three :
    finiteMultiplicativityTestUpToThree constantOneFunction = true := by
  rfl

theorem identity_finite_test_three :
    finiteMultiplicativityTestUpToThree identityArithmeticFunction = true := by
  rfl

theorem square_finite_test_three :
    finiteMultiplicativityTestUpToThree squareArithmeticFunction = true := by
  rfl

theorem divisorCount_finite_test_three :
    finiteMultiplicativityTestUpToThree divisorCountFunction = true := by
  rfl

theorem sumOfDivisors_finite_test_three :
    finiteMultiplicativityTestUpToThree sumOfDivisorsFunction = true := by
  rfl

theorem squareDivisorSum_finite_test_three :
    finiteMultiplicativityTestUpToThree squareDivisorSumFunction = true := by
  rfl

theorem divisorCount_six :
    divisorCountFunction 6 = 4 := by
  rfl

theorem sumOfDivisors_six :
    sumOfDivisorsFunction 6 = 12 := by
  rfl

theorem squareDivisorSum_six :
    squareDivisorSumFunction 6 = 50 := by
  rfl

end NumberTheory
end FormalLanglandsLab
