import FormalLanglandsLab.Galois.GaloisLSeries
import FormalLanglandsLab.ModularForms.ModularFormLSeries
import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace Bridge

open FormalLanglandsLab.Galois
open FormalLanglandsLab.ModularForms
open FormalLanglandsLab.LFunctions

def galoisModularCoefficientAgreement
    (rho : RepresentationPrototype)
    (f : ModularFormPrototype) : Prop :=
  coeffAgreement
    (galoisLSeries rho)
    (modularFormLSeries f)

def modularFormMatchingGaloisRepresentation
    (rho : RepresentationPrototype) : ModularFormPrototype where
  weight := rho.dimension
  level := 1
  qExpansion := {
    coeff := fun n => rho.trace n
  }

theorem toyGaloisRepresentation_matches_constructedModularForm :
    galoisModularCoefficientAgreement
      toyTwoDimensionalRepresentation
      (modularFormMatchingGaloisRepresentation toyTwoDimensionalRepresentation) := by
  intro n
  rfl

theorem galoisModularAgreement_from_coefficients
    (rho : RepresentationPrototype)
    (f : ModularFormPrototype)
    (h : ∀ n : Nat,
      (galoisLSeries rho).coeff n =
      (modularFormLSeries f).coeff n) :
    galoisModularCoefficientAgreement rho f := by
  intro n
  exact h n

end Bridge
end FormalLanglandsLab
