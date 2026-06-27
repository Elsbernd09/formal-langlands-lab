import FormalLanglandsLab.Motives.RealizationFunctors
import FormalLanglandsLab.Motives.MotiveLSeries
import FormalLanglandsLab.Cohomology.CohomologyLSeries
import FormalLanglandsLab.Galois.GaloisLSeries
import FormalLanglandsLab.ModularForms.ModularFormLSeries
import FormalLanglandsLab.Spectral.SpectralLSeries

namespace FormalLanglandsLab
namespace Motives

open FormalLanglandsLab.LFunctions
open FormalLanglandsLab.Cohomology
open FormalLanglandsLab.Galois
open FormalLanglandsLab.ModularForms
open FormalLanglandsLab.Spectral

structure NaturalTransformationPrototype where
  sourceSeries : FormalDirichletSeries
  targetSeries : FormalDirichletSeries
  preservesCoefficients : ∀ n : Nat,
    sourceSeries.coeff n = targetSeries.coeff n

def identityNaturalTransformation
    (L : FormalDirichletSeries) : NaturalTransformationPrototype where
  sourceSeries := L
  targetSeries := L
  preservesCoefficients := by
    intro n
    rfl

def cohomologyToModularNaturalTransformation
    (M : MotivePrototype) : NaturalTransformationPrototype where
  sourceSeries := cohomologyLSeries (cohomologyRealizationFunctor M)
  targetSeries := modularFormLSeries (modularRealizationFunctor M)
  preservesCoefficients := by
    intro n
    rfl

def galoisToSpectralNaturalTransformation
    (M : MotivePrototype) : NaturalTransformationPrototype where
  sourceSeries := galoisLSeries (galoisRealizationFunctor M)
  targetSeries := spectralLSeries (spectralRealizationFunctor M)
  preservesCoefficients := by
    intro n
    rfl

theorem naturalTransformation_implies_coeffAgreement
    (eta : NaturalTransformationPrototype) :
    coeffAgreement eta.sourceSeries eta.targetSeries := by
  intro n
  exact eta.preservesCoefficients n

theorem cohomologyToModular_preserves_toyMotive_coeff_two :
    (cohomologyToModularNaturalTransformation toyMotive).sourceSeries.coeff 2 =
      (cohomologyToModularNaturalTransformation toyMotive).targetSeries.coeff 2 := by
  rfl

theorem galoisToSpectral_preserves_toyMotive_coeff_two :
    (galoisToSpectralNaturalTransformation toyMotive).sourceSeries.coeff 2 =
      (galoisToSpectralNaturalTransformation toyMotive).targetSeries.coeff 2 := by
  rfl

end Motives
end FormalLanglandsLab
