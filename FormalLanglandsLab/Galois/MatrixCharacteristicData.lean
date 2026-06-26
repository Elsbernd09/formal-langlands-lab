import FormalLanglandsLab.Galois.MatrixRepresentations
import FormalLanglandsLab.LinearAlgebra.CharacteristicPolynomials

namespace FormalLanglandsLab
namespace Galois

open FormalLanglandsLab.LinearAlgebra

def characteristicPolynomialAt
    (rho : MatrixRepresentationPrototype)
    (n : Nat) : CharacteristicPolynomial2x2 :=
  characteristicPolynomial2x2 (rho.matrixAt n)

def characteristicTraceAt
    (rho : MatrixRepresentationPrototype)
    (n : Nat) : Nat :=
  characteristicTrace (characteristicPolynomialAt rho n)

def characteristicDeterminantAt
    (rho : MatrixRepresentationPrototype)
    (n : Nat) : Nat :=
  characteristicDeterminant (characteristicPolynomialAt rho n)

theorem characteristicTrace_matches_matrixTrace
    (rho : MatrixRepresentationPrototype)
    (n : Nat) :
    characteristicTraceAt rho n = matrixTrace rho n := by
  rfl

theorem characteristicDeterminant_matches_matrixDeterminant
    (rho : MatrixRepresentationPrototype)
    (n : Nat) :
    characteristicDeterminantAt rho n = matrixDeterminant rho n := by
  rfl

theorem toyCharacteristicTrace_two :
    characteristicTraceAt toyMatrixRepresentation 2 = 4 := by
  rfl

theorem toyCharacteristicDeterminant_two :
    characteristicDeterminantAt toyMatrixRepresentation 2 = 4 := by
  rfl

end Galois
end FormalLanglandsLab
