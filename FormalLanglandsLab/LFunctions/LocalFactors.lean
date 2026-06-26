import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace LFunctions

structure LocalFactor where
  index : Nat
  coefficient : Nat

structure LocalFactorSystem where
  localFactorAt : Nat → LocalFactor

def localFactorFromSeries
    (L : FormalDirichletSeries)
    (n : Nat) : LocalFactor where
  index := n
  coefficient := L.coeff n

def localFactorSystemFromSeries
    (L : FormalDirichletSeries) : LocalFactorSystem where
  localFactorAt := fun n => localFactorFromSeries L n

theorem localFactorFromSeries_coeff
    (L : FormalDirichletSeries)
    (n : Nat) :
    (localFactorFromSeries L n).coefficient = L.coeff n := by
  rfl

theorem localFactorFromSeries_index
    (L : FormalDirichletSeries)
    (n : Nat) :
    (localFactorFromSeries L n).index = n := by
  rfl

end LFunctions
end FormalLanglandsLab
