import FormalLanglandsLab.Galois.MatrixLSeries
import FormalLanglandsLab.ModularForms.ModularFormLSeries
import FormalLanglandsLab.Spectral.SpectralLSeries

namespace FormalLanglandsLab
namespace Bridge

open FormalLanglandsLab.Galois
open FormalLanglandsLab.ModularForms
open FormalLanglandsLab.Spectral
open FormalLanglandsLab.LFunctions

def matrixModularAgreement
    (rho : MatrixRepresentationPrototype)
    (f : ModularFormPrototype) : Prop :=
  coeffAgreement
    (matrixTraceLSeries rho)
    (modularFormLSeries f)

def matrixSpectralAgreement
    (rho : MatrixRepresentationPrototype)
    (S : SpectralSequence) : Prop :=
  coeffAgreement
    (matrixTraceLSeries rho)
    (spectralLSeries S)

def modularFormFromMatrixRepresentation
    (rho : MatrixRepresentationPrototype) : ModularFormPrototype where
  weight := rho.dimension
  level := 1
  qExpansion := {
    coeff := fun n => matrixTrace rho n
  }

theorem toyMatrixRepresentation_matches_constructedModularForm :
    matrixModularAgreement
      toyMatrixRepresentation
      (modularFormFromMatrixRepresentation toyMatrixRepresentation) := by
  intro n
  rfl

def spectralSequenceFromMatrixRepresentation
    (rho : MatrixRepresentationPrototype) : SpectralSequence where
  eigenvalue := fun n => matrixTrace rho n

theorem toyMatrixRepresentation_matches_constructedSpectralSequence :
    matrixSpectralAgreement
      toyMatrixRepresentation
      (spectralSequenceFromMatrixRepresentation toyMatrixRepresentation) := by
  intro n
  rfl

end Bridge
end FormalLanglandsLab
