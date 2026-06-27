import FormalLanglandsLab.NumberTheory.MultiplicativityTests

namespace FormalLanglandsLab
namespace NumberTheory

open FormalLanglandsLab.Core

def localEulerFactorApprox
    (f : ArithmeticFunction Nat)
    (p : Nat) : Nat :=
  f 1 + f p + f (p * p)

def twoThreeEulerProductApprox
    (f : ArithmeticFunction Nat) : Nat :=
  localEulerFactorApprox f 2 *
  localEulerFactorApprox f 3

def localEulerFactorConstantOneAtTwo : Nat :=
  localEulerFactorApprox constantOneFunction 2

def localEulerFactorIdentityAtTwo : Nat :=
  localEulerFactorApprox identityArithmeticFunction 2

def localEulerFactorSquareAtTwo : Nat :=
  localEulerFactorApprox squareArithmeticFunction 2

def localEulerFactorDivisorCountAtTwo : Nat :=
  localEulerFactorApprox divisorCountFunction 2

def localEulerFactorSumOfDivisorsAtTwo : Nat :=
  localEulerFactorApprox sumOfDivisorsFunction 2

theorem constantOne_localEuler_two :
    localEulerFactorApprox constantOneFunction 2 = 3 := by
  rfl

theorem constantOne_localEuler_three :
    localEulerFactorApprox constantOneFunction 3 = 3 := by
  rfl

theorem constantOne_twoThreeEulerProduct :
    twoThreeEulerProductApprox constantOneFunction = 9 := by
  rfl

theorem identity_localEuler_two :
    localEulerFactorApprox identityArithmeticFunction 2 = 7 := by
  rfl

theorem identity_localEuler_three :
    localEulerFactorApprox identityArithmeticFunction 3 = 13 := by
  rfl

theorem identity_twoThreeEulerProduct :
    twoThreeEulerProductApprox identityArithmeticFunction = 91 := by
  rfl

theorem square_localEuler_two :
    localEulerFactorApprox squareArithmeticFunction 2 = 21 := by
  rfl

theorem square_localEuler_three :
    localEulerFactorApprox squareArithmeticFunction 3 = 91 := by
  rfl

theorem square_twoThreeEulerProduct :
    twoThreeEulerProductApprox squareArithmeticFunction = 1911 := by
  rfl

theorem divisorCount_localEuler_two :
    localEulerFactorApprox divisorCountFunction 2 = 6 := by
  rfl

theorem divisorCount_localEuler_three :
    localEulerFactorApprox divisorCountFunction 3 = 6 := by
  rfl

theorem divisorCount_twoThreeEulerProduct :
    twoThreeEulerProductApprox divisorCountFunction = 36 := by
  rfl

theorem sumOfDivisors_localEuler_two :
    localEulerFactorApprox sumOfDivisorsFunction 2 = 11 := by
  rfl

theorem sumOfDivisors_localEuler_three :
    localEulerFactorApprox sumOfDivisorsFunction 3 = 18 := by
  rfl

theorem sumOfDivisors_twoThreeEulerProduct :
    twoThreeEulerProductApprox sumOfDivisorsFunction = 198 := by
  rfl

theorem squareDivisorSum_localEuler_two :
    localEulerFactorApprox squareDivisorSumFunction 2 = 27 := by
  rfl

theorem squareDivisorSum_localEuler_three :
    localEulerFactorApprox squareDivisorSumFunction 3 = 102 := by
  rfl

theorem squareDivisorSum_twoThreeEulerProduct :
    twoThreeEulerProductApprox squareDivisorSumFunction = 2754 := by
  rfl

theorem divisorCount_prime_power_two_squared :
    divisorCountFunction 4 = 3 := by
  rfl

theorem divisorCount_prime_power_three_squared :
    divisorCountFunction 9 = 3 := by
  rfl

theorem sumOfDivisors_prime_power_two_squared :
    sumOfDivisorsFunction 4 = 7 := by
  rfl

theorem sumOfDivisors_prime_power_three_squared :
    sumOfDivisorsFunction 9 = 13 := by
  rfl

end NumberTheory
end FormalLanglandsLab
