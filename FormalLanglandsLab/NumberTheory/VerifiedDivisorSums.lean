import FormalLanglandsLab.Core.ArithmeticFunctions

namespace FormalLanglandsLab
namespace NumberTheory

open FormalLanglandsLab.Core

def dividesBool (d n : Nat) : Bool :=
  if d = 0 then false else n % d = 0

def divisorContribution
    (f g : ArithmeticFunction Nat)
    (n d : Nat) : Nat :=
  if dividesBool d n then
    f d * g (n / d)
  else
    0

def divisorSumUpTo
    (f g : ArithmeticFunction Nat)
    (n : Nat) : Nat → Nat
  | 0 => 0
  | d + 1 =>
      divisorSumUpTo f g n d +
        divisorContribution f g n (d + 1)

def verifiedDirichletConvolution
    (f g : ArithmeticFunction Nat) : ArithmeticFunction Nat :=
  fun n => divisorSumUpTo f g n n

def constantOneFunction : ArithmeticFunction Nat :=
  fun _ => 1

def identityArithmeticFunction : ArithmeticFunction Nat :=
  fun n => n

def squareArithmeticFunction : ArithmeticFunction Nat :=
  fun n => n * n

theorem dividesBool_zero_left
    (n : Nat) :
    dividesBool 0 n = false := by
  rfl

theorem dividesBool_one
    (n : Nat) :
    dividesBool 1 n = true := by
  cases n <;> rfl

theorem divisorContribution_one_one_at_one :
    divisorContribution constantOneFunction constantOneFunction 1 1 = 1 := by
  rfl

theorem verifiedConvolution_one_one_at_one :
    verifiedDirichletConvolution constantOneFunction constantOneFunction 1 = 1 := by
  rfl

theorem verifiedConvolution_one_one_at_two :
    verifiedDirichletConvolution constantOneFunction constantOneFunction 2 = 2 := by
  rfl

theorem verifiedConvolution_one_one_at_three :
    verifiedDirichletConvolution constantOneFunction constantOneFunction 3 = 2 := by
  rfl

theorem verifiedConvolution_one_one_at_four :
    verifiedDirichletConvolution constantOneFunction constantOneFunction 4 = 3 := by
  rfl

theorem verifiedConvolution_one_identity_at_two :
    verifiedDirichletConvolution constantOneFunction identityArithmeticFunction 2 = 3 := by
  rfl

theorem verifiedConvolution_one_identity_at_three :
    verifiedDirichletConvolution constantOneFunction identityArithmeticFunction 3 = 4 := by
  rfl

theorem verifiedConvolution_one_identity_at_four :
    verifiedDirichletConvolution constantOneFunction identityArithmeticFunction 4 = 7 := by
  rfl

theorem verifiedConvolution_identity_one_at_four :
    verifiedDirichletConvolution identityArithmeticFunction constantOneFunction 4 = 7 := by
  rfl

end NumberTheory
end FormalLanglandsLab
