import FormalLanglandsLab.LFunctions.PrimeEulerSystem
import FormalLanglandsLab.EllipticCurves.EllipticCurveLSeries
import FormalLanglandsLab.ModularForms.ModularFormLSeries
import FormalLanglandsLab.Galois.GaloisLSeries

namespace FormalLanglandsLab
namespace Bridge

open FormalLanglandsLab.LFunctions
open FormalLanglandsLab.EllipticCurves
open FormalLanglandsLab.ModularForms
open FormalLanglandsLab.Galois

def ellipticPrimeEulerSystem
    (E : WeierstrassCurve) : PrimeEulerSystem :=
  primeEulerSystemFromSeries (ellipticCurveLSeries E)

def modularPrimeEulerSystem
    (f : ModularFormPrototype) : PrimeEulerSystem :=
  primeEulerSystemFromSeries (modularFormLSeries f)

def galoisPrimeEulerSystem
    (rho : RepresentationPrototype) : PrimeEulerSystem :=
  primeEulerSystemFromSeries (galoisLSeries rho)

theorem modularEllipticAgreement_implies_sameEulerPolynomials
    (E : WeierstrassCurve)
    (f : ModularFormPrototype)
    (h : coeffAgreement (ellipticCurveLSeries E) (modularFormLSeries f)) :
    sameEulerPolynomials
      (ellipticPrimeEulerSystem E)
      (modularPrimeEulerSystem f) := by
  intro p
  exact h p.value

theorem galoisModularAgreement_implies_sameEulerPolynomials
    (rho : RepresentationPrototype)
    (f : ModularFormPrototype)
    (h : coeffAgreement (galoisLSeries rho) (modularFormLSeries f)) :
    sameEulerPolynomials
      (galoisPrimeEulerSystem rho)
      (modularPrimeEulerSystem f) := by
  intro p
  exact h p.value

theorem toyCurve_primeEuler_two_linear :
    ((ellipticPrimeEulerSystem toyCurve).polynomialAt FormalLanglandsLab.Core.twoPrimeIndex).linearCoefficient =
      (ellipticCurveLSeries toyCurve).coeff 2 := by
  rfl

end Bridge
end FormalLanglandsLab
