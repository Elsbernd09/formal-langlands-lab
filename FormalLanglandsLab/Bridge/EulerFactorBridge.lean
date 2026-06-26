import FormalLanglandsLab.LFunctions.LocalGlobalCompatibility
import FormalLanglandsLab.EllipticCurves.EllipticCurveLSeries
import FormalLanglandsLab.ModularForms.ModularFormLSeries
import FormalLanglandsLab.Galois.GaloisLSeries

namespace FormalLanglandsLab
namespace Bridge

open FormalLanglandsLab.LFunctions
open FormalLanglandsLab.EllipticCurves
open FormalLanglandsLab.ModularForms
open FormalLanglandsLab.Galois

def ellipticLocalFactors
    (E : WeierstrassCurve) : LocalFactorSystem :=
  localFactorSystemFromSeries (ellipticCurveLSeries E)

def modularLocalFactors
    (f : ModularFormPrototype) : LocalFactorSystem :=
  localFactorSystemFromSeries (modularFormLSeries f)

def galoisLocalFactors
    (rho : RepresentationPrototype) : LocalFactorSystem :=
  localFactorSystemFromSeries (galoisLSeries rho)

theorem ellipticLocalFactors_compatible
    (E : WeierstrassCurve) :
    LocalGlobalCompatible
      (ellipticCurveLSeries E)
      (ellipticLocalFactors E) := by
  intro n
  rfl

theorem modularLocalFactors_compatible
    (f : ModularFormPrototype) :
    LocalGlobalCompatible
      (modularFormLSeries f)
      (modularLocalFactors f) := by
  intro n
  rfl

theorem galoisLocalFactors_compatible
    (rho : RepresentationPrototype) :
    LocalGlobalCompatible
      (galoisLSeries rho)
      (galoisLocalFactors rho) := by
  intro n
  rfl

theorem modularEllipticAgreement_implies_sameLocalFactors
    (E : WeierstrassCurve)
    (f : ModularFormPrototype)
    (h : coeffAgreement (ellipticCurveLSeries E) (modularFormLSeries f)) :
    sameLocalFactors
      (ellipticLocalFactors E)
      (modularLocalFactors f) := by
  intro n
  exact h n

theorem galoisModularAgreement_implies_sameLocalFactors
    (rho : RepresentationPrototype)
    (f : ModularFormPrototype)
    (h : coeffAgreement (galoisLSeries rho) (modularFormLSeries f)) :
    sameLocalFactors
      (galoisLocalFactors rho)
      (modularLocalFactors f) := by
  intro n
  exact h n

end Bridge
end FormalLanglandsLab
