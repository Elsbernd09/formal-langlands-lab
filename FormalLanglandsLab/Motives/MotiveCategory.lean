import FormalLanglandsLab.Motives.MotiveMorphisms

namespace FormalLanglandsLab
namespace Motives

def composeMotiveMorphisms
    (f g : MotiveMorphism)
    (h : f.target = g.source) : MotiveMorphism where
  source := f.source
  target := g.target
  preservesCoefficients := by
    intro n
    have hf : f.source.coefficient n = f.target.coefficient n :=
      f.preservesCoefficients n
    have hg : g.source.coefficient n = g.target.coefficient n :=
      g.preservesCoefficients n
    rw [h] at hf
    exact Eq.trans hf hg

theorem identity_left_preserves_coefficients
    (f : MotiveMorphism)
    (n : Nat) :
    f.source.coefficient n = f.target.coefficient n := by
  exact f.preservesCoefficients n

theorem identity_right_preserves_coefficients
    (f : MotiveMorphism)
    (n : Nat) :
    f.source.coefficient n = f.target.coefficient n := by
  exact f.preservesCoefficients n

def motiveCategoryObject :=
  MotivePrototype

def motiveCategoryMorphism
    (M N : MotivePrototype) : Type :=
  { f : MotiveMorphism // f.source = M ∧ f.target = N }

def identityCategoricalMorphism
    (M : MotivePrototype) : motiveCategoryMorphism M M :=
  ⟨identityMotiveMorphism M, by
    constructor
    · rfl
    · rfl⟩

theorem identityCategoricalMorphism_preserves
    (M : MotivePrototype)
    (n : Nat) :
    (identityCategoricalMorphism M).val.source.coefficient n =
      (identityCategoricalMorphism M).val.target.coefficient n := by
  rfl

end Motives
end FormalLanglandsLab
