import FormalLanglandsLab.NumberTheory.VerifiedDivisorSums

namespace FormalLanglandsLab
namespace NumberTheory

open FormalLanglandsLab.Core

def divisorCountFunction : ArithmeticFunction Nat :=
  verifiedDirichletConvolution constantOneFunction constantOneFunction

def sumOfDivisorsFunction : ArithmeticFunction Nat :=
  verifiedDirichletConvolution identityArithmeticFunction constantOneFunction

def sumOfComplementaryDivisorsFunction : ArithmeticFunction Nat :=
  verifiedDirichletConvolution constantOneFunction identityArithmeticFunction

def squareDivisorSumFunction : ArithmeticFunction Nat :=
  verifiedDirichletConvolution squareArithmeticFunction constantOneFunction

def arithmeticFunctionValue
    (f : ArithmeticFunction Nat)
    (n : Nat) : Nat :=
  f n

theorem divisorCount_one :
    divisorCountFunction 1 = 1 := by
  rfl

theorem divisorCount_two :
    divisorCountFunction 2 = 2 := by
  rfl

theorem divisorCount_three :
    divisorCountFunction 3 = 2 := by
  rfl

theorem divisorCount_four :
    divisorCountFunction 4 = 3 := by
  rfl

theorem sumOfDivisors_one :
    sumOfDivisorsFunction 1 = 1 := by
  rfl

theorem sumOfDivisors_two :
    sumOfDivisorsFunction 2 = 3 := by
  rfl

theorem sumOfDivisors_three :
    sumOfDivisorsFunction 3 = 4 := by
  rfl

theorem sumOfDivisors_four :
    sumOfDivisorsFunction 4 = 7 := by
  rfl

theorem complementarySum_two :
    sumOfComplementaryDivisorsFunction 2 = 3 := by
  rfl

theorem complementarySum_four :
    sumOfComplementaryDivisorsFunction 4 = 7 := by
  rfl

theorem squareDivisorSum_one :
    squareDivisorSumFunction 1 = 1 := by
  rfl

theorem squareDivisorSum_two :
    squareDivisorSumFunction 2 = 5 := by
  rfl

theorem squareDivisorSum_three :
    squareDivisorSumFunction 3 = 10 := by
  rfl

theorem squareDivisorSum_four :
    squareDivisorSumFunction 4 = 21 := by
  rfl

theorem divisorCount_is_one_convolution_one_at_four :
    divisorCountFunction 4 =
      verifiedDirichletConvolution constantOneFunction constantOneFunction 4 := by
  rfl

theorem sumOfDivisors_is_identity_convolution_one_at_four :
    sumOfDivisorsFunction 4 =
      verifiedDirichletConvolution identityArithmeticFunction constantOneFunction 4 := by
  rfl

end NumberTheory
end FormalLanglandsLab
