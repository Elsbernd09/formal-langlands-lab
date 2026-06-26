import FormalLanglandsLab.EllipticCurves.PointCounting
import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace EllipticCurves

open FormalLanglandsLab.LFunctions

def ellipticCoefficient
    (E : WeierstrassCurve)
    (n : Nat) : Nat :=
  toyTraceCoefficient E n

def ellipticCurveLSeries
    (E : WeierstrassCurve) : FormalDirichletSeries where
  coeff := ellipticCoefficient E

theorem toyCurveLSeries_coeff_two :
    (ellipticCurveLSeries toyCurve).coeff 2 = 8 := by
  rfl

end EllipticCurves
end FormalLanglandsLab
