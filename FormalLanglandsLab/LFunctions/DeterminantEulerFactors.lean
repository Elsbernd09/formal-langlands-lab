import FormalLanglandsLab.Core.PrimeData
import FormalLanglandsLab.LinearAlgebra.CharacteristicPolynomials
import FormalLanglandsLab.LFunctions.EulerPolynomials

namespace FormalLanglandsLab
namespace LFunctions

open FormalLanglandsLab.Core
open FormalLanglandsLab.LinearAlgebra

structure DeterminantEulerFactor where
  prime : PrimeIndex
  traceCoefficient : Nat
  determinantCoefficient : Nat

def determinantEulerFactorFromCharacteristic
    (p : PrimeIndex)
    (P : CharacteristicPolynomial2x2) : DeterminantEulerFactor where
  prime := p
  traceCoefficient := P.traceTerm
  determinantCoefficient := P.determinantTerm

def determinantEulerFactorToPolynomial
    (F : DeterminantEulerFactor) : EulerPolynomial where
  prime := F.prime
  constantTerm := 1
  linearCoefficient := F.traceCoefficient
  quadraticCoefficient := F.determinantCoefficient

theorem determinantEulerFactor_trace
    (p : PrimeIndex)
    (P : CharacteristicPolynomial2x2) :
    (determinantEulerFactorFromCharacteristic p P).traceCoefficient =
      P.traceTerm := by
  rfl

theorem determinantEulerFactor_determinant
    (p : PrimeIndex)
    (P : CharacteristicPolynomial2x2) :
    (determinantEulerFactorFromCharacteristic p P).determinantCoefficient =
      P.determinantTerm := by
  rfl

theorem determinantEulerFactor_polynomial_linear
    (F : DeterminantEulerFactor) :
    (determinantEulerFactorToPolynomial F).linearCoefficient =
      F.traceCoefficient := by
  rfl

theorem determinantEulerFactor_polynomial_quadratic
    (F : DeterminantEulerFactor) :
    (determinantEulerFactorToPolynomial F).quadraticCoefficient =
      F.determinantCoefficient := by
  rfl

end LFunctions
end FormalLanglandsLab
