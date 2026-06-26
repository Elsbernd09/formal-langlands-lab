import FormalLanglandsLab.Spectral.SpectralLSeries
import FormalLanglandsLab.EllipticCurves.EllipticCurveLSeries
import FormalLanglandsLab.ModularForms.ModularFormLSeries
import FormalLanglandsLab.Galois.GaloisLSeries

namespace FormalLanglandsLab
namespace Bridge

open FormalLanglandsLab.Spectral
open FormalLanglandsLab.EllipticCurves
open FormalLanglandsLab.ModularForms
open FormalLanglandsLab.Galois
open FormalLanglandsLab.LFunctions

def spectralEllipticAgreement
    (S : SpectralSequence)
    (E : WeierstrassCurve) : Prop :=
  coeffAgreement (spectralLSeries S) (ellipticCurveLSeries E)

def spectralModularAgreement
    (S : SpectralSequence)
    (f : ModularFormPrototype) : Prop :=
  coeffAgreement (spectralLSeries S) (modularFormLSeries f)

def spectralGaloisAgreement
    (S : SpectralSequence)
    (rho : RepresentationPrototype) : Prop :=
  coeffAgreement (spectralLSeries S) (galoisLSeries rho)

def spectralSequenceFromLSeries
    (L : FormalDirichletSeries) : SpectralSequence where
  eigenvalue := fun n => L.coeff n

theorem spectralSequenceFromLSeries_matches
    (L : FormalDirichletSeries) :
    coeffAgreement
      (spectralLSeries (spectralSequenceFromLSeries L))
      L := by
  intro n
  rfl

def spectralSequenceFromEllipticCurve
    (E : WeierstrassCurve) : SpectralSequence :=
  spectralSequenceFromLSeries (ellipticCurveLSeries E)

theorem toySpectralEllipticAgreement :
    spectralEllipticAgreement
      (spectralSequenceFromEllipticCurve toyCurve)
      toyCurve := by
  intro n
  rfl

end Bridge
end FormalLanglandsLab
