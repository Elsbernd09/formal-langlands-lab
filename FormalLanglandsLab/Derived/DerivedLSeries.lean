import FormalLanglandsLab.Derived.StackObjects
import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace Derived

open FormalLanglandsLab.LFunctions

def derivedLSeries
    (D : DerivedObject) : FormalDirichletSeries where
  coeff := fun n => D.invariant n

def stackLSeries
    (S : StackObject) : FormalDirichletSeries where
  coeff := fun n => stackInvariant S n

theorem toyDerivedLSeries_coeff_two :
    (derivedLSeries toyDerivedObject).coeff 2 = 3 := by
  rfl

theorem toyStackLSeries_coeff_two :
    (stackLSeries toyStackObject).coeff 2 = 4 := by
  rfl

theorem constantStack_LSeries_matches_derivedLSeries
    (D : DerivedObject) :
    coeffAgreement
      (stackLSeries (constantStackFromDerived D))
      (derivedLSeries D) := by
  intro n
  rfl

end Derived
end FormalLanglandsLab
