namespace FormalLanglandsLab
namespace Motives

structure MotivePrototype where
  name : String
  weight : Nat
  rank : Nat
  coefficient : Nat → Nat

def toyMotive : MotivePrototype where
  name := "Toy motive"
  weight := 1
  rank := 2
  coefficient := fun n => n + 1

def motiveCoefficient
    (M : MotivePrototype)
    (n : Nat) : Nat :=
  M.coefficient n

def sameMotiveCoefficients
    (M N : MotivePrototype) : Prop :=
  ∀ n : Nat, M.coefficient n = N.coefficient n

theorem toyMotive_weight :
    toyMotive.weight = 1 := by
  rfl

theorem toyMotive_rank :
    toyMotive.rank = 2 := by
  rfl

theorem toyMotive_coeff_two :
    motiveCoefficient toyMotive 2 = 3 := by
  rfl

theorem sameMotiveCoefficients_refl
    (M : MotivePrototype) :
    sameMotiveCoefficients M M := by
  intro n
  rfl

end Motives
end FormalLanglandsLab
