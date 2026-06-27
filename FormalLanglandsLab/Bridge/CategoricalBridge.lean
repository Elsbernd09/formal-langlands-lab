import FormalLanglandsLab.Motives.RealizationFunctors
import FormalLanglandsLab.Motives.MotiveCategory

namespace FormalLanglandsLab
namespace Bridge

open FormalLanglandsLab.Motives
open FormalLanglandsLab.Cohomology
open FormalLanglandsLab.Galois
open FormalLanglandsLab.ModularForms
open FormalLanglandsLab.Spectral
open FormalLanglandsLab.LFunctions

theorem categoricalIdentity_preserves_motiveLSeries
    (M : MotivePrototype) :
    coeffAgreement
      (motiveLSeries (identityCategoricalMorphism M).val.source)
      (motiveLSeries (identityCategoricalMorphism M).val.target) := by
  intro n
  rfl

theorem motiveMorphism_preserves_cohomologyFunctor
    (f : MotiveMorphism) :
    coeffAgreement
      (cohomologyLSeries (cohomologyRealizationFunctor f.source))
      (cohomologyLSeries (cohomologyRealizationFunctor f.target)) := by
  intro n
  exact f.preservesCoefficients n

theorem motiveMorphism_preserves_galoisFunctor
    (f : MotiveMorphism) :
    coeffAgreement
      (galoisLSeries (galoisRealizationFunctor f.source))
      (galoisLSeries (galoisRealizationFunctor f.target)) := by
  intro n
  exact f.preservesCoefficients n

theorem motiveMorphism_preserves_modularFunctor
    (f : MotiveMorphism) :
    coeffAgreement
      (modularFormLSeries (modularRealizationFunctor f.source))
      (modularFormLSeries (modularRealizationFunctor f.target)) := by
  intro n
  exact f.preservesCoefficients n

theorem motiveMorphism_preserves_spectralFunctor
    (f : MotiveMorphism) :
    coeffAgreement
      (spectralLSeries (spectralRealizationFunctor f.source))
      (spectralLSeries (spectralRealizationFunctor f.target)) := by
  intro n
  exact f.preservesCoefficients n

end Bridge
end FormalLanglandsLab
