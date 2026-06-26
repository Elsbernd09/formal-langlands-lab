import FormalLanglandsLab.Core.MultiplicativeFunctions
import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace LFunctions

open FormalLanglandsLab.Core

structure EulerFactor where
  prime : Nat
  localCoefficient : Nat

structure EulerProductPrototype where
  factor : Nat → EulerFactor

def eulerFactorFromCoefficient
    (p : Nat) (a : Nat) : EulerFactor where
  prime := p
  localCoefficient := a

def formalEulerProductFromSeries
    (L : FormalDirichletSeries) : EulerProductPrototype where
  factor := fun p =>
    eulerFactorFromCoefficient p (L.coeff p)

def zetaEulerPrototype : EulerProductPrototype :=
  formalEulerProductFromSeries zetaPrototype

theorem zetaEulerPrototype_localCoeff_two :
    (zetaEulerPrototype.factor 2).localCoefficient = 1 := by
  rfl

end LFunctions
end FormalLanglandsLab
