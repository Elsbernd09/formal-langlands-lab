import FormalLanglandsLab.Cohomology.CohomologyGroups
import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace Cohomology

open FormalLanglandsLab.LFunctions

def cohomologyLSeries
    (H : CohomologyGroupPrototype) : FormalDirichletSeries where
  coeff := fun n => H.invariant n

theorem toyCohomologyLSeries_coeff_two :
    (cohomologyLSeries toyCohomologyGroup).coeff 2 = 3 := by
  rfl

def cohomologyCoefficientAgreement
    (H K : CohomologyGroupPrototype) : Prop :=
  coeffAgreement (cohomologyLSeries H) (cohomologyLSeries K)

theorem cohomologyCoefficientAgreement_refl
    (H : CohomologyGroupPrototype) :
    cohomologyCoefficientAgreement H H := by
  intro n
  rfl

end Cohomology
end FormalLanglandsLab
