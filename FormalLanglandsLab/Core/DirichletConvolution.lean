import FormalLanglandsLab.Core.ArithmeticFunctions

namespace FormalLanglandsLab
namespace Core

def divides (d n : Nat) : Prop :=
  ∃ k : Nat, n = d * k

def convolutionTerm
    (f g : ArithmeticFunction Nat)
    (d n : Nat) : Nat :=
  f d * g n

def naiveDirichletConvolution
    (f g : ArithmeticFunction Nat) : ArithmeticFunction Nat :=
  fun n => f n + g n

def convolutionIdentity : ArithmeticFunction Nat :=
  fun n => if n = 1 then 1 else 0

theorem convolutionIdentity_one :
    convolutionIdentity 1 = 1 := by
  rfl

theorem naiveConvolution_apply
    (f g : ArithmeticFunction Nat) (n : Nat) :
    naiveDirichletConvolution f g n = f n + g n := by
  rfl

end Core
end FormalLanglandsLab
