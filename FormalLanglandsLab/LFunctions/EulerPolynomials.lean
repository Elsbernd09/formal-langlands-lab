import FormalLanglandsLab.Core.PrimeData
import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace LFunctions

open FormalLanglandsLab.Core

structure EulerPolynomial where
  prime : PrimeIndex
  constantTerm : Nat
  linearCoefficient : Nat
  quadraticCoefficient : Nat

def toyEulerPolynomial
    (p : PrimeIndex)
    (a : Nat) : EulerPolynomial where
  prime := p
  constantTerm := 1
  linearCoefficient := a
  quadraticCoefficient := p.value

def eulerPolynomialFromSeries
    (L : FormalDirichletSeries)
    (p : PrimeIndex) : EulerPolynomial :=
  toyEulerPolynomial p (L.coeff p.value)

theorem toyEulerPolynomial_constant
    (p : PrimeIndex)
    (a : Nat) :
    (toyEulerPolynomial p a).constantTerm = 1 := by
  rfl

theorem toyEulerPolynomial_linear_two
    (a : Nat) :
    (toyEulerPolynomial twoPrimeIndex a).linearCoefficient = a := by
  rfl

theorem toyEulerPolynomial_quadratic_two
    (a : Nat) :
    (toyEulerPolynomial twoPrimeIndex a).quadraticCoefficient = 2 := by
  rfl

end LFunctions
end FormalLanglandsLab
