namespace FormalLanglandsLab
namespace Spectral

structure SpectralSequence where
  eigenvalue : Nat → Nat

def identitySpectralSequence : SpectralSequence where
  eigenvalue := fun n => n

def shiftedSpectralSequence : SpectralSequence where
  eigenvalue := fun n => n + 1

def sameSpectralData
    (A B : SpectralSequence) : Prop :=
  ∀ n : Nat, A.eigenvalue n = B.eigenvalue n

theorem sameSpectralData_refl
    (A : SpectralSequence) :
    sameSpectralData A A := by
  intro n
  rfl

theorem identitySpectralSequence_value_three :
    identitySpectralSequence.eigenvalue 3 = 3 := by
  rfl

theorem shiftedSpectralSequence_value_three :
    shiftedSpectralSequence.eigenvalue 3 = 4 := by
  rfl

end Spectral
end FormalLanglandsLab
