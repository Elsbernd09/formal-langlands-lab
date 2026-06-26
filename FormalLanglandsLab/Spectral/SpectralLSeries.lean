import FormalLanglandsLab.Spectral.SpectralOperators
import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace Spectral

open FormalLanglandsLab.LFunctions

def spectralLSeries
    (S : SpectralSequence) : FormalDirichletSeries where
  coeff := fun n => S.eigenvalue n

theorem identitySpectralLSeries_coeff_four :
    (spectralLSeries identitySpectralSequence).coeff 4 = 4 := by
  rfl

theorem shiftedSpectralLSeries_coeff_four :
    (spectralLSeries shiftedSpectralSequence).coeff 4 = 5 := by
  rfl

def spectralAgreement
    (S T : SpectralSequence) : Prop :=
  coeffAgreement (spectralLSeries S) (spectralLSeries T)

theorem spectralAgreement_refl
    (S : SpectralSequence) :
    spectralAgreement S S := by
  intro n
  rfl

end Spectral
end FormalLanglandsLab
