namespace FormalLanglandsLab
namespace Core

def ArithmeticFunction (R : Type) :=
  Nat → R

def zeroFunction : ArithmeticFunction Nat :=
  fun _ => 0

def oneFunction : ArithmeticFunction Nat :=
  fun _ => 1

def pointwiseAdd
    (f g : ArithmeticFunction Nat) : ArithmeticFunction Nat :=
  fun n => f n + g n

def pointwiseMul
    (f g : ArithmeticFunction Nat) : ArithmeticFunction Nat :=
  fun n => f n * g n

theorem pointwiseAdd_apply
    (f g : ArithmeticFunction Nat) (n : Nat) :
    pointwiseAdd f g n = f n + g n := by
  rfl

theorem pointwiseMul_apply
    (f g : ArithmeticFunction Nat) (n : Nat) :
    pointwiseMul f g n = f n * g n := by
  rfl

end Core
end FormalLanglandsLab
