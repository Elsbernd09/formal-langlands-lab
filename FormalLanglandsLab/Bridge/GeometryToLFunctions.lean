import FormalLanglandsLab.Bridge.LanglandsPrototype
import FormalLanglandsLab.EllipticCurves.EllipticCurveLSeries

namespace FormalLanglandsLab
namespace Bridge

open FormalLanglandsLab.EllipticCurves
open FormalLanglandsLab.LFunctions

def ellipticCurveAsArithmeticObject
    (E : WeierstrassCurve) : ArithmeticObject where
  arithmeticData := fun n => (ellipticCurveLSeries E).coeff n

theorem ellipticCurve_object_matches_LSeries
    (E : WeierstrassCurve) :
    coeffAgreement
      (arithmeticLFunction (ellipticCurveAsArithmeticObject E))
      (ellipticCurveLSeries E) := by
  intro n
  rfl

end Bridge
end FormalLanglandsLab
