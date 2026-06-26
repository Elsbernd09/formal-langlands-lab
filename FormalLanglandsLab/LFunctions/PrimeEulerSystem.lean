import FormalLanglandsLab.LFunctions.EulerPolynomials

namespace FormalLanglandsLab
namespace LFunctions

open FormalLanglandsLab.Core

structure PrimeEulerSystem where
  polynomialAt : PrimeIndex → EulerPolynomial

def primeEulerSystemFromSeries
    (L : FormalDirichletSeries) : PrimeEulerSystem where
  polynomialAt := fun p => eulerPolynomialFromSeries L p

def sameEulerPolynomials
    (A B : PrimeEulerSystem) : Prop :=
  ∀ p : PrimeIndex,
    (A.polynomialAt p).linearCoefficient =
    (B.polynomialAt p).linearCoefficient

theorem sameEulerPolynomials_refl
    (A : PrimeEulerSystem) :
    sameEulerPolynomials A A := by
  intro p
  rfl

theorem coefficientAgreement_implies_sameEulerPolynomials
    (L₁ L₂ : FormalDirichletSeries)
    (h : coeffAgreement L₁ L₂) :
    sameEulerPolynomials
      (primeEulerSystemFromSeries L₁)
      (primeEulerSystemFromSeries L₂) := by
  intro p
  exact h p.value

theorem primeEulerSystem_two_linear
    (L : FormalDirichletSeries) :
    ((primeEulerSystemFromSeries L).polynomialAt twoPrimeIndex).linearCoefficient =
      L.coeff 2 := by
  rfl

end LFunctions
end FormalLanglandsLab
