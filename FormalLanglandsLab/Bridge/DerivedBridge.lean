import FormalLanglandsLab.Derived.DerivedLSeries
import FormalLanglandsLab.Motives.MotiveLSeries
import FormalLanglandsLab.Motives.MotiveRealizations
import FormalLanglandsLab.Cohomology.CohomologyLSeries
import FormalLanglandsLab.ModularForms.ModularFormLSeries
import FormalLanglandsLab.Spectral.SpectralLSeries

namespace FormalLanglandsLab
namespace Bridge

open FormalLanglandsLab.Derived
open FormalLanglandsLab.Motives
open FormalLanglandsLab.Cohomology
open FormalLanglandsLab.ModularForms
open FormalLanglandsLab.Spectral
open FormalLanglandsLab.LFunctions

def derivedObjectFromMotive
    (M : MotivePrototype) : DerivedObject where
  name := M.name
  degreeShift := M.weight
  invariant := fun n => M.coefficient n

def stackObjectFromMotive
    (M : MotivePrototype) : StackObject :=
  constantStackFromDerived (derivedObjectFromMotive M)

theorem derivedObjectFromMotive_matches_motiveLSeries
    (M : MotivePrototype) :
    coeffAgreement
      (derivedLSeries (derivedObjectFromMotive M))
      (motiveLSeries M) := by
  intro n
  rfl

theorem stackObjectFromMotive_matches_motiveLSeries
    (M : MotivePrototype) :
    coeffAgreement
      (stackLSeries (stackObjectFromMotive M))
      (motiveLSeries M) := by
  intro n
  rfl

theorem derivedObjectFromMotive_matches_cohomologyRealization
    (M : MotivePrototype) :
    coeffAgreement
      (derivedLSeries (derivedObjectFromMotive M))
      (cohomologyLSeries (cohomologyRealization M)) := by
  intro n
  rfl

theorem derivedObjectFromMotive_matches_modularRealization
    (M : MotivePrototype) :
    coeffAgreement
      (derivedLSeries (derivedObjectFromMotive M))
      (modularFormLSeries (modularRealization M)) := by
  intro n
  rfl

theorem derivedObjectFromMotive_matches_spectralRealization
    (M : MotivePrototype) :
    coeffAgreement
      (derivedLSeries (derivedObjectFromMotive M))
      (spectralLSeries (spectralRealization M)) := by
  intro n
  rfl

end Bridge
end FormalLanglandsLab
