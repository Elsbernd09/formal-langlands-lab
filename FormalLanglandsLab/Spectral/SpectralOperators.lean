import FormalLanglandsLab.Spectral.SpectralData

namespace FormalLanglandsLab
namespace Spectral

structure SpectralOperator where
  name : String
  scale : Nat

def applySpectralOperator
    (T : SpectralOperator)
    (S : SpectralSequence) : SpectralSequence where
  eigenvalue := fun n => T.scale * S.eigenvalue n

def doubleOperator : SpectralOperator where
  name := "Double operator"
  scale := 2

def tripleOperator : SpectralOperator where
  name := "Triple operator"
  scale := 3

theorem doubleOperator_on_identity_three :
    (applySpectralOperator doubleOperator identitySpectralSequence).eigenvalue 3 = 6 := by
  rfl

theorem tripleOperator_on_identity_two :
    (applySpectralOperator tripleOperator identitySpectralSequence).eigenvalue 2 = 6 := by
  rfl

end Spectral
end FormalLanglandsLab
