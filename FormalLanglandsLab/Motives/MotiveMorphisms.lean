import FormalLanglandsLab.Motives.Motives
import FormalLanglandsLab.Motives.MotiveLSeries

namespace FormalLanglandsLab
namespace Motives

structure MotiveMorphism where
  source : MotivePrototype
  target : MotivePrototype
  preservesCoefficients : ∀ n : Nat,
    source.coefficient n = target.coefficient n

def identityMotiveMorphism
    (M : MotivePrototype) : MotiveMorphism where
  source := M
  target := M
  preservesCoefficients := by
    intro n
    rfl

def motivesAreEquivalent
    (M N : MotivePrototype) : Prop :=
  ∃ f : MotiveMorphism,
    f.source = M ∧ f.target = N

theorem identityMotiveMorphism_preserves
    (M : MotivePrototype)
    (n : Nat) :
    (identityMotiveMorphism M).source.coefficient n =
      (identityMotiveMorphism M).target.coefficient n := by
  rfl

theorem motiveMorphism_implies_LSeries_agreement
    (f : MotiveMorphism) :
    FormalLanglandsLab.LFunctions.coeffAgreement
      (motiveLSeries f.source)
      (motiveLSeries f.target) := by
  intro n
  exact f.preservesCoefficients n

end Motives
end FormalLanglandsLab
