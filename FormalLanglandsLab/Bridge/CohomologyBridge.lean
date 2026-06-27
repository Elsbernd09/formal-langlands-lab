import FormalLanglandsLab.Cohomology.EllipticCurveCohomology
import FormalLanglandsLab.Galois.CohomologicalRepresentations
import FormalLanglandsLab.Galois.GaloisLSeries
import FormalLanglandsLab.Galois.MatrixLSeries
import FormalLanglandsLab.ModularForms.ModularFormLSeries
import FormalLanglandsLab.Spectral.SpectralLSeries

namespace FormalLanglandsLab
namespace Bridge

open FormalLanglandsLab.Cohomology
open FormalLanglandsLab.Galois
open FormalLanglandsLab.EllipticCurves
open FormalLanglandsLab.ModularForms
open FormalLanglandsLab.Spectral
open FormalLanglandsLab.LFunctions

def cohomologyGaloisAgreement
    (H : CohomologyGroupPrototype) : Prop :=
  coeffAgreement
    (cohomologyLSeries H)
    (galoisLSeries (representationFromCohomology H))

def cohomologyMatrixAgreement
    (H : CohomologyGroupPrototype) : Prop :=
  coeffAgreement
    (cohomologyLSeries H)
    (matrixTraceLSeries (matrixRepresentationFromCohomology H))

theorem cohomology_matches_galoisRepresentation
    (H : CohomologyGroupPrototype) :
    cohomologyGaloisAgreement H := by
  intro n
  rfl

theorem cohomology_matches_matrixRepresentation
    (H : CohomologyGroupPrototype) :
    cohomologyMatrixAgreement H := by
  intro n
  rfl

def modularFormFromCohomology
    (H : CohomologyGroupPrototype) : ModularFormPrototype where
  weight := H.rank
  level := H.degree
  qExpansion := {
    coeff := fun n => H.invariant n
  }

def spectralSequenceFromCohomology
    (H : CohomologyGroupPrototype) : SpectralSequence where
  eigenvalue := fun n => H.invariant n

theorem cohomology_matches_constructedModularForm
    (H : CohomologyGroupPrototype) :
    coeffAgreement
      (cohomologyLSeries H)
      (modularFormLSeries (modularFormFromCohomology H)) := by
  intro n
  rfl

theorem cohomology_matches_constructedSpectralSequence
    (H : CohomologyGroupPrototype) :
    coeffAgreement
      (cohomologyLSeries H)
      (spectralLSeries (spectralSequenceFromCohomology H)) := by
  intro n
  rfl

theorem ellipticCurveCohomology_matches_ellipticLSeries
    (E : WeierstrassCurve) :
    coeffAgreement
      (cohomologyLSeries (ellipticCurveCohomology E))
      (ellipticCurveLSeries E) := by
  intro n
  rfl

end Bridge
end FormalLanglandsLab
