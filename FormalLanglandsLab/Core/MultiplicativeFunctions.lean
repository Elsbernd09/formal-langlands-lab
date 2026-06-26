import FormalLanglandsLab.Core.ArithmeticFunctions

namespace FormalLanglandsLab
namespace Core

def IsMultiplicative (f : ArithmeticFunction Nat) : Prop :=
  f 1 = 1 ∧ ∀ a b : Nat, f (a * b) = f a * f b

def identityFunction : ArithmeticFunction Nat :=
  fun n => n

def squareFunction : ArithmeticFunction Nat :=
  fun n => n * n

def constantOneArithmeticFunction : ArithmeticFunction Nat :=
  fun _ => 1

theorem constantOne_is_multiplicative :
    IsMultiplicative constantOneArithmeticFunction := by
  constructor
  · rfl
  · intro a b
    rfl

theorem identityFunction_one :
    identityFunction 1 = 1 := by
  rfl

theorem squareFunction_two :
    squareFunction 2 = 4 := by
  rfl

end Core
end FormalLanglandsLab
