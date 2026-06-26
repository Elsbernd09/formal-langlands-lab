import FormalLanglandsLab.LinearAlgebra.Matrices

namespace FormalLanglandsLab
namespace LinearAlgebra

structure CharacteristicPolynomial2x2 where
  traceTerm : Nat
  determinantTerm : Nat

def characteristicPolynomial2x2
    (M : Matrix2x2) : CharacteristicPolynomial2x2 where
  traceTerm := trace2x2 M
  determinantTerm := determinant2x2 M

def characteristicTrace
    (P : CharacteristicPolynomial2x2) : Nat :=
  P.traceTerm

def characteristicDeterminant
    (P : CharacteristicPolynomial2x2) : Nat :=
  P.determinantTerm

theorem characteristic_identity_trace :
    characteristicTrace (characteristicPolynomial2x2 identityMatrix2x2) = 2 := by
  rfl

theorem characteristic_identity_determinant :
    characteristicDeterminant (characteristicPolynomial2x2 identityMatrix2x2) = 1 := by
  rfl

theorem characteristic_scalar_two_trace :
    characteristicTrace (characteristicPolynomial2x2 (scalarMatrix2x2 2)) = 4 := by
  rfl

theorem characteristic_scalar_two_determinant :
    characteristicDeterminant (characteristicPolynomial2x2 (scalarMatrix2x2 2)) = 4 := by
  rfl

end LinearAlgebra
end FormalLanglandsLab
