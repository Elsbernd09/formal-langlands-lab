import FormalLanglandsLab.Galois.MatrixCharacteristicData
import FormalLanglandsLab.LFunctions.DeterminantEulerFactors
import FormalLanglandsLab.LFunctions.PrimeEulerSystem

namespace FormalLanglandsLab
namespace Bridge

open FormalLanglandsLab.Core
open FormalLanglandsLab.Galois
open FormalLanglandsLab.LFunctions

def matrixDeterminantEulerFactorAt
    (rho : MatrixRepresentationPrototype)
    (p : PrimeIndex) : DeterminantEulerFactor :=
  determinantEulerFactorFromCharacteristic
    p
    (characteristicPolynomialAt rho p.value)

def matrixDeterminantEulerPolynomialAt
    (rho : MatrixRepresentationPrototype)
    (p : PrimeIndex) : EulerPolynomial :=
  determinantEulerFactorToPolynomial
    (matrixDeterminantEulerFactorAt rho p)

def matrixPrimeEulerSystem
    (rho : MatrixRepresentationPrototype) : PrimeEulerSystem where
  polynomialAt := fun p => matrixDeterminantEulerPolynomialAt rho p

theorem matrixEulerFactor_trace_two :
    (matrixDeterminantEulerFactorAt toyMatrixRepresentation twoPrimeIndex).traceCoefficient =
      matrixTrace toyMatrixRepresentation 2 := by
  rfl

theorem matrixEulerFactor_determinant_two :
    (matrixDeterminantEulerFactorAt toyMatrixRepresentation twoPrimeIndex).determinantCoefficient =
      matrixDeterminant toyMatrixRepresentation 2 := by
  rfl

theorem matrixPrimeEulerSystem_two_linear :
    ((matrixPrimeEulerSystem toyMatrixRepresentation).polynomialAt twoPrimeIndex).linearCoefficient =
      matrixTrace toyMatrixRepresentation 2 := by
  rfl

theorem matrixPrimeEulerSystem_two_quadratic :
    ((matrixPrimeEulerSystem toyMatrixRepresentation).polynomialAt twoPrimeIndex).quadraticCoefficient =
      matrixDeterminant toyMatrixRepresentation 2 := by
  rfl

end Bridge
end FormalLanglandsLab
