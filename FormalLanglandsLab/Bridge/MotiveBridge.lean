import FormalLanglandsLab.Motives.MotiveRealizations
import FormalLanglandsLab.Motives.MotiveLSeries
import FormalLanglandsLab.Cohomology.CohomologyLSeries
import FormalLanglandsLab.Galois.GaloisLSeries
import FormalLanglandsLab.Galois.MatrixLSeries
import FormalLanglandsLab.ModularForms.ModularFormLSeries
import FormalLanglandsLab.Spectral.SpectralLSeries

namespace FormalLanglandsLab
namespace Bridge

open FormalLanglandsLab.Motives
open FormalLanglandsLab.Cohomology
open FormalLanglandsLab.Galois
open FormalLanglandsLab.ModularForms
open FormalLanglandsLab.Spectral
open FormalLanglandsLab.LFunctions

theorem motive_matches_cohomologyRealization
    (M : MotivePrototype) :
    coeffAgreement
      (motiveLSeries M)
      (cohomologyLSeries (cohomologyRealization M)) := by
  intro n
  rfl

theorem motive_matches_galoisRealization
    (M : MotivePrototype) :
    coeffAgreement
      (motiveLSeries M)
      (galoisLSeries (galoisRealization M)) := by
  intro n
  rfl

theorem motive_matches_matrixRealization
    (M : MotivePrototype) :
    coeffAgreement
      (motiveLSeries M)
      (matrixTraceLSeries (matrixRealization M)) := by
  intro n
  rfl

theorem motive_matches_modularRealization
    (M : MotivePrototype) :
    coeffAgreement
      (motiveLSeries M)
      (modularFormLSeries (modularRealization M)) := by
  intro n
  rfl

theorem motive_matches_spectralRealization
    (M : MotivePrototype) :
    coeffAgreement
      (motiveLSeries M)
      (spectralLSeries (spectralRealization M)) := by
  intro n
  rfl

theorem toyMotive_modular_coeff_two :
    (modularFormLSeries (modularRealization toyMotive)).coeff 2 = 3 := by
  rfl

theorem toyMotive_spectral_coeff_two :
    (spectralLSeries (spectralRealization toyMotive)).coeff 2 = 3 := by
  rfl

end Bridge
end FormalLanglandsLab
