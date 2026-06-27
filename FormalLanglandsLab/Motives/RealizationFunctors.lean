import FormalLanglandsLab.Motives.MotiveCategory
import FormalLanglandsLab.Motives.MotiveRealizations
import FormalLanglandsLab.Cohomology.CohomologyLSeries
import FormalLanglandsLab.Galois.GaloisLSeries
import FormalLanglandsLab.ModularForms.ModularFormLSeries
import FormalLanglandsLab.Spectral.SpectralLSeries

namespace FormalLanglandsLab
namespace Motives

open FormalLanglandsLab.Cohomology
open FormalLanglandsLab.Galois
open FormalLanglandsLab.ModularForms
open FormalLanglandsLab.Spectral
open FormalLanglandsLab.LFunctions

def cohomologyRealizationFunctor
    (M : MotivePrototype) : CohomologyGroupPrototype :=
  cohomologyRealization M

def galoisRealizationFunctor
    (M : MotivePrototype) : RepresentationPrototype :=
  galoisRealization M

def modularRealizationFunctor
    (M : MotivePrototype) : ModularFormPrototype :=
  modularRealization M

def spectralRealizationFunctor
    (M : MotivePrototype) : SpectralSequence :=
  spectralRealization M

theorem cohomologyFunctor_preserves_LSeries
    (M : MotivePrototype) :
    coeffAgreement
      (motiveLSeries M)
      (cohomologyLSeries (cohomologyRealizationFunctor M)) := by
  intro n
  rfl

theorem galoisFunctor_preserves_LSeries
    (M : MotivePrototype) :
    coeffAgreement
      (motiveLSeries M)
      (galoisLSeries (galoisRealizationFunctor M)) := by
  intro n
  rfl

theorem modularFunctor_preserves_LSeries
    (M : MotivePrototype) :
    coeffAgreement
      (motiveLSeries M)
      (modularFormLSeries (modularRealizationFunctor M)) := by
  intro n
  rfl

theorem spectralFunctor_preserves_LSeries
    (M : MotivePrototype) :
    coeffAgreement
      (motiveLSeries M)
      (spectralLSeries (spectralRealizationFunctor M)) := by
  intro n
  rfl

end Motives
end FormalLanglandsLab
