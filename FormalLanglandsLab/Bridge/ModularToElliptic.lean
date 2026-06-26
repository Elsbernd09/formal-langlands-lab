import FormalLanglandsLab.EllipticCurves.EllipticCurveLSeries
import FormalLanglandsLab.ModularForms.ModularFormLSeries
import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace Bridge

open FormalLanglandsLab.EllipticCurves
open FormalLanglandsLab.ModularForms
open FormalLanglandsLab.LFunctions

def modularEllipticCoefficientAgreement
    (E : WeierstrassCurve)
    (f : ModularFormPrototype) : Prop :=
  coeffAgreement
    (ellipticCurveLSeries E)
    (modularFormLSeries f)

theorem modularEllipticAgreement_refl_for_matching_data
    (E : WeierstrassCurve)
    (f : ModularFormPrototype)
    (h : ∀ n : Nat,
      (ellipticCurveLSeries E).coeff n =
      (modularFormLSeries f).coeff n) :
    modularEllipticCoefficientAgreement E f := by
  intro n
  exact h n

def toyMatchingModularFormForCurve
    (E : WeierstrassCurve) : ModularFormPrototype where
  weight := 2
  level := 11
  qExpansion := {
    coeff := fun n => (ellipticCurveLSeries E).coeff n
  }

theorem toyCurve_matches_toyModularForm :
    modularEllipticCoefficientAgreement
      toyCurve
      (toyMatchingModularFormForCurve toyCurve) := by
  intro n
  rfl

end Bridge
end FormalLanglandsLab
