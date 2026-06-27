import FormalLanglandsLab.Cohomology.CohomologyLSeries
import FormalLanglandsLab.EllipticCurves.EllipticCurveLSeries

namespace FormalLanglandsLab
namespace Cohomology

open FormalLanglandsLab.EllipticCurves
open FormalLanglandsLab.LFunctions

def ellipticCurveCohomology
    (E : WeierstrassCurve) : CohomologyGroupPrototype where
  degree := 1
  rank := 2
  invariant := fun n => (ellipticCurveLSeries E).coeff n

theorem ellipticCurveCohomology_matches_LSeries
    (E : WeierstrassCurve) :
    coeffAgreement
      (cohomologyLSeries (ellipticCurveCohomology E))
      (ellipticCurveLSeries E) := by
  intro n
  rfl

theorem toyCurveCohomology_coeff_two :
    (cohomologyLSeries (ellipticCurveCohomology toyCurve)).coeff 2 = 8 := by
  rfl

end Cohomology
end FormalLanglandsLab
