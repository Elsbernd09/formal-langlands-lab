import FormalLanglandsLab.Core.ArithmeticFunctions

namespace FormalLanglandsLab
namespace LFunctions

open FormalLanglandsLab.Core

structure FormalDirichletSeries where
  coeff : Nat → Nat

def fromArithmeticFunction
    (f : ArithmeticFunction Nat) : FormalDirichletSeries where
  coeff := f

def zetaPrototype : FormalDirichletSeries where
  coeff := fun _ => 1

def coeffAgreement
    (L₁ L₂ : FormalDirichletSeries) : Prop :=
  ∀ n : Nat, L₁.coeff n = L₂.coeff n

theorem coeffAgreement_refl
    (L : FormalDirichletSeries) : coeffAgreement L L := by
  intro n
  rfl

theorem coeffAgreement_symm
    {L₁ L₂ : FormalDirichletSeries}
    (h : coeffAgreement L₁ L₂) :
    coeffAgreement L₂ L₁ := by
  intro n
  exact Eq.symm (h n)

theorem coeffAgreement_trans
    {L₁ L₂ L₃ : FormalDirichletSeries}
    (h₁ : coeffAgreement L₁ L₂)
    (h₂ : coeffAgreement L₂ L₃) :
    coeffAgreement L₁ L₃ := by
  intro n
  exact Eq.trans (h₁ n) (h₂ n)

end LFunctions
end FormalLanglandsLab
