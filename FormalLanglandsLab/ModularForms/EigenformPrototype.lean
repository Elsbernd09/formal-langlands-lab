import FormalLanglandsLab.ModularForms.HeckeOperators

namespace FormalLanglandsLab
namespace ModularForms

def scalarMultiplyModularForm
    (c : Nat)
    (f : ModularFormPrototype) : ModularFormPrototype where
  weight := f.weight
  level := f.level
  qExpansion := {
    coeff := fun n => c * f.qExpansion.coeff n
  }

def sameModularCoefficients
    (f g : ModularFormPrototype) : Prop :=
  ∀ n : Nat, modularCoefficient f n = modularCoefficient g n

def IsEigenformFor
    (T : HeckeOperator)
    (f : ModularFormPrototype)
    (lambda : Nat) : Prop :=
  sameModularCoefficients
    (applyHeckeOperator T f)
    (scalarMultiplyModularForm lambda f)

theorem toyModularForm_is_T_two_eigenform :
    IsEigenformFor T_two toyModularForm 2 := by
  intro n
  rfl

theorem toyModularForm_is_T_three_eigenform :
    IsEigenformFor T_three toyModularForm 3 := by
  intro n
  rfl

def eigenvalueForToyOperator
    (T : HeckeOperator) : Nat :=
  T.index

theorem eigenvalue_T_two :
    eigenvalueForToyOperator T_two = 2 := by
  rfl

theorem eigenvalue_T_three :
    eigenvalueForToyOperator T_three = 3 := by
  rfl

end ModularForms
end FormalLanglandsLab
